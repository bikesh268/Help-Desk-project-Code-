<%@ Page Language="C#" MasterPageFile="~/supervisor/super.master" AutoEventWireup="true" CodeFile="complaints.aspx.cs" Inherits="supervisor_complaints" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style3
    {
        border-collapse: collapse;
        width: 49%;
        height: 159px;
        border: 1px solid #0099cc;
        background-color: #0099cc;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" BackColor="White" 
        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Horizontal" Height="16px" onitemcommand="DataList1_ItemCommand" 
        RepeatDirection="Horizontal">
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <AlternatingItemStyle BackColor="#F7F7F7" />
        <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <ItemTemplate>
            <table class="style3">
                <tr>
                    <td bgcolor="#999999" colspan="2">
                        <b>View Customer Complaints</b></td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CommandArgument='<%#Eval("rid") %>' CommandName="Send" style="font-weight: 700">ForwardToTechnician</asp:LinkButton>
                    </td>
                    <td align="left" bgcolor="Gray">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        ReportNo</td>
                    <td align="left" bgcolor="Gray">
                        <asp:Label ID="Label13" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("rid")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        CustomerName</td>
                    <td align="left" bgcolor="Gray">
                        <asp:Label ID="Label14" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("login")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        Subcategory</td>
                    <td align="left" bgcolor="Gray">
                        <asp:Label ID="Label19" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("scname")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        Subject</td>
                    <td align="left" bgcolor="Gray">
                        <asp:Label ID="Label20" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("sub")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        Description</td>
                    <td align="left" bgcolor="Gray">
                        <asp:TextBox ID="TextBox3" runat="server" Enabled="False" ForeColor="#66FFCC" 
                            Text='<%#Eval("ddesc")%>' TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        Addres</td>
                    <td align="left" bgcolor="Gray">
                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" ForeColor="#66FFCC" 
                            Text='<%#Eval("addres")%>' TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        ContactNo</td>
                    <td align="left" bgcolor="Gray">
                        <asp:Label ID="Label17" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("cno")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="left" bgcolor="White">
                        Reportin Date</td>
                    <td align="left" bgcolor="Gray">
                        <asp:Label ID="Label18" runat="server" BackColor="#003366" ForeColor="#CCFFFF" 
                            Text='<%#Eval("rdate")%>' Width="120px"></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

