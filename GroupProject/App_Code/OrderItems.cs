using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject.db
{
    public class OrderItems
    {
        string prod_Id ;
        string prod_Name ;
        string prod_Descrip ; 
        float price ;

        public OrderItems(string prod_Id, string prod_Name, string prod_Descrip, float price)
        {
            this.prod_Id = prod_Id;
            this.prod_Name = prod_Name;
            this.prod_Descrip = prod_Descrip;
            this.price = price;
        }
    }
}