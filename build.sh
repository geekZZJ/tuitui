# 清空dist目录中的旧文件 
echo '正在清除原有dist文件...' 
rm -rf dist/*.css

# 打包出不压缩的CSS文件tuitui.css
echo '正在生成tuitui.css文件...'
npx postcss src/tuitui.css -o dist/tuitui.css -u postcss-import autoprefixer --no-map

# 打包出被压缩的CSS文件tuitui.min.css
echo '正在生成tuitui.min.css文件...'
npx postcss src/tuitui.css -o dist/tuitui.min.css -u postcss-import autoprefixer cssnano --no-map
