inl_data=csvRead("C:\Users\ba-pe\Documents\4430_Projects\project4\data\Ideal_DigitalOut_7bit_linear.txt", "\t")
vin = inl_data(:,1)
vin = vin(2:11)
bin = inl_data(:,2)
bin = bin(2:11)
plot2d2(vin, bin)
L = get(gca,'YTickLabel');
set(gca,'YTickLabel',cellfun(@(x) dec2bin(str2num(x)),L,'UniformOutput',false));
