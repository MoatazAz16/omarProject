<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="tm-content tm-contact">
                        <h2 class="mb-4 tm-content-title">Forget Password</h2>
                      
                      
                            <div class="form-group mb-4">
                              <asp:TextBox  id="txtEmail" class="form-control" runat="server" placeholder="Enter Your Email"/>
                            </div>
                         
                     
                                <asp:Button ID="btnSend" type="submit" class="btn btn-big btn-primary" Text="Send" 
                                    runat="server" onclick="btnSend_Click" />
                          
                         
                            <br />
                          
                               
                             <div class="form-group mb-4">
                              <asp:Label id="lblInfo" class="form-control" runat="server" Text=""/>
                            </div>
                      
                    </section>
</asp:Content>

