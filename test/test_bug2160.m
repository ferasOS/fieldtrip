function test_bug2160

% TEST test_bug2160
% TEST ft_multiplotER

tl = [];
tl.time = 0.001:0.001:2;
tl.label = {'MLC11','MLC12','MLC13','MLC14','MLC15','MLC16','MLC17','MLC21','MLC22','MLC23','MLC24','MLC25','MLC31','MLC32','MLC41','MLC42','MLC51','MLC52','MLC53','MLC54','MLC55','MLC61','MLC62','MLC63','MLF11','MLF12','MLF13','MLF14','MLF21','MLF22','MLF23','MLF24','MLF25','MLF31','MLF32','MLF33','MLF34','MLF35','MLF41','MLF42','MLF43','MLF44','MLF45','MLF46','MLF51','MLF52','MLF53','MLF54','MLF55','MLF56','MLF61','MLF62','MLF63','MLF64','MLF65','MLF66','MLF67','MLO13','MLO14','MLO23','MLO24','MLO31','MLO32','MLO33','MLO34','MLO41','MLO42','MLO43','MLO44','MLO51','MLO52','MLO53','MLP11','MLP12','MLP21','MLP22','MLP23','MLP31','MLP32','MLP33','MLP34','MLP35','MLP41','MLP42','MLP43','MLP44','MLP45','MLP51','MLP52','MLP53','MLP54','MLP55','MLP56','MLP57','MLT11','MLT12','MLT13','MLT14','MLT15','MLT16','MLT21','MLT22','MLT23','MLT24','MLT25','MLT26','MLT27','MLT31','MLT32','MLT33','MLT34','MLT35','MLT36','MLT37','MLT41','MLT42','MLT43','MLT44','MLT45','MLT46','MLT47','MLT51','MLT52','MLT53','MLT54','MLT55','MLT56','MLT57','MRC11','MRC12','MRC13','MRC14','MRC15','MRC16','MRC17','MRC21','MRC22','MRC23','MRC24','MRC25','MRC31','MRC32','MRC41','MRC42','MRC51','MRC52','MRC53','MRC54','MRC55','MRC61','MRC62','MRC63','MRF11','MRF12','MRF13','MRF14','MRF21','MRF22','MRF23','MRF24','MRF25','MRF31','MRF32','MRF33','MRF34','MRF35','MRF41','MRF42','MRF43','MRF44','MRF45','MRF46','MRF51','MRF52','MRF53','MRF54','MRF55','MRF56','MRF61','MRF62','MRF63','MRF64','MRF65','MRF67','MRO11','MRO12','MRO13','MRO14','MRO21','MRO22','MRO23','MRO24','MRO31','MRO32','MRO33','MRO34','MRO41','MRO42','MRO43','MRO44','MRO51','MRO53','MRP11','MRP12','MRP21','MRP22','MRP23','MRP31','MRP32','MRP33','MRP34','MRP35','MRP41','MRP42','MRP43','MRP44','MRP45','MRP51','MRP52','MRP53','MRP54','MRP55','MRP56','MRP57','MRT11','MRT12','MRT13','MRT14','MRT15','MRT16','MRT21','MRT22','MRT23','MRT24','MRT25','MRT26','MRT27','MRT31','MRT32','MRT33','MRT34','MRT35','MRT36','MRT37','MRT41','MRT42','MRT43','MRT44','MRT45','MRT46','MRT47','MRT51','MRT52','MRT53','MRT54','MRT55','MRT56','MRT57','MZC01','MZC02','MZC03','MZC04','MZF01','MZF02','MZF03','MZO01','MZO03','MZP01','MLO11','MLO12','MLO21','MLO22','MZO02'};
tl.avg = randn(numel(tl.label), numel(tl.time));
tl.dimord = 'chan_time';

tl2 = [];

% note different time axis
tl2.time = 0.001:0.001:3;

