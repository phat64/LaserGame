#ifndef __HUD_H__
#define __HUD_H__

class HUD
{
      public:
      void HUD::Render(Gfx * g, Actor ** actors, int nActors);
      void RenderDigit(Gfx * g, int x, int y, int d);
      void Render2Digits(Gfx * g, int x, int y, int d);
      void RenderNumber(Gfx * g, int x, int y, int n);
};

#endif
