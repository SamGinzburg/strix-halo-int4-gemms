	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b32 s33, s[0:1], 0x68
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v41, 1, v0
	s_load_b256 s[12:19], s[0:1], 0x0
	v_dual_mov_b32 v75, 0x7632 :: v_dual_lshlrev_b32 v46, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s36, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v79, 0xff800000 :: v_dual_and_b32 v40, 16, v46
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s22, s4, s36
	v_dual_mov_b32 v52, 0x5410 :: v_dual_and_b32 v47, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v49, v41, 16, v47
	v_bfe_u32 v50, v0, 4, 1
	v_bfe_i32 v58, v0, 3, 1
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s34, v41
	s_mul_i32 s5, s34, s22
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v40
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s25, s13, 0xffff
	s_mov_b32 s24, s12
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v41, s36, v41
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x20
	s_load_b64 s[20:21], s[0:1], 0x38
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v40, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v49
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[40:41], null, s34, v41, v[40:41]
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v51, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	s_mov_b32 s4, 0
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s11, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[42:45], v1, s[24:27], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s22, v49
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s25, s19, 0xffff
	s_mov_b32 s24, s18
	s_mov_b32 s5, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v53, 1, v0
	v_and_b32_e32 v55, 24, v0
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v57, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v54, 56, v0
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v56, 7, v0
	buffer_load_u16 v48, v1, s[24:27], 0 offen
	v_mov_b32_e32 v26, v24
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v17, v24
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v57, 48, v57
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v60, v53, 30, v50
	v_xor_b32_e32 v55, v46, v55
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v46, 48, v46
	v_and_b32_e32 v62, 24, v53
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v59, 1, v54
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v58, 0x210, v58
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v76, 2, v60
	v_xor_b32_e32 v46, v46, v54
	v_lshl_or_b32 v57, v56, 6, v57
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v63, 1, v50
	v_lshl_or_b32 v47, v47, 5, v62
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v59, s36, v59
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v61, 3, v56
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v77, 4, v76
	v_lshl_or_b32 v46, v56, 9, v46
	v_xor_b32_e32 v65, v57, v58
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v57, 0, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v54, s3, 10, v63
	v_xor_b32_e32 v62, 8, v47
	v_xor_b32_e32 v63, 16, v47
	v_xor_b32_e32 v64, 24, v47
	v_or_b32_e32 v58, 3, v59
	v_mul_lo_u32 v47, s35, v59
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v74, 16, v0
	v_mov_b32_e32 v14, v24
	v_xor_b32_e32 v60, 8, v55
	v_or_b32_e32 v66, 2, v59
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s35, v61
	v_xor_b32_e32 v41, 0x90, v46
	v_xor_b32_e32 v67, 0x120, v46
	v_xor_b32_e32 v68, 0x1b0, v46
	v_xor_b32_e32 v69, 16, v65
	v_xor_b32_e32 v70, 32, v65
	v_xor_b32_e32 v71, 48, v65
	v_xor_b32_e32 v72, 0x420, v65
	v_xor_b32_e32 v73, 0x430, v65
	v_xor_b32_e32 v78, 0x410, v65
	v_add_nc_u32_e32 v61, 0, v46
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v80, s35, v58
	v_dual_mov_b32 v22, v24 :: v_dual_lshlrev_b32 v53, 4, v56
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v56, 0, v60
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v60, 0, v64
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v59, 0, v63
	v_dual_mov_b32 v15, v24 :: v_dual_lshlrev_b32 v64, 1, v47
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s33, 0x3fb8aa3b
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v81, s35, v66
	v_add_lshl_u32 v63, v47, s35, 1
	v_add_nc_u32_e32 v66, 0, v67
	v_add_nc_u32_e32 v67, 0, v68
	v_add_nc_u32_e32 v68, 0, v69
	v_add_nc_u32_e32 v69, 0, v70
	v_add_nc_u32_e32 v70, 0, v71
	v_add_nc_u32_e32 v71, 0, v72
	v_add_nc_u32_e32 v72, 0, v73
	v_add_nc_u32_e32 v73, 0, v78
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v74
	v_dual_mov_b32 v9, v24 :: v_dual_lshlrev_b32 v74, 1, v80
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v58, 0, v62
	v_add_nc_u32_e32 v62, 0, v65
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v65, 0, v41
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v39, s11 :: v_dual_mov_b32 v38, s10
	v_dual_mov_b32 v37, s9 :: v_dual_mov_b32 v36, s8
	v_dual_mov_b32 v35, s7 :: v_dual_mov_b32 v34, s6
	v_dual_mov_b32 v33, s5 :: v_dual_mov_b32 v32, s4
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v55, 0, v55
	s_movk_i32 s23, 0xffe0
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s29, 0xffff
	s_and_b32 s17, s17, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s33, s35, 6
	s_lshl_b32 s34, s34, 5
	s_mov_b32 s24, s14
	s_mov_b32 s25, s15
	s_mov_b32 s15, 0x76543210
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v46, v76, v42
	ds_bpermute_b32 v42, v77, v42
	ds_bpermute_b32 v47, v76, v43
	ds_bpermute_b32 v78, v77, v43
	ds_bpermute_b32 v82, v76, v44
	ds_bpermute_b32 v83, v77, v44
	ds_bpermute_b32 v80, v76, v45
	ds_bpermute_b32 v77, v77, v45
	v_cndmask_b32_e64 v43, 0x1054, v52, s0
	v_cndmask_b32_e64 v44, 0x3276, v75, s0
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v75, 1, v81
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v44, v44, 8, v44
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v48
	v_lshl_or_b32 v48, v43, 8, v43
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v41, v42, v46, s0
	v_cndmask_b32_e64 v43, v46, v42, s0
	s_delay_alu instid0(VALU_DEP_3)
	v_and_b32_e32 v46, 0x540054, v48
	v_and_b32_e32 v48, 0x760076, v44
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v42, v78, v47, s0
	v_cndmask_b32_e64 v44, v47, v78, s0
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v76, s3, v45
	v_lshl_or_b32 v52, v46, 4, v46
	v_lshl_or_b32 v78, v48, 4, v48
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v45, v83, v82, s0
	v_cndmask_b32_e64 v47, v82, v83, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v46, v77, v80, s0
	v_cndmask_b32_e64 v48, v80, v77, s0
	v_and_b32_e32 v77, 0x5040504, v52
	v_and_b32_e32 v78, 0x7060706, v78
	v_mov_b32_e32 v52, v24
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v80, 0x80000000, v40 :: v_dual_add_nc_u32 v81, v64, v53
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v134, v52 :: v_dual_add_nc_u32 v83, v75, v53
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s0, 0xff800000, v79
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[86:89], v80, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v52, 0x80000000, v81, s1
	v_cndmask_b32_e64 v81, 0x80000000, v83, s1
	v_mov_b16_e32 v85.h, 0
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s23, s23, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v55, v[86:87]
	ds_store_b64 v56, v[88:89]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[106:109], v57 offset1:1
	ds_load_2addr_stride64_b64 v[110:113], v58 offset1:1
	ds_load_2addr_stride64_b64 v[114:117], v59 offset1:1
	ds_load_2addr_stride64_b64 v[118:121], v60 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xe
	buffer_load_u16 v129, v54, s[28:31], 0 offen
	buffer_load_u16 v130, v54, s[28:31], 0 offen offset:4
	buffer_load_u16 v131, v54, s[28:31], 0 offen offset:8
	buffer_load_u16 v132, v54, s[28:31], 0 offen offset:12
	buffer_load_u16 v133, v54, s[28:31], 0 offen offset:16
	buffer_load_u16 v135, v54, s[28:31], 0 offen offset:20
	buffer_load_u16 v136, v54, s[28:31], 0 offen offset:24
	buffer_load_u16 v137, v54, s[28:31], 0 offen offset:28
	buffer_load_u16 v138, v54, s[28:31], 0 offen offset:32
	buffer_load_u16 v139, v54, s[28:31], 0 offen offset:36
	buffer_load_u16 v140, v54, s[28:31], 0 offen offset:40
	buffer_load_u16 v141, v54, s[28:31], 0 offen offset:44
	buffer_load_u16 v142, v54, s[28:31], 0 offen offset:48
	buffer_load_u16 v143, v54, s[28:31], 0 offen offset:52
	buffer_load_u16 v144, v54, s[28:31], 0 offen offset:56
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v123.h, v85.h
	v_mov_b16_e32 v127.h, v85.h
	v_mov_b16_e32 v122.h, v85.h
	v_mov_b16_e32 v125.h, v85.h
	v_mov_b16_e32 v124.h, v85.h
	v_mov_b16_e32 v126.h, v85.h
	v_mov_b16_e64 v128.h, v85.h
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s23, 0x1e0
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[106:107], v[41:42], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[108:109], v[41:42], v[32:39] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v106, v54, s[28:31], 0 offen offset:60
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[110:111], v[45:46], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[112:113], v[45:46], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[114:115], v[43:44], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[116:117], v[43:44], v[94:101] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[86:93], v[118:119], v[47:48], v[86:93] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[94:101], v[120:121], v[47:48], v[94:101] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v107, v86
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v82, v63, v53
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v111, v90
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v84, v74, v53
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v108, v87
	v_cvt_f32_i32_e32 v109, v88
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v80, 0x80000000, v82, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v110, v89
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v82, 0x80000000, v84, s1
	s_clause 0x1
	buffer_load_b128 v[102:105], v81, s[16:19], 0 offen
	buffer_load_b128 v[81:84], v82, s[16:19], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v112, v91
	v_cvt_f32_i32_e32 v113, v92
	v_cvt_f32_i32_e32 v114, v93
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[86:89], v80, s[16:19], 0 offen
	buffer_load_b128 v[90:93], v52, s[16:19], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v116, v95
	v_cvt_f32_i32_e32 v117, v96
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v53, s33, v53
	v_add_nc_u32_e32 v40, s34, v40
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v115, v94
	v_cvt_f32_i32_e32 v118, v97
	v_cvt_f32_i32_e32 v119, v98
	v_cvt_f32_i32_e32 v120, v99
	v_cvt_f32_i32_e32 v121, v100
	v_cvt_f32_i32_e32 v145, v101
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v54, 64, v54
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v52.h, v85.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v95.l, v102.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v95.h, v81.l
	v_mov_b16_e32 v81.l, v102.h
	v_mov_b16_e32 v99.l, v104.l
	v_mov_b16_e32 v99.h, v83.l
	v_mov_b16_e32 v83.l, v104.h
	v_mov_b16_e32 v101.h, v84.l
	v_mov_b16_e32 v84.l, v105.h
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v94.h, v86.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v86.l, v90.h
	v_mov_b16_e32 v96.h, v87.l
	v_mov_b16_e32 v87.l, v91.h
	v_mov_b16_e32 v96.l, v91.l
	v_mov_b16_e32 v98.h, v88.l
	v_mov_b16_e32 v88.l, v92.h
	v_mov_b16_e32 v98.l, v92.l
	v_mov_b16_e32 v100.l, v93.l
	v_mov_b16_e32 v100.h, v89.l
	v_mov_b16_e32 v89.l, v93.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v91, v76, v107
	v_mul_f32_e32 v92, v76, v108
	v_mul_f32_e32 v93, v76, v109
	v_mul_f32_e32 v102, v76, v110
	v_mul_f32_e32 v104, v76, v112
	v_mul_f32_e32 v107, v76, v114
	v_mul_f32_e32 v109, v76, v116
	v_mul_f32_e32 v110, v76, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v116, 16, v129
	v_lshlrev_b32_e32 v117, 16, v130
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v97.l, v103.l
	v_mov_b16_e32 v97.h, v82.l
	v_mov_b16_e32 v82.l, v103.h
	v_mov_b16_e32 v101.l, v105.l
	v_mov_b16_e32 v94.l, v90.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v103, v76, v111
	v_mul_f32_e32 v105, v76, v113
	v_dual_mul_f32 v108, v76, v115 :: v_dual_lshlrev_b32 v129, 16, v136
	v_mul_f32_e32 v111, v76, v118
	v_mul_f32_e32 v112, v76, v119
	v_dual_mul_f32 v113, v76, v120 :: v_dual_lshlrev_b32 v130, 16, v137
	v_mul_f32_e32 v114, v76, v121
	v_dual_mul_f32 v115, v76, v145 :: v_dual_lshlrev_b32 v118, 16, v131
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v119, 16, v132
	v_lshlrev_b32_e32 v120, 16, v133
	v_lshlrev_b32_e32 v121, 16, v135
	v_lshlrev_b32_e32 v131, 16, v138
	v_lshlrev_b32_e32 v132, 16, v139
	v_lshlrev_b32_e32 v133, 16, v140
	.loc	1 890 30                        ; attention.py:890:30
	v_dual_mov_b32 v80, v86 :: v_dual_lshlrev_b32 v135, 16, v141
	v_dual_mov_b32 v90, v84 :: v_dual_lshlrev_b32 v137, 16, v143
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v84, v91, v116
	v_mul_f32_e32 v86, v92, v117
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v136, 16, v142
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v91, v93, v118 :: v_dual_lshlrev_b32 v138, 16, v144
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v92, v102, v119 :: v_dual_mul_f32 v93, v103, v120
	v_mul_f32_e32 v102, v104, v121
	v_mul_f32_e32 v103, v105, v129
	v_dual_mul_f32 v105, v108, v131 :: v_dual_mul_f32 v108, v110, v133
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v61, v[94:95], v[80:81] offset1:8
	v_mov_b32_e32 v81, v87
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v80, 0xff800000, v84, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v104, v107, v130 :: v_dual_mul_f32 v107, v109, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v84, 0xff800000, v86, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v109, v111, v135
	v_mul_f32_e32 v111, v113, v137
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, 0xff800000, v91, s2
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v65, v[96:97], v[81:82] offset1:8
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v81, v80, v84
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v104, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v106, v115, v106
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v102, s2
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v110, v112, v136
	v_mul_f32_e32 v112, v114, v138
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, 0xff800000, v92, s2
	v_cndmask_b32_e64 v114, 0xff800000, v93, s2
	v_cndmask_b32_e64 v117, 0xff800000, v107, s2
	v_cndmask_b32_e64 v118, 0xff800000, v108, s2
	v_cndmask_b32_e64 v119, 0xff800000, v109, s2
	v_cndmask_b32_e64 v110, 0xff800000, v110, s2
	v_cndmask_b32_e64 v111, 0xff800000, v111, s2
	v_cndmask_b32_e64 v112, 0xff800000, v112, s2
	v_cndmask_b32_e64 v120, 0xff800000, v106, s2
	v_cndmask_b32_e64 v121, 0xff800000, v103, s2
	v_cndmask_b32_e64 v130, 0xff800000, v105, s2
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v82, v88
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v86, v113, v114, v115
	v_max3_f32 v87, v117, v118, v119
	v_max3_f32 v88, v110, v111, v112
	v_max3_f32 v131, v121, v129, v130
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v66, v[98:99], v[82:83] offset1:8
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v81, v81, v116, v86
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v67, v[100:101], v[89:90] offset1:8
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v82, v87, v88, v120
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[86:89], v62
	ds_load_b128 v[94:97], v71
	ds_load_b128 v[90:93], v68
	ds_load_b128 v[106:109], v68 offset:2048
	ds_load_b128 v[102:105], v62 offset:2048
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v81, v81, v131, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v82, v81, s15, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v81, v79, v81, v82
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v112, v112, v81
	v_sub_f32_e32 v82, v84, v81
	v_sub_f32_e32 v83, v116, v81
	v_sub_f32_e32 v98, v114, v81
	v_sub_f32_e32 v99, v115, v81
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v112, v112
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v100, v121, v81
	v_sub_f32_e32 v101, v129, v81
	v_sub_f32_e32 v116, v118, v81
	v_sub_f32_e32 v118, v120, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, 0, v112, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v84, v113, v81
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v113, v79, v81
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v79, v82
	v_exp_f32_e32 v82, v83
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v52.l, v132.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v83, v84
	v_exp_f32_e32 v84, v98
	v_exp_f32_e32 v98, v99
	v_exp_f32_e32 v99, v100
	v_exp_f32_e32 v100, v101
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v52, 1, v52
	v_cmp_o_f32_e64 s14, v132, v132
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s2
	v_cndmask_b32_e64 v82, 0, v82, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v115, v117, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v83, 0, v83, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v80, v80, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v84, 0, v84, s2
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v123.l, v82.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v130, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v85.l, v79.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v100, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v124.l, v84.h
	v_and_b32_e32 v123, 1, v123
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v101, v114
	v_exp_f32_e32 v114, v116
	v_exp_f32_e32 v116, v118
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v98, s2
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v119, v81
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v99, s2
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v82, v83
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v80, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v79, v79
	v_and_b32_e32 v124, 1, v124
	v_mov_b16_e32 v125.l, v119.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v114, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v114, 1, v85
	v_mov_b16_e32 v85.l, v83.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v101, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v125, 1, v125
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v119, v120
.Ltmp15:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v80, 0, v80, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s10, v119, v119
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v100, v84, v118
.Ltmp17:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v119, v119, v125, 0x7fff
	v_cmp_o_f32_e64 s8, v84, v84
	v_mov_b16_e32 v122.l, v80.h
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v98, v80, v79
.Ltmp19:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v80, v80
	v_add3_u32 v79, v79, v114, 0x7fff
	v_add3_u32 v84, v84, v124, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v139, v98, v99 :: v_dual_and_b32 v122, 1, v122
