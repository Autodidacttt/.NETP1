<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="default.aspx.cs"
    Inherits="_311Net_Practical5._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Leave Form</title>
</head>

<body>

    <form id="form1" runat="server">

        <div>

            <h2>
                Welcome
                <asp:Label ID="lblUsername"
                    runat="server"></asp:Label>
            </h2>

            <br />

            Student Name:
            <asp:TextBox ID="txtStudentName"
                runat="server"></asp:TextBox>

            <br /><br />

            Leave Date:

            <br />

            <asp:Calendar ID="calLeaveDate"
                runat="server">
            </asp:Calendar>

            <br />

            Leave Type:

            <asp:DropDownList ID="ddlLeaveType"
                runat="server">

                <asp:ListItem
                    Text="-- Select Leave Type --"
                    Value="">
                </asp:ListItem>

                <asp:ListItem
                    Text="Casual Leave"
                    Value="Casual Leave">
                </asp:ListItem>

                <asp:ListItem
                    Text="Medical Leave"
                    Value="Medical Leave">
                </asp:ListItem>

                <asp:ListItem
                    Text="Emergency Leave"
                    Value="Emergency Leave">
                </asp:ListItem>

            </asp:DropDownList>

            <br /><br />

            Reason:

            <br />

            <asp:TextBox ID="txtReason"
                runat="server"
                TextMode="MultiLine"
                Rows="3">
            </asp:TextBox>

            <br /><br />

            <asp:Button ID="btnSubmit"
                runat="server"
                Text="Submit"
                OnClick="btnSubmit_Click" />

            <br /><br />

            <asp:Label ID="lblMessage"
                runat="server">
            </asp:Label>

        </div>

    </form>

</body>
</html>