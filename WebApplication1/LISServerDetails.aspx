<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LISServerDetails.aspx.cs" Inherits="WebApplication1.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
 
                <div class="card">
                    <div class="card-body">
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>LIS Server Details</h4>
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <img width="100px" src="imgs/59844.png" />
                                       
                                    </center>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col-md-6">
                                <label>LIS ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                                <label>Schema Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <%--<asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID"></asp:TextBox>--%>
                                         <select class="form-control SchemaName" > </select>
                                    </div>
                                </div>
                            </div>
 
                            <div class="col-md-6">
                                <label>LIS Version</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="LIS Version"></asp:TextBox>
 
                                </div>
                               
                                <label>Schema Version</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Schema Version"></asp:TextBox>
 
                                </div>
                                
                            </div>

                             <br />
                              <input type="radio" value="Design" name="radio" id="Design" />Design
                            <br /><br />
                             <input type="radio" value="Test" id="Test" name="radio" /> Test
                        </div>
 
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button2_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button4" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                             
                        </div>
 
 
                    </div>
                </div>
 
                <a href="home.aspx"><< Back to Home</a><br>
              
                <a href="admin.aspx"><< Back to Admin</a><br>
                   <br>
            </div>
 
            <div class="col-md-7">
 
                <div class="card">
                    <div class="card-body">
 
 
 
                        <div class="row">
                            <div class="col">
                                <center>
                                        <h4>LIS Server List</h4>
                                    <%--</center>--%>
                            </div>
                        </div>
 
                       
 
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
 
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
 
 
                    </div>
                </div>
 
 
            </div>
 
        </div>
    </div>
</asp:Content>
