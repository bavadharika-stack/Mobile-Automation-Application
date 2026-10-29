import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email import encoders
import os

# 📌 Step 3: Load emails from recipients.txt
def load_emails_from_txt(file_path)     :
    with open(file_path, 'r') as file:
        emails = [line.strip() for line in file if line.strip()]
    return emails

def send_robot_report():
    sender_email = "bavadharikaparthasarathy@gmail.com"
    password = "wlcockvmctxoyvqe"  # Gmail App Password

    # Load recipients from file
    receiver_emails = load_emails_from_txt("recipients.txt")

    # Attachments
    files_to_attach = [
        r"C:\Users\bavad\PycharmProjects\Andriod_Project\Results\report.html",
        r"C:\Users\bavad\PycharmProjects\Andriod_Project\Results\log.html"
    ]

    # Compose email
    message = MIMEMultipart()
    message["From"] = sender_email
    message["To"] = ", ".join(receiver_emails)
    message["Subject"] = "Robot Framework Test Report & Log"

    for file_path in files_to_attach:
        if os.path.exists(file_path):
            with open(file_path, "rb") as file:
                part = MIMEBase("application", "octet-stream")
                part.set_payload(file.read())
                encoders.encode_base64(part)
                part.add_header("Content-Disposition", f"attachment; filename={os.path.basename(file_path)}")
                message.attach(part)
        else:
            print(f"⚠️ File not found: {file_path}")

    # Send email
    try:
        with smtplib.SMTP_SSL("smtp.gmail.com", 465) as server:
            server.login(sender_email, password)
            server.sendmail(sender_email, receiver_emails, message.as_string())
            print("✅ Email sent successfully to all recipients!")
    except Exception as e:
        print(f"❌ Failed to send email: {e}")

if __name__ == "__main__":
    send_robot_report()
