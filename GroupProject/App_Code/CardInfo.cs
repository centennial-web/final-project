using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace GroupProject.db
{
    public class CardInfo
    {
        string cardType;
         string cardFlag;
         int cardNum;
         string cardName;
         DateTime expDate;
         int securityNum;

        public CardInfo(string cardType, string cardFlag, int cardNum, string cardName, DateTime expDate, int securityNum)
        {
            this.cardType = cardType;
            this.cardFlag = cardFlag;
            this.cardNum = cardNum;
            this.cardName = cardName;
            this.expDate = expDate;
            this.securityNum = securityNum;
        }
    }
}