tl2.label = {'MLC11','MLC12','MLC13','MLC14','MLC15','MLC16','MLC17','MLC21','MLC22','MLC23','MLC24','MLC25','MLC31','MLC32','MLC41','MLC42','MLC51','MLC52','MLC53','MLC54','MLC55','MLC61','MLC62','MLC63','MLF11','MLF12','MLF13','MLF14','MLF21','MLF22','MLF23','MLF24','MLF25','MLF31','MLF32','MLF33','MLF34','MLF35','MLF41','MLF42','MLF43','MLF44','MLF45','MLF46','MLF51','MLF52','MLF53','MLF54','MLF55','MLF56','MLF61','MLF62','MLF63','MLF64','MLF65','MLF66','MLF67','MLO13','MLO14','MLO23','MLO24','MLO31','MLO32','MLO33','MLO34','MLO41','MLO42','MLO43','MLO44','MLO51','MLO52','MLO53','MLP11','MLP12','MLP21','MLP22','MLP23','MLP31','MLP32','MLP33','MLP34','MLP35','MLP41','MLP42','MLP43','MLP44','MLP45','MLP51','MLP52','MLP53','MLP54','MLP55','MLP56','MLP57','MLT11','MLT12','MLT13','MLT14','MLT15','MLT16','MLT21','MLT22','MLT23','MLT24','MLT25','MLT26','MLT27','MLT31','MLT32','MLT33','MLT34','MLT35','MLT36','MLT37','MLT41','MLT42','MLT43','MLT44','MLT45','MLT46','MLT47','MLT51','MLT52','MLT53','MLT54','MLT55','MLT56','MLT57','MRC11','MRC12','MRC13','MRC14','MRC15','MRC16','MRC17','MRC21','MRC22','MRC23','MRC24','MRC25','MRC31','MRC32','MRC41','MRC42','MRC51','MRC52','MRC53','MRC54','MRC55','MRC61','MRC62','MRC63','MRF11','MRF12','MRF13','MRF14','MRF21','MRF22','MRF23','MRF24','MRF25','MRF31','MRF32','MRF33','MRF34','MRF35','MRF41','MRF42','MRF43','MRF44','MRF45','MRF46','MRF51','MRF52','MRF53','MRF54','MRF55','MRF56','MRF61','MRF62','MRF63','MRF64','MRF65','MRF67','MRO11','MRO12','MRO13','MRO14','MRO21','MRO22','MRO23','MRO24','MRO31','MRO32','MRO33','MRO34','MRO41','MRO42','MRO43','MRO44','MRO51','MRO53','MRP11','MRP12','MRP21','MRP22','MRP23','MRP31','MRP32','MRP33','MRP34','MRP35','MRP41','MRP42','MRP43','MRP44','MRP45','MRP51','MRP52','MRP53','MRP54','MRP55','MRP56','MRP57','MRT11','MRT12','MRT13','MRT14','MRT15','MRT16','MRT21','MRT22','MRT23','MRT24','MRT25','MRT26','MRT27','MRT31','MRT32','MRT33','MRT34','MRT35','MRT36','MRT37','MRT41','MRT42','MRT43','MRT44','MRT45','MRT46','MRT47','MRT51','MRT52','MRT53','MRT54','MRT55','MRT56','MRT57','MZC01','MZC02','MZC03','MZC04','MZF01','MZF02','MZF03','MZO01','MZO03','MZP01','MLO11','MLO12','MLO21','MLO22','MZO02'};
tl2.avg = randn(numel(tl.label), numel(tl2.time));
tl2.dimord = 'chan_time';


cfg = [];
cfg.layout = 'CTF275.lay';
try
  ft_multiplotER(cfg, tl, tl2);
catch exc
  disp('there should be an error here')
  getReport(exc, 'basic')
end

if ~strcmp(exc.message,'this function requires identical time axes for all input structures');
  error('ft_multiplotER do not detect different time axes');
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% repeat for frequency input

f1 = [];
f1.freq = 0.001:0.001:2;
f1.label = {'MLC11','MLC12','MLC13','MLC14','MLC15','MLC16','MLC17','MLC21','MLC22','MLC23','MLC24','MLC25','MLC31','MLC32','MLC41','MLC42','MLC51','MLC52','MLC53','MLC54','MLC55','MLC61','MLC62','MLC63','MLF11','MLF12','MLF13','MLF14','MLF21','MLF22','MLF23','MLF24','MLF25','MLF31','MLF32','MLF33','MLF34','MLF35','MLF41','MLF42','MLF43','MLF44','MLF45','MLF46','MLF51','MLF52','MLF53','MLF54','MLF55','MLF56','MLF61','MLF62','MLF63','MLF64','MLF65','MLF66','MLF67','MLO13','MLO14','MLO23','MLO24','MLO31','MLO32','MLO33','MLO34','MLO41','MLO42','MLO43','MLO44','MLO51','MLO52','MLO53','MLP11','MLP12','MLP21','MLP22','MLP23','MLP31','MLP32','MLP33','MLP34','MLP35','MLP41','MLP42','MLP43','MLP44','MLP45','MLP51','MLP52','MLP53','MLP54','MLP55','MLP56','MLP57','MLT11','MLT12','MLT13','MLT14','MLT15','MLT16','MLT21','MLT22','MLT23','MLT24','MLT25','MLT26','MLT27','MLT31','MLT32','MLT33','MLT34','MLT35','MLT36','MLT37','MLT41','MLT42','MLT43','MLT44','MLT45','MLT46','MLT47','MLT51','MLT52','MLT53','MLT54','MLT55','MLT56','MLT57','MRC11','MRC12','MRC13','MRC14','MRC15','MRC16','MRC17','MRC21','MRC22','MRC23','MRC24','MRC25','MRC31','MRC32','MRC41','MRC42','MRC51','MRC52','MRC53','MRC54','MRC55','MRC61','MRC62','MRC63','MRF11','MRF12','MRF13','MRF14','MRF21','MRF22','MRF23','MRF24','MRF25','MRF31','MRF32','MRF33','MRF34','MRF35','MRF41','MRF42','MRF43','MRF44','MRF45','MRF46','MRF51','MRF52','MRF53','MRF54','MRF55','MRF56','MRF61','MRF62','MRF63','MRF64','MRF65','MRF67','MRO11','MRO12','MRO13','MRO14','MRO21','MRO22','MRO23','MRO24','MRO31','MRO32','MRO33','MRO34','MRO41','MRO42','MRO43','MRO44','MRO51','MRO53','MRP11','MRP12','MRP21','MRP22','MRP23','MRP31','MRP32','MRP33','MRP34','MRP35','MRP41','MRP42','MRP43','MRP44','MRP45','MRP51','MRP52','MRP53','MRP54','MRP55','MRP56','MRP57','MRT11','MRT12','MRT13','MRT14','MRT15','MRT16','MRT21','MRT22','MRT23','MRT24','MRT25','MRT26','MRT27','MRT31','MRT32','MRT33','MRT34','MRT35','MRT36','MRT37','MRT41','MRT42','MRT43','MRT44','MRT45','MRT46','MRT47','MRT51','MRT52','MRT53','MRT54','MRT55','MRT56','MRT57','MZC01','MZC02','MZC03','MZC04','MZF01','MZF02','MZF03','MZO01','MZO03','MZP01','MLO11','MLO12','MLO21','MLO22','MZO02'};
f1.avg = randn(numel(f1.label), numel(f1.freq));
f1.dimord = 'chan_freq';

