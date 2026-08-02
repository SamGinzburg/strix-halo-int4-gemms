	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[26:27], s[0:1], 0x60
	s_load_b32 s4, s[0:1], 0x68
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 1, v0
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v51, 0x5410 :: v_dual_lshlrev_b32 v46, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s5, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v87, 0xff800000 :: v_dual_and_b32 v44, 16, v46
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s7, s6, s5
	v_dual_mov_b32 v52, 0x7632 :: v_dual_and_b32 v47, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v49, v0, 4, 1
	v_bfe_i32 v57, v0, 3, 1
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s26, v45
	s_mul_i32 s16, s26, s7
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s26, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s0, s4, 0x3fb8aa3b
	s_and_b32 s11, s11, 0xffff
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v44, s16
	s_mov_b32 s16, 0
	s_movk_i32 s33, 0xffe0
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	buffer_load_b128 v[40:43], v1, s[28:31], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v45, 16, v47
	s_mov_b32 s23, s16
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	v_mov_b32_e32 v24, 0
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v59, s7, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s6, v1
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v45, s5, v45
	s_mov_b32 s38, s30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v39, s23 :: v_dual_lshlrev_b32 v2, 1, v59
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, 0x200, v1
	v_dual_mov_b32 v34, s18 :: v_dual_lshlrev_b32 v53, 1, v0
	v_dual_mov_b32 v32, s16 :: v_dual_and_b32 v55, 24, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s6
	v_dual_mov_b32 v37, s21 :: v_dual_and_b32 v48, 56, v0
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v56, 3, v0
	v_mov_b32_e32 v31, v24
	buffer_load_u16 v50, v1, s[28:31], 0 offen
	v_mov_b32_e32 v19, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v61, v53, 30, v49
	v_xor_b32_e32 v55, v46, v55
	v_and_b32_e32 v46, 48, v46
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v54, 7, v0
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v53, 24, v53
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v49, 1, v49
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v56, 48, v56
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v58, 1, v48
	v_dual_mov_b32 v18, v24 :: v_dual_lshlrev_b32 v61, 2, v61
	v_xor_b32_e32 v46, v46, v48
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v57, 0x210, v57
	v_lshl_or_b32 v47, v47, 5, v53
	v_lshl_or_b32 v48, v54, 6, v56
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v64, s3, 10, v49
	v_or_b32_e32 v49, s5, v58
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v53, 4, v61
	v_lshl_or_b32 v46, v54, 9, v46
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v63, 4, v54
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v62, 3, v54
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v65, 0, v55
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v68, 0, v47
	v_xor_b32_e32 v67, 8, v55
	v_xor_b32_e32 v55, 8, v47
	v_xor_b32_e32 v56, 16, v47
	v_xor_b32_e32 v58, 24, v47
	v_xor_b32_e32 v66, v48, v57
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v54, 3, v49
	v_or_b32_e32 v57, 2, v49
	v_mul_lo_u32 v47, s27, v49
	v_mad_u64_u32 v[48:49], null, s26, v45, v[44:45]
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v60, 16, v0
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v72, 0, v46
	v_xor_b32_e32 v44, 0x90, v46
	v_xor_b32_e32 v45, 0x120, v46
	v_xor_b32_e32 v49, 0x1b0, v46
	v_mov_b32_e32 v12, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v60
	v_add_nc_u32_e32 v75, 0, v44
	v_dual_mov_b32 v13, v24 :: v_dual_lshlrev_b32 v74, 1, v47
	v_dual_mov_b32 v15, v24 :: v_dual_add_nc_u32 v76, 0, v45
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v73, v47, s27, 1
	v_cndmask_b32_e64 v51, 0x1054, v51, s1
	v_cndmask_b32_e64 v52, 0x3276, v52, s1
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v77, 0, v49
	v_mul_lo_u32 v54, s27, v54
	v_mul_lo_u32 v57, s27, v57
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v52, v52, 8, v52
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s2, s27, v62
	v_xor_b32_e32 v62, 16, v66
	v_xor_b32_e32 v79, 32, v66
	v_xor_b32_e32 v80, 48, v66
	v_xor_b32_e32 v81, 0x420, v66
	v_xor_b32_e32 v82, 0x430, v66
	v_xor_b32_e32 v83, 0x410, v66
	v_dual_mov_b32 v38, s22 :: v_dual_mov_b32 v35, s19
	v_dual_mov_b32 v36, s20 :: v_dual_mov_b32 v33, s17
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v67, 0, v67
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v69, 0, v55
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v70, 0, v56
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v71, 0, v58
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v79, 0, v79
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v78, 0, v62
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v81, 0, v81
	v_dual_mov_b32 v3, v24 :: v_dual_add_nc_u32 v80, 0, v80
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v83, 0, v83
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v82, 0, v82
	v_dual_mov_b32 v6, v24 :: v_dual_lshlrev_b32 v85, 1, v57
	v_dual_mov_b32 v7, v24 :: v_dual_lshlrev_b32 v84, 1, v54
	v_mov_b32_e32 v62, v24
	s_mov_b32 s39, s31
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s13, s13, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s34, s27, 6
	s_lshl_b32 s26, s26, 5
	s_mov_b32 s28, s10
	s_mov_b32 s29, s11
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v46, v61, v40
	ds_bpermute_b32 v40, v53, v40
	ds_bpermute_b32 v44, v61, v41
	ds_bpermute_b32 v41, v53, v41
	ds_bpermute_b32 v45, v61, v42
	ds_bpermute_b32 v42, v53, v42
	ds_bpermute_b32 v47, v61, v43
	ds_bpermute_b32 v43, v53, v43
	v_lshl_or_b32 v53, v51, 8, v51
	v_mov_b16_e32 v61.h, 0
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v49, v40, v46, s1
	v_cndmask_b32_e64 v51, v46, v40, s1
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v50, 16, v50
	v_and_b32_e32 v40, 0x540054, v53
	v_and_b32_e32 v46, 0x760076, v52
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v52, v44, v41, s1
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v53, v42, v45, s1
	v_cndmask_b32_e64 v55, v45, v42, s1
	v_lshl_or_b32 v40, v40, 4, v40
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v86, s0, v50
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v50, v41, v44, s1
	v_lshl_or_b32 v41, v46, 4, v46
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v54, v43, v47, s1
	v_cndmask_b32_e64 v56, v47, v43, s1
	v_and_b32_e32 v57, 0x5040504, v40
	v_and_b32_e32 v58, 0x7060706, v41
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v88, 0x80000000, v48 :: v_dual_add_nc_u32 v89, v74, v63
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v47, s23 :: v_dual_mov_b32 v46, s22
	v_dual_mov_b32 v45, s21 :: v_dual_mov_b32 v44, s20
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[94:97], v88, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v43, s19 :: v_dual_mov_b32 v42, s18
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v40, s16
	v_dual_mov_b32 v134, v62 :: v_dual_add_nc_u32 v91, v85, v63
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v62, 0x80000000, v89, s2
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.h, v61.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v89, 0x80000000, v91, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v122.h, v61.h
	v_mov_b16_e32 v123.h, v61.h
	v_mov_b16_e32 v124.h, v61.h
	v_mov_b16_e32 v127.h, v61.h
	v_mov_b16_e32 v126.h, v61.h
	v_mov_b16_e64 v145.h, v61.h
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s33, s33, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v65, v[94:95]
	ds_store_b64 v67, v[96:97]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[106:109], v68 offset1:1
	ds_load_2addr_stride64_b64 v[110:113], v69 offset1:1
	ds_load_2addr_stride64_b64 v[114:117], v70 offset1:1
	ds_load_2addr_stride64_b64 v[118:121], v71 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xe
	buffer_load_u16 v128, v64, s[36:39], 0 offen
	buffer_load_u16 v129, v64, s[36:39], 0 offen offset:4
	buffer_load_u16 v130, v64, s[36:39], 0 offen offset:8
	buffer_load_u16 v131, v64, s[36:39], 0 offen offset:12
	buffer_load_u16 v132, v64, s[36:39], 0 offen offset:16
	buffer_load_u16 v133, v64, s[36:39], 0 offen offset:20
	buffer_load_u16 v135, v64, s[36:39], 0 offen offset:24
	buffer_load_u16 v136, v64, s[36:39], 0 offen offset:28
	buffer_load_u16 v137, v64, s[36:39], 0 offen offset:32
	buffer_load_u16 v138, v64, s[36:39], 0 offen offset:36
	buffer_load_u16 v139, v64, s[36:39], 0 offen offset:40
	buffer_load_u16 v140, v64, s[36:39], 0 offen offset:44
	buffer_load_u16 v141, v64, s[36:39], 0 offen offset:48
	buffer_load_u16 v142, v64, s[36:39], 0 offen offset:52
	buffer_load_u16 v143, v64, s[36:39], 0 offen offset:56
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s33, 0x1e0
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[108:109], v[49:50], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[106:107], v[49:50], v[32:39] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v106, v64, s[36:39], 0 offen offset:60
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[112:113], v[53:54], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[110:111], v[53:54], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[116:117], v[51:52], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[114:115], v[51:52], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[94:101], v[120:121], v[55:56], v[94:101] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[118:119], v[55:56], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v116, v95
	v_cvt_f32_i32_e32 v117, v96
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v109, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v90, v73, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v113, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v92, v84, v63
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v107, v40
	v_cvt_f32_i32_e32 v108, v41
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v88, 0x80000000, v90, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v110, v43
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v90, 0x80000000, v92, s2
	s_clause 0x1
	buffer_load_b128 v[102:105], v89, s[12:15], 0 offen
	buffer_load_b128 v[89:92], v90, s[12:15], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v111, v44
	v_cvt_f32_i32_e32 v112, v45
	v_cvt_f32_i32_e32 v114, v47
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[40:43], v88, s[12:15], 0 offen
	buffer_load_b128 v[44:47], v62, s[12:15], 0 offen
	v_add_nc_u32_e32 v93, 0, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v63, s34, v63
	v_add_nc_u32_e32 v48, s26, v48
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v115, v94
	v_cvt_f32_i32_e32 v118, v97
	v_cvt_f32_i32_e32 v119, v98
	v_cvt_f32_i32_e32 v120, v99
	v_cvt_f32_i32_e32 v121, v100
	v_cvt_f32_i32_e32 v144, v101
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v64, 64, v64
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v62.h, v61.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v95.l, v102.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v95.h, v89.l
	v_mov_b16_e32 v89.l, v102.h
	v_mov_b16_e32 v99.l, v104.l
	v_mov_b16_e32 v99.h, v91.l
	v_mov_b16_e32 v91.l, v104.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v94.h, v40.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v40.l, v44.h
	v_mov_b16_e32 v96.h, v41.l
	v_mov_b16_e32 v41.l, v45.h
	v_mov_b16_e32 v96.l, v45.l
	v_mov_b16_e32 v98.h, v42.l
	v_mov_b16_e32 v42.l, v46.h
	v_mov_b16_e32 v98.l, v46.l
	v_mov_b16_e32 v100.l, v47.l
	v_mov_b16_e32 v100.h, v43.l
	v_mov_b16_e32 v43.l, v47.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v86, v107
	v_mul_f32_e32 v46, v86, v108
	v_mul_f32_e32 v47, v86, v109
	v_mul_f32_e32 v102, v86, v110
	v_mul_f32_e32 v104, v86, v112
	v_mul_f32_e32 v107, v86, v114
	v_mul_f32_e32 v109, v86, v116
	v_mul_f32_e32 v110, v86, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v116, 16, v128
	v_lshlrev_b32_e32 v117, 16, v129
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v97.l, v103.l
	v_mov_b16_e32 v97.h, v90.l
	v_mov_b16_e32 v90.l, v103.h
	v_mov_b16_e32 v101.h, v92.l
	v_mov_b16_e32 v92.l, v105.h
	v_mov_b16_e32 v101.l, v105.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v103, v86, v111
	v_mul_f32_e32 v105, v86, v113
	v_mul_f32_e32 v108, v86, v115
	v_mul_f32_e32 v111, v86, v118
	v_dual_mul_f32 v112, v86, v119 :: v_dual_lshlrev_b32 v129, 16, v136
	v_dual_mul_f32 v113, v86, v120 :: v_dual_lshlrev_b32 v128, 16, v135
	v_mul_f32_e32 v114, v86, v121
	v_dual_mul_f32 v115, v86, v144 :: v_dual_lshlrev_b32 v118, 16, v130
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v119, 16, v131
	v_lshlrev_b32_e32 v120, 16, v132
	v_lshlrev_b32_e32 v121, 16, v133
	v_lshlrev_b32_e32 v130, 16, v137
	v_lshlrev_b32_e32 v131, 16, v138
	v_lshlrev_b32_e32 v132, 16, v139
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v88, v40 :: v_dual_lshlrev_b32 v133, 16, v140
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v135, 16, v141
	v_lshlrev_b32_e32 v136, 16, v142
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v45, v116 :: v_dual_lshlrev_b32 v137, 16, v143
	v_mul_f32_e32 v45, v46, v117
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v94.l, v44.l
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v44, v92
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v46, v47, v118 :: v_dual_mul_f32 v47, v102, v119
	v_mul_f32_e32 v92, v103, v120
	v_dual_mul_f32 v102, v104, v121 :: v_dual_mul_f32 v103, v105, v128
	v_dual_mul_f32 v104, v107, v129 :: v_dual_mul_f32 v105, v108, v130
	v_dual_mul_f32 v107, v109, v131 :: v_dual_mul_f32 v108, v110, v132
	v_dual_mul_f32 v109, v111, v133 :: v_dual_mul_f32 v110, v112, v135
	v_mul_f32_e32 v111, v113, v136
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v45, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v112, v114, v137
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v72, v[94:95], v[88:89] offset1:8
	v_mov_b32_e32 v89, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v88, 0xff800000, v40, s6
	v_cndmask_b32_e64 v114, 0xff800000, v47, s6
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v106, v115, v106
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v92, s6
	v_cndmask_b32_e64 v115, 0xff800000, v102, s6
	v_cndmask_b32_e64 v118, 0xff800000, v107, s6
	v_cndmask_b32_e64 v119, 0xff800000, v108, s6
	v_cndmask_b32_e64 v120, 0xff800000, v109, s6
	v_cndmask_b32_e64 v121, 0xff800000, v110, s6
	v_cndmask_b32_e64 v128, 0xff800000, v111, s6
	v_cndmask_b32_e64 v129, 0xff800000, v112, s6
	v_cndmask_b32_e64 v116, 0xff800000, v46, s6
	v_cndmask_b32_e64 v130, 0xff800000, v106, s6
	v_cndmask_b32_e64 v110, 0xff800000, v103, s6
	v_cndmask_b32_e64 v111, 0xff800000, v104, s6
	v_cndmask_b32_e64 v131, 0xff800000, v105, s6
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v75, v[96:97], v[89:90] offset1:8
	v_mov_b32_e32 v90, v42
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v40, v88, v113
	v_max3_f32 v41, v114, v92, v115
	v_max3_f32 v42, v118, v119, v120
	v_max3_f32 v45, v121, v128, v129
	v_max3_f32 v89, v110, v111, v131
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v76, v[98:99], v[90:91] offset1:8
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v90, v40, v116, v41
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v77, v[100:101], v[43:44] offset1:8
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v91, v42, v45, v130
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[40:43], v93
	ds_load_b128 v[98:101], v82
	ds_load_b128 v[94:97], v81
	ds_load_b128 v[44:47], v78
	ds_load_b128 v[106:109], v78 offset:2048
	ds_load_b128 v[102:105], v93 offset:2048
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v89, v90, v89, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v90, v89, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v135, v87, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v89, v113, v135
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v113, v87, v135
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v135
	v_sub_f32_e32 v91, v114, v135
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v89, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 885 61 is_stmt 1              ; attention.py:885:61
	v_exp_f32_e32 v132, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v91, v91
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v89, s6
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v141, 0, v132, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v135
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v111, s6
	v_cndmask_b32_e64 v136, 0, v91, s6
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v61.l, v87.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v92, v92, v135 :: v_dual_mul_f32 v25, v25, v141
	v_dual_sub_f32 v112, v115, v135 :: v_dual_mul_f32 v29, v29, v141
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v89, 1, v61
	v_mov_b16_e64 v61.l, v136.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v90, v116, v135
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v92, v92
	v_exp_f32_e32 v112, v112
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v110, s6
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v87, v87
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v141
	v_mul_f32_e32 v24, v24, v141
	v_mul_f32_e32 v19, v19, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v125.l, v138.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v88, v88, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v138, v138
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v92, 0, v92, s6
	v_cndmask_b32_e64 v137, 0, v112, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v111, 1, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v88, v88
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v136, v136
	v_mov_b16_e32 v124.l, v92.h
	v_cmp_o_f32_e64 s8, v137, v137
	v_cmp_o_f32_e64 s9, v92, v92
	v_cmp_o_f32_e64 s10, v139, v139
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v110, 1, v124
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v141
	v_mul_f32_e32 v21, v21, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v88, 0, v88, s6
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v141
	v_mul_f32_e32 v23, v23, v141
	v_mul_f32_e32 v26, v26, v141
	v_mul_f32_e32 v28, v28, v141
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v140, v88, v87 :: v_dual_mul_f32 v31, v31, v141
.Ltmp11:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v87, v87, v89, 0x7fff
	v_and_b32_e32 v89, 1, v61
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v90, v90
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v122.l, v88.h
	v_cmp_o_f32_e64 s4, v88, v88
	v_mov_b16_e64 v61.l, v137.h
	v_cndmask_b16 v87.h, 0x7fff, v87.h, s3
	v_add3_u32 v89, v136, v89, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v141
	v_mul_f32_e32 v8, v8, v141
	v_mul_f32_e32 v10, v10, v141
	v_mul_f32_e32 v11, v11, v141
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, 0, v90, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v90, 1, v122
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s5
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v141
	v_mul_f32_e32 v12, v12, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v123.l, v133.h
	v_add3_u32 v88, v88, v90, 0x7fff
	v_cmp_o_f32_e64 s7, v133, v133
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v141
	v_mul_f32_e32 v15, v15, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v91, 1, v123
	v_cndmask_b16 v87.l, 0x7fff, v88.h, s4
	v_and_b32_e32 v88, 1, v61
	v_mov_b16_e64 v61.l, v139.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v90, v133, v91, 0x7fff
	v_add3_u32 v91, v92, v110, 0x7fff
	v_add3_u32 v110, v138, v111, 0x7fff
	v_add3_u32 v88, v137, v88, 0x7fff
	v_permlanex16_b32 v111, v87, s35, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v89.l, 0x7fff, v90.h, s7
	v_cndmask_b16 v90.l, 0x7fff, v91.h, s9
	v_cndmask_b16 v91.l, 0x7fff, v110.h, s11
	v_and_b32_e32 v110, 1, v61
	v_cndmask_b16 v90.h, 0x7fff, v88.h, s8
	v_permlanex16_b32 v113, v89, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v92, v92, v137
