# Defined in - @ line 0
function sudo --description 'bee careful with sudo'
         echo -e \e'[1m     \e[32m"Bee" careful    \e[34m__'
         echo -e "       \e[32mwith sudo!    \e[34m// \\"
         echo -e '                     \\\\\_/ \e[33m//'
         echo -e "   \e[35m''-.._.-''-.._.. \e[33m-(||)(')"
         echo -e "                     '''\e[0m"
         echo ""
         command sudo $argv;
end
