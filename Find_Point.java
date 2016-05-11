import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution 
{

    public static void main(String[] args) 
    {
        Scanner s = new Scanner(System.in);
        int n = s.nextInt();
        for(int i = 0; i < n; i++)
        {
            int Px = s.nextInt(),
                Py = s.nextInt(),
                Qx = s.nextInt(),
                Qy = s.nextInt(),
                Rx = (2*Qx - Px),
                Ry = (2*Qy - Py);
            System.out.println(Rx + " " + Ry);
        }
    }
}