.Ltmp21:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v84.l, 0x7fff, v119.h, s10
	v_cmp_o_f32_e64 s9, v120, v120
	v_cmp_o_f32_e64 s5, v83, v83
	v_add3_u32 v80, v80, v122, 0x7fff
	v_and_b32_e32 v122, 1, v85
	v_mov_b16_e32 v85.l, v118.h
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v130, v113
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v82, v82
	v_cndmask_b16 v79.l, 0x7fff, v80.h, s4
	v_add3_u32 v83, v83, v122, 0x7fff
	v_and_b32_e32 v80, 1, v85
	v_mov_b16_e32 v85.l, v120.h
	v_cmp_o_f32_e64 s7, v118, v118
	v_add3_u32 v82, v82, v123, 0x7fff
	v_cndmask_b16 v83.l, 0x7fff, v84.h, s8
	v_add3_u32 v80, v118, v80, 0x7fff
	v_and_b32_e32 v119, 1, v85
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v82.l, 0x7fff, v82.h, s6
	v_cndmask_b16 v82.h, 0x7fff, v83.h, s5
	v_cndmask_b16 v83.h, 0x7fff, v80.h, s7
	v_add3_u32 v120, v120, v119, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v117
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v126.l, v121.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v116, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v79.h, 0x7fff, v79.h, s3
	v_cndmask_b16 v84.h, 0x7fff, v120.h, s9
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v113, s2
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v81
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v132, v138
.Ltmp23:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s11, v121, v121
	v_permlanex16_b32 v80, v84, s15, 0xfedcba98 op_sel:[1,0]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v115, s2
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v52, v132, v52, 0x7fff
	v_mov_b16_e64 v85.l, v135.h
	v_mov_b16_e64 v127.l, v129.h
	v_perm_b32 v124, v80, v84, v77
	v_perm_b32 v125, v80, v84, v78
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v80, 0, v130, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v110, v110, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v126, 1, v126
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v100, v101
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v135, v135
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v80
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v143, v121, v126, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v80
	v_mul_f32_e32 v9, v9, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v122, v82, s15, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v80
	v_mul_f32_e32 v19, v19, v80
	v_mul_f32_e32 v13, v13, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v127, 1, v127
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v110, s2
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v121, v135
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v111, v111
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v121, v79, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v120, v122, v82, v77
	v_mov_b16_e64 v128.l, v131.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v80
	v_mul_f32_e32 v26, v26, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v118, v121, v79, v77
	v_perm_b32 v119, v121, v79, v78
	v_permlanex16_b32 v79, v83, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v121, v122, v82, v78
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v111, s2
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v111, v129, v136
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v128, 1, v128
	v_perm_b32 v122, v79, v83, v77
	v_perm_b32 v123, v79, v83, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v112, v131, v137 :: v_dual_add_f32 v141, v110, v111
	v_mov_b32_e32 v79, v81
	v_add_f32_e32 v81, v139, v140