f12 = [];

% note different freq axis
f12.freq = 0.001:0.001:3;

f12.label = {'MLC11','MLC12','MLC13','MLC14','MLC15','MLC16','MLC17','MLC21','MLC22','MLC23','MLC24','MLC25','MLC31','MLC32','MLC41','MLC42','MLC51','MLC52','MLC53','MLC54','MLC55','MLC61','MLC62','MLC63','MLF11','MLF12','MLF13','MLF14','MLF21','MLF22','MLF23','MLF24','MLF25','MLF31','MLF32','MLF33','MLF34','MLF35','MLF41','MLF42','MLF43','MLF44','MLF45','MLF46','MLF51','MLF52','MLF53','MLF54','MLF55','MLF56','MLF61','MLF62','MLF63','MLF64','MLF65','MLF66','MLF67','MLO13','MLO14','MLO23','MLO24','MLO31','MLO32','MLO33','MLO34','MLO41','MLO42','MLO43','MLO44','MLO51','MLO52','MLO53','MLP11','MLP12','MLP21','MLP22','MLP23','MLP31','MLP32','MLP33','MLP34','MLP35','MLP41','MLP42','MLP43','MLP44','MLP45','MLP51','MLP52','MLP53','MLP54','MLP55','MLP56','MLP57','MLT11','MLT12','MLT13','MLT14','MLT15','MLT16','MLT21','MLT22','MLT23','MLT24','MLT25','MLT26','MLT27','MLT31','MLT32','MLT33','MLT34','MLT35','MLT36','MLT37','MLT41','MLT42','MLT43','MLT44','MLT45','MLT46','MLT47','MLT51','MLT52','MLT53','MLT54','MLT55','MLT56','MLT57','MRC11','MRC12','MRC13','MRC14','MRC15','MRC16','MRC17','MRC21','MRC22','MRC23','MRC24','MRC25','MRC31','MRC32','MRC41','MRC42','MRC51','MRC52','MRC53','MRC54','MRC55','MRC61','MRC62','MRC63','MRF11','MRF12','MRF13','MRF14','MRF21','MRF22','MRF23','MRF24','MRF25','MRF31','MRF32','MRF33','MRF34','MRF35','MRF41','MRF42','MRF43','MRF44','MRF45','MRF46','MRF51','MRF52','MRF53','MRF54','MRF55','MRF56','MRF61','MRF62','MRF63','MRF64','MRF65','MRF67','MRO11','MRO12','MRO13','MRO14','MRO21','MRO22','MRO23','MRO24','MRO31','MRO32','MRO33','MRO34','MRO41','MRO42','MRO43','MRO44','MRO51','MRO53','MRP11','MRP12','MRP21','MRP22','MRP23','MRP31','MRP32','MRP33','MRP34','MRP35','MRP41','MRP42','MRP43','MRP44','MRP45','MRP51','MRP52','MRP53','MRP54','MRP55','MRP56','MRP57','MRT11','MRT12','MRT13','MRT14','MRT15','MRT16','MRT21','MRT22','MRT23','MRT24','MRT25','MRT26','MRT27','MRT31','MRT32','MRT33','MRT34','MRT35','MRT36','MRT37','MRT41','MRT42','MRT43','MRT44','MRT45','MRT46','MRT47','MRT51','MRT52','MRT53','MRT54','MRT55','MRT56','MRT57','MZC01','MZC02','MZC03','MZC04','MZF01','MZF02','MZF03','MZO01','MZO03','MZP01','MLO11','MLO12','MLO21','MLO22','MZO02'};
f12.avg = randn(numel(f1.label), numel(f12.freq));
f12.dimord = 'chan_freq';


cfg = [];
cfg.layout = 'CTF275.lay';
try
  ft_multiplotER(cfg, f1, f12);
catch exc
  disp('there should be an error here')
  getReport(exc, 'basic')
end

if ~strcmp(exc.message,'this function requires identical frequency axes for all input structures');
  error('ft_multiplotER do not detect different frequency axes');
end
