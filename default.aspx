<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ryan's Mortgage Calculator</title>

    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div style="position:relative">
    <h1>Ryan's Mortgage Calculator</h1>
        
        <br />
        *
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="amountRFV" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please enter a loan amount."></asp:RequiredFieldValidator>          
        
        <br /><br />      
        *
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="interestRFV" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter an interest rate."></asp:RequiredFieldValidator>

        <br /><br />
        *
        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="termRFV" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please enter a loan term."></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClearAll" runat="server" Text="Clear All" />
        
        <br /><br />
        
        Welcome to my mortgage calculator. Please complete all the fields above to have your monthly payment  and loan repayment schedule calculated for you. <br /><br />
           
        <h2>Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></h2>
        </div>

        <div id="table">
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" HorizontalAlign="Center" CssClass="cssgridview" />
        
        <br />
        </div>
    </form>
</body>
</html>
