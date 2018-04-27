#ifndef INPUT_H
#define INPUT_H

class Input
{
 	  public:
	  Input();
	  void Update(int ms);
  	  bool IsPressed(int keyCode);
	  void KeyPressed(int keyCode);
	  void KeyReleased(int keyCode);
	  void Reset();
	  int GetKeyCode();
	  int GetPressure();
	  
	  private:
	  void UpdatePressure();
	  void NextFrame();
	  		  
	  private:
	  int m_Timer;
	  int m_Pressure;
	  int m_CurrentKeyFlags;
	  int m_NextKeyFlags;
	  int m_PrevKeyFlags;
};

#endif
