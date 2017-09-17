function scale = GetScale(length_projection)
scale_list = [];
for i = 1:size(length_projection, 2)
    if length_projection(1,i) == 0
        scale_pre = 0;
    elseif length_projection(2,i) == 0
        scale_pre = length_projection(1,i)./8;
    elseif length_projection(1,i) <= length_projection(2,i)
        scale_pre = length_projection(2,i)./length_projection(1,i);
    else
        scale_pre = length_projection(1,i)./length_projection(2,i);
    end
    scale_list = [scale_list,scale_pre];
end
scale = scale_list;
end
