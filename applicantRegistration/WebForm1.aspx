<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="applicantRegistration.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container d-flex justify-content-center align-items-center min-vh-100">
        <div class="card shadow-lg p-4 w-50">
            <h2 class="text-center mb-4">Applicant Registration</h2>
            <asp:Panel ID="pnlRegistration" runat="server">
                <div class="mb-3">
                    <asp:Label ID="lblFullName" runat="server" Text="Full Name:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control text-center"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" ErrorMessage="Full Name is required." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control text-center" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control text-center" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Phone number is required." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblAddress" runat="server" Text="Address:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control text-center" TextMode="MultiLine"></asp:TextBox>
                </div>

           <div class="mb-3">
    <asp:Label ID="lblGender" runat="server" Text="Gender:" CssClass="form-label"></asp:Label>
    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="gender-spacing">
        <asp:ListItem Text="&nbsp;&nbsp;Male&nbsp;&nbsp;&nbsp;"  Value="Male"></asp:ListItem>
        <asp:ListItem Text="&nbsp;&nbsp;Female&nbsp;&nbsp;&nbsp;" Value="Female"></asp:ListItem>
        <asp:ListItem Text="&nbsp;&nbsp;Other" Value="Other"></asp:ListItem>
    </asp:RadioButtonList>
</div>


                <div class="mb-3">
                    <asp:Label ID="lblCourseInterest" runat="server" Text="Course of Interest:" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="ddlCourseInterest" runat="server" CssClass="form-control text-center">
                        <asp:ListItem Text="Select Course" Value=""></asp:ListItem>
                        <asp:ListItem Text="Computer Science" Value="CS"></asp:ListItem>
                        <asp:ListItem Text="Mathematics" Value="Math"></asp:ListItem>
                        <asp:ListItem Text="Physics" Value="Physics"></asp:ListItem>
                        <asp:ListItem Text="Engineering" Value="Engineering"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCourseInterest" runat="server" ControlToValidate="ddlCourseInterest" InitialValue="" ErrorMessage="Please select a course of interest." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3 ">
                    <asp:Label ID="lblResume" runat="server" Text="Upload Resume:" CssClass="form-label"></asp:Label>
                    <asp:FileUpload ID="fuResume" runat="server" CssClass="form-control" />
                </div>

                <div class="text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Apply Now" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
