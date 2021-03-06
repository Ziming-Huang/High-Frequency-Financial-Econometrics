function [sample1,sample2,sample3] = bsample_3(sample_base1,sample_base2,sample_base3,kn,n,T)
%kn: the number of observation for every small interval
%n: the number of observation every day
M=n/kn;
intraday_offset=repmat(reshape(repmat(0:kn:(M-1)*kn,kn,1),[],1),1,T);
day_offset=repmat((0:n:(T-1)*n),n,1);
indices=randi(kn,n,T)+intraday_offset+day_offset;
sample1=sample_base1(indices);
sample2=sample_base2(indices);
sample3=sample_base3(indices);
end
