image_db = '/home/shuoliu/Research/IROD/code/fast-rcnn/data/sample_data';
image_filenames = textread([image_db '/Train_Test/Visible/train.txt'], '%s', 'delimiter', '\n');
for i = 1:length(image_filenames)
    if exist([image_db '/Imagery/Visible/images/' image_filenames{i} '.png'], 'file') == 2
        image_filenames{i} = [image_db '/Imagery/Visible/images/' image_filenames{i} '.png'];
    end
end
selective_search_rcnn(image_filenames, 'output.mat');
