from robot.api import ExecutionResult
from openpyxl import Workbook, load_workbook
from datetime import datetime
import os


def generate_excel_from_output(output_file, excel_file):
    result = ExecutionResult(output_file)

    # Just accessing suite triggers parsing
    suite = result.suite

    # Load or create Excel
    if os.path.exists(excel_file):
        workbook = load_workbook(excel_file)
        sheet = workbook.active
    else:
        workbook = Workbook()
        sheet = workbook.active
        sheet.append(["Timestamp", "Test Case", "Status", "Error"])

    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    # Loop through tests
    for test in suite.tests:
        status = test.status
        message = test.message if status == "FAIL" else ""
        sheet.append([timestamp, test.name, status, message])

    workbook.save(excel_file)
    print(f"✅ Excel updated: {excel_file}")
