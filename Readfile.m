#import <Foundation/Foundation.h>

int main (int argc, const char* argv[])
{
    FILE *wordFile = fopen ("Readfile.txt", "r");
    char word[100];

    while (fgets(word, 100, wordFile)) {
	word[strlen(word) - 1] = '\0';

    	NSLog(@"%s is %d characters long", word, strlen(word));
    }
    fclose (wordFile);
    
    return (0);
}
