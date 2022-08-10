<%@ Page Language="C#" MasterPageFile="~/supervisor/super.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="supervisor_profile" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" Height="288px" Width="341px" 
        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
        CellPadding="2" ForeColor="Black">
        <FooterStyle BackColor="Tan" />
        <ItemTemplate>
            <table style="width: 366px; height: 329px">
                <tr>
                    <td align="center" colspan="2" 
                        style="font-weight: bolder; font-size: 16px; background-color: #008000">
                        Supervisor Details</td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; font-size: 16px; background-color: #008000; width: 153px;">
                        Supervisor _Id</td>
                    <td style="width: 76px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                            Text='<%# Eval("uid") %>' Width="98px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; font-size: 16px; background-color: #008000; width: 153px;">
                        Designation</td>
                    <td style="width: 76px">
                        <asp:Label ID="Label7" runat="server" style="font-weight: 700" Text='<%#Eval("dname") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; font-size: 16px; background-color: #008000; width: 153px;">
                        &nbsp;Supervisor &nbsp; Name</td>
                    <td style="width: 76px">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                            Text='<%# Eval("empname") %>' Width="98px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; font-size: 16px; background-color: #008000; width: 153px;">
                        Age</td>
                    <td style="width: 76px">
                        <asp:Label ID="Label8" runat="server"  style="font-weight: 700" Text='<%# Eval("age") %>'></asp:Label>
                    </td>
                </tr>
                <tr style="color: #000000">
                    <td style="font-weight: bolder; font-size: 16px; background-color: #008000; width: 153px;">
                        Phone No</td>
                    <td style="width: 76px">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                            Text='<%# Eval("cno") %>' Width="98px"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bolder; font-size: 16px; background-color: #008000; width: 153px;">
                        Adress</td>
                    <td style="width: 76px">
                        <asp:TextBox ID="TextBox1" runat="server" Enabled="False" ForeColor="#003366" 
                            TextMode="MultiLine" Text='<%#Eval("addres")%>'></asp:TextBox>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:FormView>
</asp:Content>

