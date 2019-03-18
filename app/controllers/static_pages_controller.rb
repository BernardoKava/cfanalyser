class StaticPagesController < ApplicationController
  def home

    @visitor_view_desc = "    CF Analyser allows authorised users to edit and review cash-flow data. It provides a user
interface that allows the user to easily navigate through transactions.  It is tailored to the cashflow module of HomeIntel.
To get access, please click on the request access button on the HomeIntel App Homepage.  Please note that only authorised users are allowed to access
this application. This is a private application with access to private data (Herga Privacy Policy) "

    @notice_of_access_request= "Access can only be requested via the HomeIntel Homepage."

    @inflows_desc = "All incomes of the household are captured on this table. "
    @outflows_desc = "All expenses of the household are captured on this table. "
  end



  def help
    @help_information = " For All technical issues, users are required to contact the Herga Home Network administrator on  085 101 26 54.
All technical Issues are dealt with based on priority"
    @help_notice = "Contact Network Administrator on 085 101 2654 or herga.a@outlook.com"
  end
end
