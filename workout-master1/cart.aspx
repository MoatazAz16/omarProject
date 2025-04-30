<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="My Cart"></asp:Label>
<br />
    <br />
    <asp:Label ID="totallbl" runat="server" BackColor="White" BorderColor="Black" 
        BorderStyle="Dashed" Font-Size="X-Large" ForeColor="Black" Text="Label" 
        
    
        
        style="z-index: 1; left: 592px; top: 902px; position:static ; height: 34px; width: 273px; "></asp:Label>
    ______________________________________________________________________________________________________________________________________________________________________________<br />
    <asp:GridView ID="GridViewcart" runat="server" AllowPaging="True" 
    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProdCode" 
        onrowdeleting="GridViewcart_RowDeleting1" 
        onrowupdating="GridViewcart_RowUpdating1" 
        onrowcancelingedit="GridViewcart_RowCancelingEdit1" 
        onrowediting="GridViewcart_RowEditing1" onselectedindexchanged="GridViewcart_SelectedIndexChanged1" Width="972px" 
    >
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:TemplateField HeaderText="ProdCode" SortExpression="ProdCode">
                <ItemTemplate>
                    <asp:Label ID="ProdCode" runat="server" Text='<%# Bind("ProdCode") %>'></asp:Label>
                </ItemTemplate>
              
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProdName" SortExpression="ProdName">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ProdName") %>'></asp:Label>
                </ItemTemplate>
             
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProdPrice" SortExpression="ProdPrice">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProdPrice") %>'></asp:Label>
                </ItemTemplate>
              
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProdImage" SortExpression="ProdImage">
             
                <ItemTemplate>
                    <asp:Image ID="Label1" runat="server" Width="300" Height="200" ImageUrl='<%# Bind("ProdImage","{0}") %>' />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="username" SortExpression="username">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                </ItemTemplate>
              
            </asp:TemplateField>
            <asp:TemplateField HeaderText="quantity" SortExpression="quantity">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("quantity") %>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("quantity") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
</asp:GridView>

    <br />
    <asp:Label ID="status" runat="server" ForeColor="Red" Text="Label" 
        Visible="False"></asp:Label>
    &nbsp;
    <asp:Button ID="cartcleaner" runat="server" Text="clean cart" 
        onclick="cartcleaner_Click1" 
        style="z-index: 1; left: 206px; top: 547px; position: static" />
    &nbsp;<asp:Button ID="checkout" runat="server" Text="check out" 
        onclick="checkout_Click1" 
        style="z-index: 1; top: 542px; position:  static; left: 359px" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
     Visa Details<br />
    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="884px">


        <table class="w-100">
            <tr>
                <td>enter visa</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged">         </asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="You must enter the visa number " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Enter your Name: "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="You must enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Enter the visa security code : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="You must enter the visa security code" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Enter the visa valid month : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="You must enter the valid month " ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Enter the visa valid year : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="You must enter the valid year" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        &nbsp;<br />
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Shipping Details"></asp:Label>
        <br />
        <table style="width: 100%">
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Enter Country "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="You must enter Country" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Enter City "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox8" ErrorMessage="You must enter City" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Enter Street "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox9" ErrorMessage="You must enter Street" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Enter House "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10" ErrorMessage="You must enter House" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />

     

         

        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="z-index: 1; left: 577px; top: 1069px; " Text="pay" />
         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </asp:Panel>
    <br />

</asp:Content>

