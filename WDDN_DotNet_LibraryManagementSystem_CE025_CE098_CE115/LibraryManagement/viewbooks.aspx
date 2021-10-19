<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewbooks.aspx.cs" Inherits="LibraryManagement.viewbooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
            $(document).ready(function () {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
        </script>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="row">

                <div class="col-sm-12">
                    <center>
                        <h3>
                        Book Inventory List</h3>
                    </center>
                    <div class="row">
                        <div class="col-sm-12 col-md-12">
                            <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </asp:Panel>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="card">
                            <div class="card-body">

                                <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:libraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_table]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="book_id" HeaderText="Book ID" ReadOnly="True" SortExpression="book_id">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                                <asp:BoundField DataField="author_name" HeaderText="Author Name" SortExpression="author_name" />
                                                <asp:BoundField DataField="publisher_name" HeaderText="Publisher" SortExpression="publisher_name" />
                                                <asp:BoundField DataField="publish_date" HeaderText="Date" SortExpression="publish_date" />
                                                <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                                <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                                <asp:BoundField DataField="book_cost" HeaderText="Price" SortExpression="book_cost" />
                                                <asp:BoundField DataField="no_of_pages" HeaderText="Pages" SortExpression="no_of_pages" />
                                                <asp:BoundField DataField="book_description" HeaderText="Description" SortExpression="book_description" />
                                                <asp:BoundField DataField="current_stock" HeaderText="Ava. Stock" SortExpression="current_stock" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <center>
                    <a href="HomePage.aspx"> <-Home</a><span class="clearfix"></span>
                            <br />
                            <center>
            </div>
        </div>
    </asp:Content>
