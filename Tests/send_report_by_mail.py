import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email import encoders
import os

def load_emails_from_txt(file_path):
    with open(file_path, 'r') as f:
        return [line.strip() for line in f if line.strip()]

def send_robot_report():
    sender_email = "bavadharikaparthasarathy@gmail.com"
    password = "wlco ckvm ctxo yvqe"  # App password (no spaces)
    receiver_emails = load_emails_from_txt(r"C:\Users\bavad\PycharmProjects\Andriod_Project\Tests\recipients.txt")

    print(f"📧 Sending to: {', '.join(receiver_emails)}")

    message = MIMEMultipart()
    message["From"] = sender_email
    message["To"] = ", ".join(receiver_emails)
    message["Subject"] = "📄 Robot Framework Test Report + Excel Summary"

    files_to_attach = [
        r"Results\report.html",
        r"Results\log.html",
        r"Results\Test_Results.xlsx"
    ]

    for file_path in files_to_attach:
        if os.path.exists(file_path):
            with open(file_path, "rb") as file:
                part = MIMEBase("application", "octet-stream")
                part.set_payload(file.read())
                encoders.encode_base64(part)
                part.add_header(
                    "Content-Disposition",
                    f"attachment; filename={os.path.basename(file_path)}"
                )
                message.attach(part)
        else:
            print(f"⚠️ File not found: {file_path}")

    try:
        with smtplib.SMTP_SSL("smtp.gmail.com", 465) as server:
            server.login(sender_email, password)
            server.sendmail(sender_email, receiver_emails, message.as_string())
            print("✅ Email sent successfully!")
    except Exception as e:
        print(f"❌ Failed to send email: {e}")

if __name__ == "__main__":
    print("📬 Sending email report...")
    send_robot_report()
