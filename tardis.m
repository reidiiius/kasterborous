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

% hanzi strings

  function rtv = zhBj (qp)
    rtv = [qp(71:end), qp(1:70)];
  endfunction

  function rtv = zhFn (qp)
    rtv = [qp(36:end), qp(1:35)];
  endfunction

  function rtv = zhCn (qp)
    rtv = qp;
  endfunction

  function rtv = zhGn (qp)
    rtv = [qp(50:end), qp(1:49)];
  endfunction

  function rtv = zhDn (qp)
    rtv = [qp(15:end), qp(1:14)];
  endfunction

  function rtv = zhAn (qp)
    rtv = [qp(64:end), qp(1:63)];
  endfunction

  function rtv = zhEn (qp)
    rtv = [qp(29:end), qp(1:28)];
  endfunction

  function rtv = zhBn (qp)
    rtv = [qp(78:end), qp(1:77)];
  endfunction

  function rtv = zhFk (qp)
    rtv = [qp(43:end), qp(1:42)];
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

% hanzi tunings

  function zhBEADGCF (ks, qp)
    press ([ks, '-beadgcf-zh', chronotis]);
    press (zhFn (qp));
    press (zhCn (qp));
    press (zhGn (qp));
    press (zhDn (qp));
    press (zhAn (qp));
    press (zhEn (qp));
    press (zhBn (qp));
  endfunction

  function zhCGDAE (ks, qp)
    press ([ks, '-cgdae-zh', chronotis]);
    press (zhEn (qp));
    press (zhAn (qp));
    press (zhDn (qp));
    press (zhGn (qp));
    press (zhCn (qp));
  endfunction

  function zhEADGBE (ks, qp)
    press ([ks, '-eadgbe-zh', chronotis]);
    press (zhEn (qp));
    press (zhBn (qp));
    press (zhGn (qp));
    press (zhDn (qp));
    press (zhAn (qp));
    press (zhEn (qp));
  endfunction

  function zhFkBjDn (ks, qp)
    press ([ks, '-fkbjdn-zh', chronotis]);
    press (zhDn (qp));
    press (zhBj (qp));
    press (zhFk (qp));
    press (zhDn (qp));
    press (zhBj (qp));
    press (zhFk (qp));
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

% hanzi loops

  function hanziBass (qp)
    for [v, k] = qp
      zhBEADGCF (k, v);
      disp ('');
    endfor
  endfunction

  function hanziCello (qp)
    for [v, k] = qp
      zhCGDAE (k, v);
      disp ('');
    endfor
  endfunction

  function hanziGuitar (qp)
    for [v, k] = qp
      zhEADGBE (k, v);
      disp ('');
    endfor
  endfunction

  function hanziMaj3rds (qp)
    for [v, k] = qp
      zhFkBjDn (k, v);
      disp ('');
    endfor
  endfunction

