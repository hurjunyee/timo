package net.test;

public class CalcBean {

	  public int abs(int su){
	    // ���밪 ���ϱ�(������ ��� ���)
	    if(su<0)
	      return -su;
	    else
	      return su;

	}

	  public int fact(int su){
	    // ���丮�� ���ϱ� 4*3*2*1
	    return (su==0) ? 1 : su*fact(su-1);    
	  }

	}