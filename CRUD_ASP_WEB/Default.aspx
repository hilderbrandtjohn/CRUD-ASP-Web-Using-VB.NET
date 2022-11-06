<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="CRUD_ASP_WEB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color:blueviolet; font-size:xx-large; color:white;" align="center">
        CRUD Operation in Asp.Net VB
    </div>
    <br />
    <div  style="padding:15px">
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtProductId" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    <asp:Button Text="Search" runat="server" ForeColor="White" BackColor="BlueViolet" ID="ButtonSearch" OnClick="ButtonSearch_Click"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Item Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtItemName" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Specification"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtSpecification" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Unit"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropUnit" Font-Size="Medium" Width="200px" runat="server">
                        <asp:ListItem>KGS</asp:ListItem>
                        <asp:ListItem>PCS</asp:ListItem>
                        <asp:ListItem>DZN</asp:ListItem>

                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Color"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioColor" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem value="red" Text="Red"/>
                        <asp:ListItem value="green" Text="Green"/>
                        <asp:ListItem value="black" Text="Black"/>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Insert Date"></asp:Label>
                </td>
                <td>
                    <%--<asp:TextBox ID="txtDate" runat="server"/>
                    <act:CalendarExtender ID="CalenderExtender" runat="server" TargetControlID="TextBox1" Format="dd/MM/yyyy">

                    </act:CalendarExtender>--%>
                    <asp:TextBox ID="txtdate" Fomart="MM/dd/yyyy" Type="Date" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Opening Quantity"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtOpeningqtty" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Product Status"></asp:Label>
                </td>
                <td>
                    <asp:CheckBoxList ID="Checkregular" runat="server">
                        <asp:ListItem Value="regular" Text="Regular"/>
                        <asp:ListItem Value="irregular" Text="Iregular"/>


                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>&nbsp</td>
                <td>
                    <asp:Button runat="server" ID="insertbutton" Text="Insert" BackColor="blueviolet" ForeColor="White" OnClick="insertbutton_Click" />
                    <asp:Button Text="Update" runat="server" ID="ButtonUpdate" ForeColor="White" BackColor="BlueViolet" OnClick="ButtonUpdate_Click" />
                    <asp:Button Text="Delete" runat="server" ID="ButtonDelete" BackColor="Red" ForeColor="White" OnClick="ButtonDelete_Click" OnClientClick="return confirm('Are you sure you wannt to delete?');"/>
                </td>
            </tr>
        </table>
    </div>
    <div align="center">
        <hr />
        <asp:GridView ID="Gridview1" runat="server" Width="80%" HeaderStyle-BackColor="blueviolet" HeaderStyle-ForeColor="White"></asp:GridView>
    </div>
</asp:Content>
