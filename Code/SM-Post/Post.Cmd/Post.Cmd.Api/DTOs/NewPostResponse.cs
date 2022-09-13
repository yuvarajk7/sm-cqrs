using Post.Common.DTOs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Post.Cmd.Api.DTOs
{
    public class NewPostResponse : BaseResponse
    {
        public Guid Id { get; set; }
    }
}
