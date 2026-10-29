import subprocess
from generate_result_excel import generate_excel_from_output
from send_report_by_mail import send_robot_report

# Step 1: Run Robot Framework tests
print("🚀 Running Robot Framework tests...")
subprocess.run([
    "robot",
    "--outputdir", "Results",
    "Tests/Full_App_Flow.robot"
])

# Step 2: Generate or update Excel results
print("📊 Updating Excel results...")
generate_excel_from_output(
    output_file="Results/output.xml",
    excel_file="Results/Test_Results.xlsx"
)
# Step 3: Send test report via email
print("📬 Sending email report...")
send_robot_report()
