<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style3
        {
            border-collapse: collapse;
            width: 76%;
            border: 1px solid #0099cc;
            background-color: #0099cc;
        height: 211px;
    }
    .style6
    {
        font-weight: bold;
        height: 21px;
    }
    .style5
    {
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3">
        <tr>
            <td align="center" bgcolor="White" colspan="2">
                <b>New User Registration</b></td>
                            </tr>
                            <tr bgcolor="White">
                                <td align="center" class="style6" colspan="2">
            Login Details</td>
        </tr>
        <tr bgcolor="White">
            <td align="left" class="style4">
            User Id</td>
                                <td align="left">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr bgcolor="White">
                                <td align="left" class="style4">
            Password</td>
            <td align="left">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr bgcolor="White">
            <td align="left" class="style4">
            Confirm Password</td>
            <td align="left">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr bgcolor="White">
            <td align="center" class="style5" colspan="2">
            Personal Details</td>
                            </tr>
                            <tr bgcolor="White">
                                <td align="left" class="style4">
                                    Mailid</td>
                                <td align="left">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr bgcolor="White">
                                <td align="left" class="style4">
            Age</td>
            <td align="left">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr bgcolor="White">
            <td align="left" class="style4">
            Contact No</td>
            <td align="left">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr bgcolor="White">
            <td align="left" class="style4">
            Addres</td>
            <td align="left">
                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr bgcolor="White">
            <td align="center" class="style4" colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                style="font-weight: 700" Text="Submit" Width="104px" Height="22px" />
            </td>
        </tr>
    </table>
</asp:Content>

