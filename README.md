[English](./README.md) | [日本語](./README_ja.md)

# mastodon-railway-template
A template for deploying Mastodon on [Railway](https://railway.app).

## Usage

### 1. Click on "Deploy on Railway"

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/Pa4Fcc?referralCode=mveF9L)

### 2. Click "Configure" for each service and set the environment variables
![](images/step2.png)

You must click "Save Config" for all settings. Below are the instructions for configuring each service.

#### Mastodon-Streaming
No need to edit as it syncs with Mastodon's environment variables.

#### Mastodon
| Variable Name | Description | Default |
| --- | --- | --- |
| OWNER_USERNAME | Specify the username for the admin account to be created at startup. | |
| OWNER_EMAIL | Specify the email address for the admin account to be created at startup. It won't be used until the mail server is set up. | |
| LOCAL_DOMAIN | Set the domain to be used in Mastodon. Specify either a custom domain or a free domain available from Railway `{any string}.up.railway.app`. | Automatically generated domain |

No other settings need to be edited.

For more details on each setting, refer to the [official documentation](https://docs.joinmastodon.org/admin/config/).

### 3. Click "Deploy" after completing the settings
You can deploy when everything is marked as "Ready to be deployed" as shown in the image below.

![](images/step3.png)

### 4. A few minutes later, click on the "Mastodon" service and access the URL
The URL can be found under "Deployments" as shown below.

![](images/step4.png)

That's it!

![](images/step4-2.png)

## ⚠️⚠️Caution⚠️⚠️
- Uploaded images are saved on a mounted volume with a capacity of 5GB. It is advisable to set up S3 or similar from the start if needed.
- Railway charges based on usage, so please avoid increasing follows excessively. [You can also set usage limits in the settings.](https://docs.railway.app/reference/usage-limits)
