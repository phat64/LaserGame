#include "Includes.h"

Input::Input()
{
 	Reset();
}

void Input::Reset()
{
 	m_Timer = 0;
 	m_Pressure = 0;
  	m_PrevKeyFlags = 0;		 
  	m_CurrentKeyFlags = 0;
	m_NextKeyFlags = 0;
}

bool Input::IsPressed(int keyCode)
{
 	 return (m_CurrentKeyFlags & keyCode) == keyCode;
}
	
void Input::KeyPressed(int keyCode)
{
 	m_NextKeyFlags |= keyCode;				  
}

void Input::KeyReleased(int keyCode)
{
 	m_NextKeyFlags &= ~keyCode;	
}

void Input::Update(int ms)
{
 	 m_Timer -= ms;
 	 if (m_Timer < 0)
 	 {
	  	m_Timer = 200;
	  	UpdatePressure();
		NextFrame();
	 }
}

int Input::GetPressure()
{
 	return m_Pressure; 	
}

void Input::NextFrame()
{
 	m_PrevKeyFlags = m_CurrentKeyFlags;		 
  	m_CurrentKeyFlags = m_NextKeyFlags; 	 
}

void Input::UpdatePressure()
{
 	 /*if (m_PrevKeyFlags == 0)
 	 {
	  	m_Pressure = 0;
		return;
	 }*/
	
	 // first time
/*	 if (m_PrevKeyFlags == 0 && m_CurrentKeyFlags != 0)
 	 {
	  	m_Pressure = 64;
		return;
	 }*/
	 
	 if (m_PrevKeyFlags != 0 && m_PrevKeyFlags == m_CurrentKeyFlags)
	 {
	  	// first time
		if (m_Pressure == 0)	m_Pressure = 64;
		else 					m_Pressure <<= 3;
			 
		if (m_Pressure > 255)
		   m_Pressure = 255;
	 }
	 else
	 {
  		m_Pressure >>= 4;
		if (m_Pressure < 0)
		   m_Pressure = 0;
	 }
}
