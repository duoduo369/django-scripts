#!/usr/bin/env bash

echo "New name?"
read new_name
echo "..................................."
echo "new_name: $new_name"
echo "..................................."

project_path=$(pwd)

echo "project_path: $project_path"

old_django_name=$(python -c "import os;print os.path.split('$project_path')[1]")
echo "old_django_name: $old_django_name"

old_django_path_profix=$(python -c "import os;print os.path.split('$project_path')[0]")
new_project_path="$old_django_path_profix$new_name"
echo "$new_project_path"



#grep djangomako_demo -ril ./ | xargs sed -i 's/djangomako_demo/djangopipeline_demo/g'
