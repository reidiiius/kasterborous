#!/usr/bin/octave -qf

% includes

rassilon;

% formating

  function rtv = chronotis
    rtv = [(datestr (time, 30)), ' '];
  endfunction

  function rtv = press (qp)
    rtv = printf ('\t%s\n', qp);
  endfunction

% latin strings

  function rtv = svBj (qp)
    rtv = [qp(51:end), qp(1:50)];
  endfunction

  function rtv = svFn (qp)
    rtv = [qp(26:end), qp(1:25)];
  endfunction

  function rtv = svCn (qp)
    rtv = qp;
  endfunction

  function rtv = svGn (qp)
    rtv = [qp(36:end), qp(1:35)];
  endfunction

  function rtv = svDn (qp)
    rtv = [qp(11:end), qp(1:10)];
  endfunction

  function rtv = svAn (qp)
    rtv = [qp(46:end), qp(1:45)];
  endfunction

  function rtv = svEn (qp)
    rtv = [qp(21:end), qp(1:20)];
  endfunction

  function rtv = svBn (qp)
    rtv = [qp(56:end), qp(1:55)];
  endfunction

  function rtv = svFk (qp)
    rtv = [qp(31:end), qp(1:30)];
  endfunction

% hex strings

  function rtv = hxBj (qp)
    rtv = [qp(31:end), qp(1:30)];
  endfunction

  function rtv = hxFn (qp)
    rtv = [qp(16:end), qp(1:15)];
  endfunction

  function rtv = hxCn (qp)
    rtv = qp;
  endfunction

  function rtv = hxGn (qp)
    rtv = [qp(22:end), qp(1:21)];
  endfunction

  function rtv = hxDn (qp)
    rtv = [qp( 7:end), qp(1: 6)];
  endfunction

  function rtv = hxAn (qp)
    rtv = [qp(28:end), qp(1:27)];
  endfunction

  function rtv = hxEn (qp)
    rtv = [qp(13:end), qp(1:12)];
  endfunction

  function rtv = hxBn (qp)
    rtv = [qp(34:end), qp(1:33)];
  endfunction

  function rtv = hxFk (qp)
    rtv = [qp(19:end), qp(1:18)];
  endfunction

% latin tunings

  function svBEADGCF (ks, qp)
    press ([ks, '-beadgcf-sv', chronotis]);
    press (svFn (qp));
    press (svCn (qp));
    press (svGn (qp));
    press (svDn (qp));
    press (svAn (qp));
    press (svEn (qp));
    press (svBn (qp));
  endfunction

  function svCGDAE (ks, qp)
    press ([ks, '-cgdae-sv', chronotis]);
    press (svEn (qp));
    press (svAn (qp));
    press (svDn (qp));
    press (svGn (qp));
    press (svCn (qp));
  endfunction

  function svEADGBE (ks, qp)
    press ([ks, '-eadgbe-sv', chronotis]);
    press (svEn (qp));
    press (svBn (qp));
    press (svGn (qp));
    press (svDn (qp));
    press (svAn (qp));
    press (svEn (qp));
  endfunction

  function svFkBjDn (ks, qp)
    press ([ks, '-fkbjdn-sv', chronotis]);
    press (svDn (qp));
    press (svBj (qp));
    press (svFk (qp));
    press (svDn (qp));
    press (svBj (qp));
    press (svFk (qp));
  endfunction

% hex tunings

  function hxBEADGCF (ks, qp)
    press ([ks, '-beadgcf-hx', chronotis]);
    press (hxFn (qp));
    press (hxCn (qp));
    press (hxGn (qp));
    press (hxDn (qp));
    press (hxAn (qp));
    press (hxEn (qp));
    press (hxBn (qp));
  endfunction

  function hxCGDAE (ks, qp)
    press ([ks, '-cgdae-hx', chronotis]);
    press (hxEn (qp));
    press (hxAn (qp));
    press (hxDn (qp));
    press (hxGn (qp));
    press (hxCn (qp));
  endfunction

  function hxEADGBE (ks, qp)
    press ([ks, '-eadgbe-hx', chronotis]);
    press (hxEn (qp));
    press (hxBn (qp));
    press (hxGn (qp));
    press (hxDn (qp));
    press (hxAn (qp));
    press (hxEn (qp));
  endfunction

  function hxFkBjDn (ks, qp)
    press ([ks, '-fkbjdn-hx', chronotis]);
    press (hxDn (qp));
    press (hxBj (qp));
    press (hxFk (qp));
    press (hxDn (qp));
    press (hxBj (qp));
    press (hxFk (qp));
  endfunction

% idiododecaphony

function rtv = gankogui (qp)
  rtv = [
    [qp( 6:end), qp(1: 5)];
    [qp( 1:end)];
    [qp( 8:end), qp(1: 7)];
    [qp( 3:end), qp(1: 2)];
    [qp(10:end), qp(1: 9)];
    [qp( 5:end), qp(1: 4)];
    [qp(12:end), qp(1:11)];
    [qp( 7:end), qp(1: 6)];
    [qp( 2:end), qp(1: 1)];
    [qp( 9:end), qp(1: 8)];
    [qp( 4:end), qp(1: 3)];
    [qp(11:end), qp(1:10)]
  ];
endfunction

% idiophone loops

  function sesquialterum (qp)
    for [v, k] = qp
      disp ([k, '-CXLIV-bn', chronotis]);
      disp (gankogui (v));
      disp ('');
    endfor
  endfunction

% latin loops

  function latinBass (qp)
    for [v, k] = qp
      svBEADGCF (k, v);
      disp ('');
    endfor
  endfunction

  function latinCello (qp)
    for [v, k] = qp
      svCGDAE (k, v);
      disp ('');
    endfor
  endfunction

  function latinGuitar (qp)
    for [v, k] = qp
      svEADGBE (k, v);
      disp ('');
    endfor
  endfunction

  function latinMaj3rds (qp)
    for [v, k] = qp
      svFkBjDn (k, v);
      disp ('');
    endfor
  endfunction

% hex loops

  function hexBass (qp)
    for [v, k] = qp
      hxBEADGCF (k, v);
      disp ('');
    endfor
  endfunction

  function hexCello (qp)
    for [v, k] = qp
      hxCGDAE (k, v);
      disp ('');
    endfor
  endfunction

  function hexGuitar (qp)
    for [v, k] = qp
      hxEADGBE (k, v);
      disp ('');
    endfor
  endfunction

  function hexMaj3rds (qp)
    for [v, k] = qp
      hxFkBjDn (k, v);
      disp ('');
    endfor
  endfunction