.Ltmp31:
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v140.l, 0x7fff, v52.h, s14
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v142, v112, v113 :: v_dual_mul_f32 v11, v11, v80
.Ltmp33:
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[110:113], v71 offset:2048
	ds_load_b128 v[98:101], v72
	ds_load_b128 v[114:117], v72 offset:2048
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v80
	v_dual_mul_f32 v31, v31, v80 :: v_dual_add_f32 v82, v141, v142
	v_mul_f32_e32 v15, v15, v80
	v_mul_f32_e32 v16, v16, v80
	v_mul_f32_e32 v18, v18, v80
	v_mul_f32_e32 v20, v20, v80
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v81, v82
.Ltmp35:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v82, 1, v85
	v_mov_b16_e64 v85.l, v136.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v80
	v_mul_f32_e32 v21, v21, v80
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v81, v52, s15, 0xfedcba98 op_sel:[1,0]
.Ltmp37:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v82, v135, v82, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v80
	v_mul_f32_e32 v8, v8, v80
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v81
.Ltmp39:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v81, 1, v85
	v_mov_b16_e64 v85.l, v137.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v30, v30, v80
	v_mul_f32_e32 v10, v10, v80
	v_mul_f32_e32 v12, v12, v80
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v14, v14, v80 :: v_dual_and_b32 v135, 1, v85
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v85.l, v138.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v136, v136
	v_cndmask_b16 v83.h, 0x7fff, v82.h, s0
	v_add3_u32 v81, v136, v81, 0x7fff
	v_and_b32_e32 v82, 1, v85
	v_cmp_o_f32_e64 s12, v129, v129
	v_cmp_o_f32_e64 s13, v131, v131
	v_add3_u32 v144, v129, v127, 0x7fff
	v_add3_u32 v145, v131, v128, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v62 offset:1024
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[86:93], v[118:125], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[86:89], v69
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[94:101], v[118:125], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[94:97], v62 offset:3072
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[102:109], v[118:125], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[102:105], v69 offset:2048
	ds_load_b128 v[90:93], v70
	ds_load_b128 v[106:109], v70 offset:2048
	ds_load_b128 v[130:133], v73
	ds_load_b128 v[98:101], v73 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s4, v137, v137
	v_cmp_o_f32_e64 s5, v138, v138
	v_cndmask_b16 v84.h, 0x7fff, v81.h, s3
	v_add3_u32 v81, v137, v135, 0x7fff
	v_add3_u32 v82, v138, v82, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v80
	v_mul_f32_e32 v2, v2, v80
	v_mul_f32_e32 v4, v4, v80
	v_mul_f32_e32 v5, v5, v80
	v_mul_f32_e32 v6, v6, v80
	v_mul_f32_e32 v7, v7, v80
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v83.l, 0x7fff, v143.h, s11
	v_cndmask_b16 v84.l, 0x7fff, v144.h, s12
	v_cndmask_b16 v139.l, 0x7fff, v145.h, s13
	v_cndmask_b16 v139.h, 0x7fff, v81.h, s4
	v_cndmask_b16 v140.h, 0x7fff, v82.h, s5
	v_permlanex16_b32 v85, v83, s15, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[110:117], v[118:125], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v113, v84, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v81, v139, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v82, v140, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v110, v85, v83, v77
	v_perm_b32 v111, v85, v83, v78
	v_perm_b32 v112, v113, v84, v77
	v_perm_b32 v113, v113, v84, v78
	v_perm_b32 v114, v81, v139, v77
	v_perm_b32 v115, v81, v139, v78
	v_perm_b32 v116, v82, v140, v77
	v_perm_b32 v117, v82, v140, v78
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v52, v134, v80
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[86:93], v[110:117], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[126:133], v[110:117], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[102:109], v[110:117], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[94:101], v[110:117], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v33, null, v52, v52, v24
	v_div_scale_f32 v34, null, v52, v52, v25
	v_div_scale_f32 v36, null, v52, v52, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v33
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v24, v52, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v42, s0, v25, v52, v25
	v_div_scale_f32 v40, null, v52, v52, v27
	v_div_scale_f32 v54, s4, v27, v52, v27
	v_fma_f32 v32, -v33, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v34, v37, 1.0
	v_rcp_f32_e32 v43, v40
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v36, v38, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v52
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v32, v35
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s3, v26, v52, v26
	v_fmac_f32_e32 v38, v44, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v44, v39, v35 :: v_dual_mul_f32 v45, v42, v37
	v_fma_f32 v46, -v40, v43, 1.0
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s23, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v33, v44, v39
	v_fma_f32 v53, -v34, v45, v42
	v_mul_f32_e32 v47, v41, v38
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, 16, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v48, v35 :: v_dual_fmac_f32 v45, v53, v37
	v_div_scale_f32 v48, null, v52, v52, v28
	v_div_scale_f32 v53, null, v52, v52, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v34, v45, v42
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v33, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v33, v33, v35, v44
	v_div_scale_f32 v35, null, v52, v52, v29
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v48, v42, 1.0
	v_fmac_f32_e32 v43, v46, v43
	v_fma_f32 v46, -v36, v47, v41
	v_div_fixup_f32 v24, v33, v52, v24
	v_rcp_f32_e32 v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v44, v42 :: v_dual_mul_f32 v39, v54, v43
	v_fmac_f32_e32 v47, v46, v38
	v_div_fmas_f32 v34, v34, v37, v45
	v_div_scale_f32 v45, null, v52, v52, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v40, v39, v54
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v52, v25
	v_fma_f32 v34, -v36, v47, v41
	v_div_scale_f32 v41, null, v52, v52, v30
	v_fmac_f32_e32 v39, v37, v43
	v_fma_f32 v37, -v35, v33, 1.0
	v_div_scale_f32 v36, s0, v28, v52, v28
	v_div_fmas_f32 v34, v34, v38, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v39, v54
	v_fmac_f32_e32 v33, v37, v33
	v_rcp_f32_e32 v37, v41
	v_mul_f32_e32 v40, v36, v42
	v_rcp_f32_e32 v47, v45
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v44, s3, v29, v52, v29
	v_div_fmas_f32 v38, v38, v43, v39
	v_fma_f32 v39, -v48, v40, v36
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v26, v34, v52, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v41, v37, 1.0
	v_div_fixup_f32 v27, v38, v52, v27
	v_fmac_f32_e32 v40, v39, v42
	v_div_scale_f32 v39, null, v52, v52, v16
	v_fmac_f32_e32 v37, v46, v37
	v_fma_f32 v46, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v48, v40, v36
	v_div_scale_f32 v38, s4, v30, v52, v30
	v_rcp_f32_e32 v48, v39
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s5, v31, v52, v31
	v_div_fmas_f32 v36, v36, v42, v40
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v42, v46, v47 :: v_dual_mul_f32 v43, v44, v33
	v_div_fixup_f32 v28, v36, v52, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v35, v43, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v34, v33
	v_mul_f32_e32 v34, v38, v37
	v_fma_f32 v35, -v35, v43, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v34, v38
	v_fma_f32 v44, -v39, v48, 1.0
	v_div_fmas_f32 v33, v35, v33, v43
	v_rcp_f32_e32 v35, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v34, v40, v37
	v_fma_f32 v40, -v45, v42, v46
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v43, s0, v16, v52, v16
	v_div_fixup_f32 v29, v33, v52, v29
	v_fma_f32 v33, -v41, v34, v38
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v36, v43, v48
	v_fmac_f32_e32 v42, v40, v47
	v_fma_f32 v38, -v53, v35, 1.0
	v_div_scale_f32 v40, null, v52, v52, v18
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v37, -v39, v36, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v38, v35
	v_rcp_f32_e32 v38, v40
	v_fma_f32 v34, -v45, v42, v46
	v_div_scale_f32 v41, s3, v17, v52, v17
	v_div_scale_f32 v44, null, v52, v52, v19
	v_fmac_f32_e32 v36, v37, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v30, v33, v52, v30
	v_div_fmas_f32 v34, v34, v47, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v40, v38, 1.0
	v_rcp_f32_e32 v37, v44
	v_fma_f32 v33, -v39, v36, v43
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v34, v52, v31
	v_fmac_f32_e32 v38, v45, v38
	v_mul_f32_e32 v42, v41, v35
	v_div_scale_f32 v45, null, v52, v52, v20
	v_div_fmas_f32 v33, v33, v48, v36
	v_div_scale_f32 v39, s4, v18, v52, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v53, v42, v41
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v43, -v44, v37, 1.0
	v_div_fixup_f32 v16, v33, v52, v16
	v_div_scale_f32 v46, null, v52, v52, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v34, v35 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, s0, v19, v52, v19
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v53, v42, v41
	v_fma_f32 v53, -v45, v36, 1.0
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v35, v42
	v_fmac_f32_e32 v36, v53, v36
	v_mul_f32_e32 v34, v39, v38
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v42, -v46, v48, 1.0
	v_div_fixup_f32 v17, v33, v52, v17
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v40, v34, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v47, v43, v37 :: v_dual_fmac_f32 v48, v42, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v44, v47, v43
	v_div_scale_f32 v41, s3, v20, v52, v20
	v_fma_f32 v33, -v40, v34, v39
	v_div_scale_f32 v40, null, v52, v52, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v35, v37
	v_mul_f32_e32 v35, v41, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v38, v34
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v34, -v44, v47, v43
	v_fma_f32 v38, -v45, v35, v41
	v_div_scale_f32 v39, s5, v21, v52, v21
	v_div_scale_f32 v44, null, v52, v52, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v34, v34, v37, v47
	v_div_fixup_f32 v18, v33, v52, v18
	v_fma_f32 v47, -v40, v42, 1.0
	v_fmac_f32_e32 v35, v38, v36
	v_rcp_f32_e32 v37, v44
	v_div_fixup_f32 v19, v34, v52, v19
	v_div_scale_f32 v34, s0, v22, v52, v22
	v_fmac_f32_e32 v42, v47, v42
	v_mul_f32_e32 v43, v39, v48
	v_fma_f32 v33, -v45, v35, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v35
	v_mul_f32_e32 v36, v34, v42
	v_fma_f32 v38, -v46, v43, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v20, v33, v52, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v38, v48
	v_fma_f32 v38, -v44, v37, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v46, v43, v39
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, null, v52, v52, v8
	v_div_scale_f32 v39, s3, v23, v52, v23
	v_div_scale_f32 v46, null, v52, v52, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v45, v39, v37
	v_div_fmas_f32 v35, v35, v48, v43
	v_fma_f32 v43, -v40, v36, v34
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, null, v52, v52, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v52, v21
	v_fmac_f32_e32 v36, v43, v42
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v33, -v44, v45, v39
	v_rcp_f32_e32 v54, v48
	v_fma_f32 v34, -v40, v36, v34
	v_div_scale_f32 v40, null, v52, v52, v10
	v_fmac_f32_e32 v41, v43, v41
	v_fmac_f32_e32 v45, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v42, v36
	v_rcp_f32_e32 v43, v40
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_scale_f32 v42, s0, v9, v52, v9
	v_fma_f32 v36, -v44, v45, v39
	v_div_scale_f32 v33, s4, v8, v52, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v47, v35
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v22, v34, v52, v22
	v_fma_f32 v44, -v40, v43, 1.0
	v_mul_f32_e32 v39, v33, v41
	v_mul_f32_e32 v53, v42, v35
	v_div_fmas_f32 v36, v36, v37, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v52, v10
	v_fma_f32 v37, -v46, v53, v42
	v_fma_f32 v47, -v38, v39, v33
	v_div_fixup_f32 v23, v36, v52, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v36, -v48, v54, 1.0
	v_fmac_f32_e32 v53, v37, v35
	v_div_scale_f32 v37, null, v52, v52, v12
	v_fma_f32 v34, -v40, v45, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v47, v41 :: v_dual_fmac_f32 v54, v36, v54
	v_div_scale_f32 v36, s3, v11, v52, v11
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v53, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v39, v36, v54
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v37, v34, 1.0
	v_div_fixup_f32 v8, v33, v52, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v34, v41, v34
	v_div_fmas_f32 v35, v38, v35, v53
	v_fma_f32 v38, -v40, v45, v44
	v_div_scale_f32 v40, null, v52, v52, v13
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v41, s0, v12, v52, v12
	v_div_fmas_f32 v38, v38, v43, v45
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v33, v41, v34
	v_div_fixup_f32 v9, v35, v52, v9
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v10, v38, v52, v10
	v_fmac_f32_e32 v39, v43, v54
	v_fma_f32 v43, -v37, v33, v41
	v_div_scale_f32 v38, null, v52, v52, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v43, v34
	v_rcp_f32_e32 v44, v38
	v_div_scale_f32 v43, null, v52, v52, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v13, v52, v13
	v_div_fmas_f32 v36, v36, v54, v39
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v39, v35, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v36, v52, v11
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v52, v52, v0
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v52, v52, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s0, v14, v52, v14
	v_div_fixup_f32 v12, v33, v52, v12
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v15, v52, v15
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v52, v52, v2
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v0, v52, v0
	v_fma_f32 v53, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v54, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v55, v48, v37
	v_fmac_f32_e32 v47, v53, v47
	v_div_scale_f32 v53, s5, v1, v52, v1
	v_div_fixup_f32 v13, v35, v52, v13
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v55, v48
	v_mul_f32_e32 v38, v53, v47
	v_fma_f32 v39, -v46, v54, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v55, v36, v37
	v_fma_f32 v36, -v41, v38, v53
	v_fmac_f32_e32 v54, v39, v54
	v_div_scale_f32 v39, s0, v2, v52, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v55, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v54
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v52, v52, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v52, v14
	v_div_fmas_f32 v34, v34, v37, v55
	v_fma_f32 v37, -v41, v38, v53
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v52, v15
	v_div_fixup_f32 v0, v34, v52, v0
	v_div_scale_f32 v34, null, v52, v52, v4
	v_fmac_f32_e32 v36, v41, v54
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v52, v52, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v52, v1
	v_div_fmas_f32 v33, v33, v54, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v52, v52, v5
	v_div_scale_f32 v37, null, v52, v52, v6
	v_div_scale_f32 v38, vcc_lo, v3, v52, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v52, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v54, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s0, v4, v52, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v53, v33, v36 :: v_dual_fmac_f32 v46, v54, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v5, v52, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v6, v52, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v53, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v55, v45, v39 :: v_dual_mul_f32 v56, v48, v41
	v_div_scale_f32 v54, s5, v7, v52, v7
	v_fmac_f32_e32 v53, v47, v36
	v_fma_f32 v38, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v35, v55, v45
	v_fma_f32 v47, -v37, v56, v48
	v_mul_f32_e32 v57, v54, v46
	v_fma_f32 v33, -v34, v53, v33
	v_div_fmas_f32 v38, v38, v42, v43
	v_dual_fmac_f32 v55, v40, v39 :: v_dual_fmac_f32 v56, v47, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v34, -v44, v57, v54
	s_mov_b32 vcc_lo, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_mul_i32 s0, s35, s22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v53
	v_fma_f32 v35, -v35, v55, v45
	v_fmac_f32_e32 v57, v34, v46
	v_fma_f32 v34, -v37, v56, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v33, v52, v4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s35, v49
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v55
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v36, -v44, v57, v54
	v_div_fmas_f32 v34, v34, v41, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v3, v38, v52, v3
	s_mov_b32 s22, 0x7ffffffe
	v_div_fmas_f32 v36, v36, v46, v57
	v_div_fixup_f32 v6, v34, v52, v6
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v34, v33, v50
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v50
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v35, v52, v5
	v_div_fixup_f32 v7, v36, v52, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	v_add_lshl_u32 v38, v33, v50, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s35, v32
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v35, 32, v50
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v24, v41, s[20:23], 0 offen
	buffer_store_b32 v25, v39, s[20:23], 0 offen
	buffer_store_b32 v26, v40, s[20:23], 0 offen
	v_add_nc_u32_e32 v24, 24, v38
	v_add_nc_u32_e32 v25, 32, v38
	v_add_nc_u32_e32 v26, 40, v38
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v40, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[20:23], 0 offen
	buffer_store_b32 v28, v25, s[20:23], 0 offen
	buffer_store_b32 v29, v26, s[20:23], 0 offen
	buffer_store_b32 v30, v39, s[20:23], 0 offen
	buffer_store_b32 v31, v40, s[20:23], 0 offen
	v_add_lshl_u32 v24, v33, v32, 2
	v_add_nc_u32_e32 v25, 0x48, v38
	v_add_nc_u32_e32 v26, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[20:23], 0 offen
	buffer_store_b32 v17, v25, s[20:23], 0 offen
	buffer_store_b32 v18, v26, s[20:23], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s35, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[20:23], 0 offen
	v_add_nc_u32_e32 v18, 0x70, v38
	v_add_nc_u32_e32 v19, 0x78, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[20:23], 0 offen
	v_add_lshl_u32 v16, v33, v35, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[20:23], 0 offen
	buffer_store_b32 v23, v19, s[20:23], 0 offen
	buffer_store_b32 v8, v16, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v50
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[20:23], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s35, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[20:23], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[20:23], 0 offen
	buffer_store_b32 v12, v16, s[20:23], 0 offen
	buffer_store_b32 v13, v17, s[20:23], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v33, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v51
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[20:23], 0 offen
	buffer_store_b32 v15, v9, s[20:23], 0 offen
	buffer_store_b32 v0, v10, s[20:23], 0 offen
	buffer_store_b32 v1, v11, s[20:23], 0 offen
	buffer_store_b32 v2, v12, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v33, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[20:23], 0 offen
	buffer_store_b32 v4, v1, s[20:23], 0 offen
	buffer_store_b32 v5, v2, s[20:23], 0 offen
	buffer_store_b32 v6, v8, s[20:23], 0 offen
	buffer_store_b32 v7, v9, s[20:23], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp40:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 146
		.amdhsa_next_free_sgpr 37
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
		.amdhsa_inst_pref_size 61
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 146
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 37
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7800
; TotalNumSgprs: 39
; NumVgprs: 146
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 39
; NumVGPRsForWavesPerEU: 146
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
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
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     146
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