.Ltmp13:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v112, v139, v110, 0x7fff
	v_perm_b32 v110, v111, v87, v57
	v_perm_b32 v111, v111, v87, v58
	v_permlanex16_b32 v87, v90, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v91.h, 0x7fff, v112.h, s10
	v_perm_b32 v112, v113, v89, v57
	v_perm_b32 v113, v113, v89, v58
	v_perm_b32 v114, v87, v90, v57
	v_perm_b32 v115, v87, v90, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v87, v131, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v88, v91, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v141
	v_mul_f32_e32 v4, v4, v141
	v_mul_f32_e32 v5, v5, v141
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v87, v87
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v116, v88, v91, v57
	v_perm_b32 v117, v88, v91, v58
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v141
	v_mul_f32_e32 v7, v7, v141
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[88:91], v93 offset:1024
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[102:109], v[110:117], v[8:15]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v87, 0, v87, s6
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v16, v16, v141
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.l, v87.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[94:101], v[110:117], v[16:23]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v94, v118, v135
	v_sub_f32_e32 v95, v119, v135
	v_sub_f32_e32 v101, v121, v135
	v_sub_f32_e32 v100, v120, v135
	v_sub_f32_e32 v119, v129, v135
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v94, v94
	v_exp_f32_e32 v95, v95
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v119, v119
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_and_b32_e32 v122, 1, v126
	v_cmp_o_f32_e64 s0, v87, v87
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[96:99], v79
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v142, 0, v94, s6
	v_cndmask_b32_e64 v94, 0, v95, s6
	v_cndmask_b32_e64 v95, 0, v101, s6
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v133, v136
.Ltmp15:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, 0, v100, s6
	v_cndmask_b32_e64 v100, 0, v119, s6
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v119, v87, v142
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v62.l, v95.h
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v136, v140, v101
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v140, v87, v122, 0x7fff
	v_dual_mov_b32 v87, v135 :: v_dual_sub_f32 v120, v130, v135
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v62, 1, v62
	v_cmp_o_f32_e64 s4, v95, v95
	v_mov_b16_e64 v61.l, v142.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[40:47], v[110:117], v[24:31]
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v62, v95, v62, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[40:43], v81 offset:2048
	ds_load_b128 v[44:47], v82 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v127.l, v94.h
	v_mov_b16_e64 v145.l, v100.h
	v_cmp_o_f32_e64 s7, v142, v142
	v_cndmask_b16 v108.l, 0x7fff, v62.h, s4
	v_cmp_o_f32_e64 s8, v143, v143
	v_and_b32_e32 v123, 1, v127
	v_and_b32_e32 v124, 1, v145
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v120, s6
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v120, v94, v143
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v94, v94
	v_cmp_o_f32_e64 s5, v100, v100
	v_add3_u32 v145, v94, v123, 0x7fff
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v100, v146
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v128, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v147, v100, v124, 0x7fff
	v_cmp_o_f32_e64 s10, v146, v146
	v_cndmask_b16 v106.l, 0x7fff, v140.h, s0
	v_cndmask_b16 v107.l, 0x7fff, v145.h, s3
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v109.l, 0x7fff, v147.h, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v118, s6
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v118, v138, v139
	v_add_f32_e32 v138, v119, v120
	v_add_f32_e32 v121, v95, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v137, v92, v118
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v144, v144
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v121, v101
.Ltmp27:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[118:121], v93 offset:3072
	ds_load_b128 v[126:129], v79 offset:2048
	ds_load_b128 v[100:103], v80
	ds_load_b128 v[130:133], v80 offset:2048
	ds_load_b128 v[92:95], v83
	ds_load_b128 v[122:125], v83 offset:2048
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v105, v138, v139 :: v_dual_add_f32 v104, v136, v137
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add_f32_e32 v62, v104, v105
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v105, 1, v61
	v_mov_b16_e64 v61.l, v143.h
