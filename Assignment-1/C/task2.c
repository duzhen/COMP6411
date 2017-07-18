#include<stdio.h>
#include<conio.h>

  main(void)
{
	int hiv=0;
	int flu=0;
	int preg=0;
	int hep=0;
	int gender=-1;
	int input=-1;

	printf("Welcome to Disease finder, Please select your gender:\r\n\r\n");
	printf("1 - Male\r\n");
	printf("2 - Female\r\n");


	scanf("%d",&gender);

	do {
		printf("Select from the listed symptoms's OR select 0 to exit:\r\n\r\n");

		//Flu
		printf("1 - Fever\r\n"); //Pregnancy, Hepatitis
		printf("2 - Cough\r\n");
		printf("3 - Sore Throat\r\n");
		printf("4 - Stuffy Nose\r\n");
		printf("5 - Body Aches\r\n"); //hiv
		printf("6 - Headaches\r\n");
		printf("7 - Fatigue\r\n"); //HIV, Hepatitis, Pregnancy
		//HIV
		printf("8 - Chills\r\n");
		printf("9 - Rash\r\n");
		printf("10 - Night Sweats\r\n");
		printf("11 - Swollen lymph nodes\r\n");
		printf("12 - Mouth Ulcer\r\n");
		printf("13 - Rapid Weight Loss\r\n");
		//Hepatitis
		printf("14 - Poor Apetite\r\n");
		
		if(gender==2)
		{
			//Pregnancy
			printf("15 - Missing Periods\r\n");		
			printf("16 - Increased Heart Rate\r\n");
			printf("17 - Change in Breasts size\r\n");
			printf("18 - Frequent Urination\r\n");
			printf("19 - Constipation\r\n");
			printf("20 - Vomitting\r\n");
			printf("21 - Change in Breasts size\r\n");
			printf("22 - Change in Breasts size\r\n");
		}

		printf("\r\n0 - End\r\n");

		switch(input)
		{
				case 1:
				flu++;
				hiv++;
				hep++;

				break;

				case 2:
				flu++;

				break;

				case 3:
				flu++;
				hiv++;

				break;

				case 4:
				flu++;

				break;
				case 5:
				flu++;
				hiv++;

				break;
				case 6:
				flu++;

				break;
				case 7:
				flu++;
				hiv++;
				hep++;

				break;
				case 8:
				hiv++;

				break;
				case 9:
				hiv++;

				break;
				case 10:
				hiv++;

				break;
				case 11:
				hiv++;

				break;
				case 12:
				hiv++;

				break;
				case 13:
				hiv++;

				break;
				case 14:
				hep++;

				break;
				case 15:
				preg++;

				break;
				case 16:
				preg++;

				break;
				case 17:
				preg++;

				break;
				case 18:
				preg++;

				break;
				case 19:
				preg++;

				break;
				case 20:
				preg++;

				break;
				case 21:
				preg++;

				break;
				case 22:
				preg++;

				break;

				default:
				printf("invalid input... try again \r\n");

		}

		scanf("%d",&input);

	} while(input != 0);

	if(flu>preg && flu>hiv && flu>hep)
	{
		printf("\r\n\r\n ** You are diagnosed with FLU\r\n\r\n");
	} else if(preg>flu && preg>hiv && preg>hep && gender==2)
	{
		printf("\r\n\r\n ** You are diagnosed with Pregnancy\r\n\r\n");

	} else if(hiv>preg && hiv>flu && hiv>hep)
	{
		printf("\r\n\r\n ** You are diagnosed with HIV:\r\n\r\n");
	} else if(hep>preg && hep>flu && hep>hiv){
		printf("\r\n\r\n ** You are diagnosed with Hepatitis\r\n\r\n");
	} else {
		printf("\r\n\r\n ** ERROR::: You disease is UNKNOWN to the system\r\n\r\n");
	}


}