.Ltmp30:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v104, v62, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp31:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v141
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v105, v142, v105, 0x7fff
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v62, v62, v104
.Ltmp33:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v104, 1, v61
	v_mov_b16_e64 v61.l, v144.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v106.h, 0x7fff, v105.h, s7
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[110:117], v[0:7]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v62, v134, v141
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v104, v143, v104, 0x7fff
	v_and_b32_e32 v135, 1, v61
	v_mov_b16_e64 v61.l, v146.h
	v_permlanex16_b32 v136, v106, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v107.h, 0x7fff, v104.h, s8
	v_add3_u32 v104, v144, v135, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v105, 1, v61
	v_perm_b32 v40, v136, v106, v57
	v_perm_b32 v41, v136, v106, v58
	v_permlanex16_b32 v43, v107, s35, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v108.h, 0x7fff, v104.h, s9
	v_add3_u32 v42, v146, v105, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v45, v108, s35, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v109.h, 0x7fff, v42.h, s10
	v_perm_b32 v42, v43, v107, v57
	v_perm_b32 v43, v43, v107, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v44, v45, v108, v57
	v_permlanex16_b32 v47, v109, s35, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v45, v108, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v46, v47, v109, v57
	v_perm_b32 v47, v47, v109, v58
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[96:103], v[40:47], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[88:95], v[40:47], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[126:133], v[40:47], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[118:125], v[40:47], v[0:7]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v32, null, v62, v62, v24
	v_div_scale_f32 v33, null, v62, v62, v25
	v_div_scale_f32 v36, null, v62, v62, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v32
	v_rcp_f32_e32 v35, v33
	v_div_scale_f32 v37, vcc_lo, v24, v62, v24
	v_div_scale_f32 v38, s0, v25, v62, v25
	v_rcp_f32_e32 v39, v36
	v_div_scale_f32 v43, null, v62, v62, v27
	v_div_scale_f32 v47, null, v62, v62, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v32, v34, 1.0
	v_fma_f32 v41, -v33, v35, 1.0
	v_div_scale_f32 v42, s3, v26, v62, v26
	v_div_scale_f32 v49, null, v62, v62, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v34, v40, v34 :: v_dual_fmac_f32 v35, v41, v35
	v_rcp_f32_e32 v41, v43
	v_fma_f32 v44, -v36, v39, 1.0
	v_div_scale_f32 v40, s4, v27, v62, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v45, v37, v34 :: v_dual_mul_f32 v46, v38, v35
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s2, 0, v62
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v33, v46, v38
	v_fma_f32 v50, -v43, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v46, v48, v35 :: v_dual_fmac_f32 v41, v50, v41
	v_rcp_f32_e32 v48, v47
	v_fmac_f32_e32 v39, v44, v39
	v_fma_f32 v44, -v32, v45, v37
	v_fma_f32 v33, -v33, v46, v38
	v_div_scale_f32 v38, null, v62, v62, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v44, v34
	v_fma_f32 v32, -v32, v45, v37
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v32, v32, v34, v45
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v34, v49
	v_div_fmas_f32 v33, v33, v35, v46
	v_fma_f32 v35, -v47, v48, 1.0
	v_div_fixup_f32 v24, v32, v62, v24
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v33, v62, v25
	v_fmac_f32_e32 v48, v35, v48
	v_mul_f32_e32 v44, v42, v39
	v_div_scale_f32 v35, s0, v28, v62, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s2
	v_cndmask_b32_e64 v24, 0, v24, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v36, v44, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v61.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v37, v39 :: v_dual_mul_f32 v37, v40, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v36, v44, v42
	v_fma_f32 v33, -v43, v37, v40
	v_fma_f32 v36, -v49, v34, 1.0
	v_div_scale_f32 v42, null, v62, v62, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v32, v32, v39, v44
	v_dual_fmac_f32 v37, v33, v41 :: v_dual_fmac_f32 v34, v36, v34
	v_rcp_f32_e32 v36, v38
	v_mul_f32_e32 v33, v35, v48
	v_div_scale_f32 v39, s3, v29, v62, v29
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v26, v32, v62, v26
	v_fma_f32 v32, -v43, v37, v40
	v_fma_f32 v40, -v47, v33, v35
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v45, -v38, v36, 1.0
	v_mul_f32_e32 v43, v39, v34
	v_div_fmas_f32 v32, v32, v41, v37
	v_fmac_f32_e32 v33, v40, v48
	v_div_scale_f32 v40, s4, v30, v62, v30
	v_fmac_f32_e32 v36, v45, v36
	v_fma_f32 v37, -v49, v43, v39
	v_fma_f32 v41, -v42, v44, 1.0
	v_div_fixup_f32 v27, v32, v62, v27
	v_fma_f32 v32, -v47, v33, v35
	v_mul_f32_e32 v35, v40, v36
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v44, v41, v44
	v_fmac_f32_e32 v43, v37, v34
	v_div_scale_f32 v37, s5, v31, v62, v31
	v_div_scale_f32 v41, null, v62, v62, v16
	v_div_fmas_f32 v32, v32, v48, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v43, v39
	v_fma_f32 v39, -v38, v35, v40
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v46, v37, v44
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v32, v32, v62, v28
	v_fmac_f32_e32 v35, v39, v36
	v_div_scale_f32 v47, null, v62, v62, v17
	v_fma_f32 v39, -v42, v46, v37
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s2
	v_cndmask_b32_e64 v26, 0, v26, s2
	v_cndmask_b32_e64 v32, 0, v32, s2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v39, v44
	v_div_fmas_f32 v33, v33, v34, v43
	v_fma_f32 v43, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v34, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v28, v33, v62, v29
	v_fma_f32 v29, -v38, v35, v40
	v_fmac_f32_e32 v45, v43, v45
	v_div_scale_f32 v33, s0, v16, v62, v16
	v_div_scale_f32 v43, null, v62, v62, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v29, v29, v36, v35
	v_fma_f32 v35, -v42, v46, v37
	v_mul_f32_e32 v36, v33, v45
	v_div_scale_f32 v37, null, v62, v62, v18
	v_fma_f32 v38, -v47, v34, 1.0
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v36, v33
	v_rcp_f32_e32 v39, v37
	v_div_fmas_f32 v35, v35, v44, v46
	v_fmac_f32_e32 v34, v38, v34
	v_div_scale_f32 v38, s3, v17, v62, v17
	v_fmac_f32_e32 v36, v40, v45
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v30, v29, v62, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v42, v38, v34
	v_div_fixup_f32 v29, v35, v62, v31
	v_fma_f32 v40, -v37, v39, 1.0
	v_fma_f32 v33, -v41, v36, v33
	v_div_scale_f32 v41, null, v62, v62, v20
	v_rcp_f32_e32 v35, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v40, v39
	v_div_fmas_f32 v33, v33, v45, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v40, v41
	v_div_scale_f32 v46, null, v62, v62, v21
	v_fma_f32 v31, -v47, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v16, v33, v62, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v43, v35, 1.0
	v_fmac_f32_e32 v42, v31, v34
	v_div_scale_f32 v31, s4, v18, v62, v18
	v_fma_f32 v45, -v41, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v44, v35
	v_fma_f32 v36, -v47, v42, v38
	v_div_scale_f32 v44, s0, v19, v62, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v45, v40
	v_rcp_f32_e32 v45, v46
	v_div_fmas_f32 v34, v36, v34, v42
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v47, s3, v20, v62, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v34, v62, v17
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v34, v47, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v46, v45, 1.0
	v_mul_f32_e32 v38, v31, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v45, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v37, v38, v31
	v_div_scale_f32 v48, s5, v21, v62, v21
	v_fmac_f32_e32 v38, v36, v39
	v_div_scale_f32 v36, null, v62, v62, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v31, -v37, v38, v31
	v_rcp_f32_e32 v37, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v31, v31, v39, v38
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v31, v62, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v36, v37, 1.0
	v_dual_mul_f32 v42, v44, v35 :: v_dual_fmac_f32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v43, v42, v44
	v_div_scale_f32 v39, null, v62, v62, v23
	v_fmac_f32_e32 v42, v33, v35
	v_fma_f32 v33, -v41, v34, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v44
	v_dual_fmac_f32 v34, v33, v40 :: v_dual_mul_f32 v33, v48, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v35, v38, v35, v42
	v_fma_f32 v38, -v41, v34, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v33, v48
	v_div_scale_f32 v42, s0, v22, v62, v22
	v_div_fmas_f32 v34, v38, v40, v34
	v_rcp_f32_e32 v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v41, v45
	v_div_fixup_f32 v19, v35, v62, v19
	v_div_scale_f32 v35, null, v62, v62, v8
	v_div_fixup_f32 v18, v34, v62, v20
	v_fma_f32 v20, -v46, v33, v48
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v38, 1.0
	v_div_fmas_f32 v20, v20, v45, v33
	v_rcp_f32_e32 v33, v35
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, null, v62, v62, v9
	v_div_fixup_f32 v20, v20, v62, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v41
	v_mul_f32_e32 v40, v42, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v36, v40, v42
	v_fmac_f32_e32 v40, v34, v37
	v_div_scale_f32 v34, s3, v23, v62, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v36, v40, v42
	v_mul_f32_e32 v36, v34, v38
	v_fma_f32 v42, -v35, v33, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v21, v37, v40
	v_fma_f32 v37, -v39, v36, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, null, v62, v62, v10
	v_div_scale_f32 v40, s0, v8, v62, v8
	v_fmac_f32_e32 v36, v37, v38
	v_fma_f32 v37, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v42
	v_div_fixup_f32 v21, v21, v62, v22
	v_mul_f32_e32 v22, v40, v33
	v_fma_f32 v34, -v39, v36, v34
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s4, v9, v62, v9
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v35, v22, v40
	v_div_fmas_f32 v34, v34, v38, v36
	v_mul_f32_e32 v36, v37, v43
	v_fma_f32 v38, -v42, v44, 1.0
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v22, v39, v33
	v_div_scale_f32 v39, null, v62, v62, v11
	v_fma_f32 v45, -v41, v36, v37
	v_fmac_f32_e32 v44, v38, v44
	v_div_scale_f32 v38, s3, v10, v62, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v39
	v_div_fixup_f32 v23, v34, v62, v23
	v_fma_f32 v34, -v35, v22, v40
	v_dual_fmac_f32 v36, v45, v43 :: v_dual_mul_f32 v35, v38, v44
	v_div_scale_f32 v40, null, v62, v62, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v34, v33, v22
	v_fma_f32 v33, -v41, v36, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v42, v35, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v39, v46, 1.0
	v_div_fixup_f32 v8, v22, v62, v8
	v_div_fmas_f32 v33, v33, v43, v36
	v_fmac_f32_e32 v35, v34, v44
	v_rcp_f32_e32 v34, v40
	v_div_scale_f32 v36, null, v62, v62, v13
	v_fmac_f32_e32 v46, v37, v46
	v_div_scale_f32 v37, s0, v11, v62, v11
	v_div_fixup_f32 v9, v33, v62, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v33, v36
	v_fma_f32 v22, -v42, v35, v38
	v_mul_f32_e32 v38, v37, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v41, -v40, v34, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v45, null, v62, v62, v15
	v_div_fmas_f32 v22, v22, v44, v35
	v_fma_f32 v35, -v39, v38, v37
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v62, v12
	v_fma_f32 v42, -v36, v33, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v35, v46
	v_div_scale_f32 v35, null, v62, v62, v14
	v_mul_f32_e32 v43, v41, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v42, v33
	v_div_scale_f32 v42, s4, v13, v62, v13
	v_rcp_f32_e32 v44, v35
	v_div_fixup_f32 v10, v22, v62, v10
	v_fma_f32 v22, -v39, v38, v37
	v_fma_f32 v37, -v40, v43, v41
	v_mul_f32_e32 v39, v42, v33
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v46, v38
	v_fmac_f32_e32 v43, v37, v34
	v_fma_f32 v37, -v36, v39, v42
	v_fma_f32 v38, -v35, v44, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v22, v62, v11
	v_fma_f32 v22, -v40, v43, v41
	v_fmac_f32_e32 v39, v37, v33
	v_div_scale_f32 v40, null, v62, v62, v0
	v_fmac_f32_e32 v44, v38, v44
	v_rcp_f32_e32 v37, v45
	v_div_scale_f32 v38, s0, v14, v62, v14
	v_div_fmas_f32 v22, v22, v34, v43
	v_fma_f32 v34, -v36, v39, v42
	v_rcp_f32_e32 v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v36, v38, v44
	v_div_scale_f32 v43, null, v62, v62, v1
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v41, -v45, v37, 1.0
	v_div_fmas_f32 v33, v34, v33, v39
	v_fma_f32 v34, -v35, v36, v38
	v_rcp_f32_e32 v39, v43
	v_div_fixup_f32 v12, v22, v62, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v40, v42, 1.0
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s3, v15, v62, v15
	v_fmac_f32_e32 v36, v34, v44
	v_fmac_f32_e32 v42, v46, v42
	v_div_scale_f32 v46, null, v62, v62, v2
	v_div_fixup_f32 v13, v33, v62, v13
	v_mul_f32_e32 v22, v41, v37
	v_fma_f32 v33, -v43, v39, 1.0
	v_div_scale_f32 v34, s4, v0, v62, v0
	v_fma_f32 v35, -v35, v36, v38
	v_rcp_f32_e32 v38, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v33, v39
	v_div_scale_f32 v33, s5, v1, v62, v1
	v_fma_f32 v47, -v45, v22, v41
	v_mul_f32_e32 v48, v34, v42
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v49, v33, v39
	v_div_fmas_f32 v35, v35, v44, v36
	v_fmac_f32_e32 v22, v47, v37
	v_fma_f32 v36, -v40, v48, v34
	v_fma_f32 v47, -v46, v38, 1.0
	v_fma_f32 v44, -v43, v49, v33
	v_div_fixup_f32 v14, v35, v62, v14
	v_fma_f32 v35, -v45, v22, v41
	v_fmac_f32_e32 v48, v36, v42
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v36, s0, v2, v62, v2
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v49, v44, v39
	v_div_scale_f32 v41, null, v62, v62, v3
	v_div_fmas_f32 v22, v35, v37, v22
	v_mul_f32_e32 v35, v36, v38
	v_fma_f32 v34, -v40, v48, v34
	v_fma_f32 v33, -v43, v49, v33
	v_rcp_f32_e32 v37, v41
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v40, -v46, v35, v36
	v_div_fmas_f32 v34, v34, v42, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v15, v22, v62, v15
	v_div_fmas_f32 v33, v33, v39, v49
	v_fmac_f32_e32 v35, v40, v38
	v_div_fixup_f32 v0, v34, v62, v0
	v_div_scale_f32 v39, null, v62, v62, v5
	v_fma_f32 v22, -v41, v37, 1.0
	v_div_fixup_f32 v1, v33, v62, v1
	v_div_scale_f32 v33, null, v62, v62, v4
	v_fma_f32 v34, -v46, v35, v36
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v37, v22, v37
	v_div_scale_f32 v22, s3, v3, v62, v3
	v_rcp_f32_e32 v36, v33
	v_div_fmas_f32 v34, v34, v38, v35
	v_div_scale_f32 v35, null, v62, v62, v6
	v_rcp_f32_e32 v40, v39
	v_mul_f32_e32 v38, v22, v37
	v_div_scale_f32 v44, null, v62, v62, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v42, v35
	v_div_fixup_f32 v2, v34, v62, v2
	v_fma_f32 v34, -v33, v36, 1.0
	v_fma_f32 v43, -v41, v38, v22
	v_rcp_f32_e32 v46, v44
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v45, -v39, v40, 1.0
	v_fmac_f32_e32 v36, v34, v36
	v_div_scale_f32 v34, s0, v4, v62, v4
	v_fmac_f32_e32 v38, v43, v37
	v_fma_f32 v43, -v35, v42, 1.0
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v5, v62, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v47, v34, v36 :: v_dual_fmac_f32 v42, v43, v42
	v_div_scale_f32 v43, s5, v6, v62, v6
	v_fma_f32 v48, -v44, v46, 1.0
	v_fma_f32 v22, -v41, v38, v22
	v_mul_f32_e32 v49, v45, v40
	v_fma_f32 v41, -v33, v47, v34
	v_mul_f32_e32 v50, v43, v42
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s7, v7, v62, v7
	v_div_fmas_f32 v22, v22, v37, v38
	v_fma_f32 v37, -v39, v49, v45
	v_fmac_f32_e32 v47, v41, v36
	v_fma_f32 v38, -v35, v50, v43
	v_mul_f32_e32 v41, v48, v46
	v_div_fixup_f32 v3, v22, v62, v3
	v_fmac_f32_e32 v49, v37, v40
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v37.l, v24.h
	v_mov_b16_e32 v37.h, v61.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v33, v47, v34
	v_fmac_f32_e32 v50, v38, v42
	v_fma_f32 v33, -v44, v41, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v61
	v_and_b32_e32 v37, 1, v37
	v_mov_b16_e32 v61.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v39, v49, v45
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v41, v33, v46
	v_fma_f32 v33, -v35, v50, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v25, v25
	v_add3_u32 v25, v24, v37, 0x7fff
	v_mov_b16_e32 v37.l, v26.h
	v_mov_b16_e32 v37.h, v61.h
	v_and_b32_e32 v39, 1, v61
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v36, v47
	s_mov_b32 vcc_lo, s4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v40, v49
	s_mov_b32 vcc_lo, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s0, v24, v24
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v42, v50
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v37
	v_add3_u32 v37, v27, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v27, v27
	v_mov_b16_e32 v61.l, v28.h
	v_mov_b16_e32 v39.l, v32.h
	v_mov_b16_e32 v39.h, v61.h
	v_cndmask_b16 v38.l, 0x7fff, v25.h, s0
	v_add3_u32 v24, v26, v24, 0x7fff
	v_cndmask_b16 v27.h, 0x7fff, v37.h, s7
	v_and_b32_e32 v37, 1, v61
	v_cmp_o_f32_e64 s0, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v39
	v_cmp_o_f32_e64 s7, v28, v28
	v_add3_u32 v29, v28, v37, 0x7fff
	v_mov_b16_e32 v37.l, v30.h
	v_mov_b16_e32 v37.h, v61.h
	v_mov_b16_e32 v61.l, v26.h
	v_add3_u32 v25, v32, v25, 0x7fff
	v_cndmask_b16 v27.l, 0x7fff, v24.h, s0
	v_cndmask_b16 v28.h, 0x7fff, v29.h, s7
	v_and_b32_e32 v24, 1, v37
	v_and_b32_e32 v29, 1, v61
	v_cndmask_b16 v28.l, 0x7fff, v25.h, s8
	v_cmp_o_f32_e64 s0, v26, v26
	v_mov_b16_e32 v61.l, v17.h
	v_add3_u32 v24, v30, v24, 0x7fff
	v_add3_u32 v25, v26, v29, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v26.l, v16.h
	v_mov_b16_e32 v26.h, v61.h
	v_and_b32_e32 v29, 1, v61
	v_mov_b16_e32 v61.l, v19.h
	v_cndmask_b16 v25.l, 0x7fff, v24.h, s7
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s0
	v_and_b32_e32 v24, 1, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v31, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v17, v29, 0x7fff
	v_cmp_o_f32_e64 s0, v17, v17
	v_and_b32_e32 v30, 1, v61
	v_add3_u32 v17, v16, v24, 0x7fff
	v_mov_b16_e32 v24.l, v26.h
	v_mov_b16_e32 v24.h, v61.h
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s0
	v_cmp_o_f32_e64 s0, v16, v16
	v_cmp_o_f32_e64 s7, v19, v19
	v_mov_b16_e32 v61.l, v20.h
	v_and_b32_e32 v16, 1, v24
	v_add3_u32 v24, v19, v30, 0x7fff
	v_mov_b16_e32 v30.l, v18.h
	v_mov_b16_e32 v30.h, v61.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.l, 0x7fff, v17.h, s0
	v_add3_u32 v16, v26, v16, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v24.h, s7
	v_and_b32_e32 v17, 1, v30
	v_and_b32_e32 v24, 1, v61
	v_cmp_o_f32_e64 s0, v26, v26
	v_mov_b16_e32 v26.l, v21.h
	v_mov_b16_e32 v26.h, v61.h
	v_mov_b16_e32 v61.l, v23.h
	v_add3_u32 v17, v18, v17, 0x7fff
	v_add3_u32 v24, v20, v24, 0x7fff
	v_cmp_o_f32_e64 s7, v20, v20
	v_cmp_o_f32_e64 s8, v18, v18
	v_cndmask_b16 v19.l, 0x7fff, v16.h, s0
	v_and_b32_e32 v16, 1, v26
	v_and_b32_e32 v20, 1, v61
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s2
	v_cndmask_b32_e64 v8, 0, v8, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v24.h, s7
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s8
	v_add3_u32 v16, v21, v16, 0x7fff
	v_add3_u32 v17, v23, v20, 0x7fff
	v_mov_b16_e32 v61.l, v9.h
	v_cmp_o_f32_e64 s7, v21, v21
	v_mov_b16_e32 v20.l, v8.h
	v_mov_b16_e32 v20.h, v61.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s0, v23, v23
	v_and_b32_e32 v21, 1, v61
	v_cndmask_b16 v17.l, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v61.l, v11.h
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s0
	v_add3_u32 v20, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_add3_u32 v9, v8, v16, 0x7fff
	v_mov_b16_e32 v16.l, v10.h
	v_mov_b16_e32 v16.h, v61.h
	v_and_b32_e32 v21, 1, v61
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s0, v8, v8
	v_and_b32_e32 v8, 1, v16
	v_add3_u32 v16, v11, v21, 0x7fff
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v61.l, v13.h
	v_mov_b16_e32 v21.l, v12.h
	v_mov_b16_e32 v21.h, v61.h
	v_cndmask_b16 v20.l, 0x7fff, v9.h, s0
	v_add3_u32 v8, v10, v8, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v16.h, s7
	v_and_b32_e32 v16, 1, v61
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s0, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v15, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v21
	v_add3_u32 v15, v13, v16, 0x7fff
	v_mov_b16_e32 v16.l, v14.h
	v_mov_b16_e32 v16.h, v61.h
	v_mov_b16_e32 v61.l, v10.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	v_cmp_o_f32_e64 s8, v12, v12
	v_cndmask_b16 v11.l, 0x7fff, v8.h, s0
	v_and_b32_e32 v8, 1, v16
	v_and_b32_e32 v13, 1, v61
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v61.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v44, v41, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v15.h, s7
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	v_add3_u32 v8, v14, v8, 0x7fff
	v_add3_u32 v9, v10, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_cmp_o_f32_e64 s7, v14, v14
	v_mov_b16_e32 v10.l, v0.h
	v_mov_b16_e32 v10.h, v61.h
	v_and_b32_e32 v13, 1, v61
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s2
	v_cndmask_b32_e64 v3, 0, v3, s2
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v46, v41
	v_div_fixup_f32 v4, v22, v62, v4
	v_div_fixup_f32 v5, v34, v62, v5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s0
	v_cndmask_b16 v9.l, 0x7fff, v8.h, s7
	v_and_b32_e32 v8, 1, v10
	v_add3_u32 v10, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s0, v1, v1
	v_mov_b16_e32 v1.l, v2.h
	v_mov_b16_e32 v1.h, v61.h
	v_mov_b16_e32 v61.l, v3.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v33, v62, v6
	v_div_fixup_f32 v7, v35, v62, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v0, v8, 0x7fff
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s0
	v_cmp_o_f32_e64 s0, v0, v0
	v_and_b32_e32 v0, 1, v1
	v_and_b32_e32 v1, 1, v61
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s2
	v_cndmask_b32_e64 v4, 0, v4, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v10.l, 0x7fff, v8.h, s0
	v_mov_b16_e32 v8.h, v61.h
	v_add3_u32 v1, v3, v1, 0x7fff
	v_mov_b16_e32 v61.l, v5.h
	v_mov_b16_e32 v8.l, v4.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s0, v3, v3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v7, s2
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v7, 1, v61
	v_and_b32_e32 v8, 1, v8
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v61.h
	v_mov_b16_e32 v61.l, v3.h
	v_add3_u32 v0, v2, v0, 0x7fff
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s0
	v_cmp_o_f32_e64 s0, v2, v2
	v_add3_u32 v2, v4, v8, 0x7fff
	v_and_b32_e32 v8, 1, v13
	v_and_b32_e32 v13, 1, v61
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s2, v5, v5
	v_cmp_o_f32_e64 s7, v4, v4
	v_add3_u32 v4, v6, v8, 0x7fff
	v_add3_u32 v5, v3, v13, 0x7fff
	v_cmp_o_f32_e64 s8, v3, v3
	v_cmp_o_f32_e64 s9, v6, v6
	v_cndmask_b16 v1.l, 0x7fff, v0.h, s0
	v_cndmask_b16 v0.h, 0x7fff, v7.h, s2
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s7
	v_cndmask_b16 v2.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v4.h, s9
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v36, 1, v60
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v4, v38, v28, s1
	v_cndmask_b32_e64 v6, v27, v25, s1
	v_cndmask_b32_e64 v8, v29, v18, s1
	v_cndmask_b32_e64 v13, v17, v19, s1
	v_cndmask_b32_e64 v14, v19, v17, s1
	v_cndmask_b32_e64 v17, v0, v10, s1
	v_cndmask_b32_e64 v0, v10, v0, s1
	v_cndmask_b32_e64 v15, v12, v20, s1
	v_cndmask_b32_e64 v12, v20, v12, s1
	v_cndmask_b32_e64 v16, v9, v11, s1
	v_cndmask_b32_e64 v9, v11, v9, s1
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v35, s27, v59
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v7, v18, v29, s1
	v_cndmask_b32_e64 v18, v2, v1, s1
	v_cndmask_b32_e64 v1, v1, v2, s1
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v22, 16, v36
	s_mov_b32 s0, 0x76543210
	v_or_b32_e32 v33, 32, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b32_e64 v3, v28, v38, s1
	v_cndmask_b32_e64 v5, v25, v27, s1
	v_permlanex16_b32 v2, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v14, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v12, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v36
	.loc	1 1049 36                       ; attention.py:1049:36
	v_permlanex16_b32 v19, v1, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s27, v22
	v_cmp_gt_i32_e64 s5, s27, v36
	v_cmp_gt_i32_e64 s3, s27, v33
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v3, v57
	v_perm_b32 v1, v2, v3, v58
	v_perm_b32 v2, v4, v5, v57
	v_perm_b32 v3, v4, v5, v58
	v_perm_b32 v4, v6, v7, v57
	v_perm_b32 v5, v6, v7, v58
	v_perm_b32 v6, v8, v13, v57
	v_perm_b32 v7, v8, v13, v58
	v_perm_b32 v12, v14, v17, v57
	v_perm_b32 v13, v14, v17, v58
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v17, v35, v22, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v15, v57
	v_perm_b32 v9, v10, v15, v58
	v_perm_b32 v10, v11, v16, v57
	v_perm_b32 v11, v11, v16, v58
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v35, v36, 1
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s27, v34
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v14, v19, v18, v57
	v_perm_b32 v15, v19, v18, v58
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v35, v33, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s6, vcc_lo
	s_and_b32 s0, s6, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v35, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s6, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s0
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s6, s4
	s_mov_b32 s27, 0x31027000
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[24:27], 0 offen
	buffer_store_b128 v[4:7], v17, s[24:27], 0 offen
	buffer_store_b128 v[8:11], v18, s[24:27], 0 offen
	buffer_store_b128 v[12:15], v19, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp34:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 148
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 148
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8888
; TotalNumSgprs: 42
; NumVgprs: 148
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 148
; Occupancy: 9
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     148
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
