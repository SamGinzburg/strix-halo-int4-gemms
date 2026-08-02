	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x60
	s_load_b256 s[24:31], s[0:1], 0x0
	v_dual_mov_b32 v46, 0x5410 :: v_dual_and_b32 v1, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s7, s3, 9
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v1, 4, v1
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s33, s6, s7
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s6, v2
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v3, s33, v2
	v_dual_mov_b32 v32, 0 :: v_dual_and_b32 v39, 0x60, v0
	s_mov_b32 s43, 0x31027000
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v4
	s_mov_b32 s42, 0x7ffffffe
	s_load_b64 s[4:5], s[0:1], 0x70
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v59, 12, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[2:3], null, s36, v3, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s36, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	v_dual_mov_b32 v87, 0xff800000 :: v_dual_and_b32 v50, 16, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_dual_cndmask_b32 v1, 0x80000000, v2 :: v_dual_and_b32 v42, 15, v0
	v_dual_mov_b32 v47, 0x7632 :: v_dual_and_b32 v44, 3, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v38, 2, v0
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v61, 64, v0
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[33:36], v1, s[40:43], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v39
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v62, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v52, v1, v42
	v_dual_mov_b32 v20, v24 :: v_dual_and_b32 v63, 28, v0
	v_bfe_i32 v64, v0, 5, 1
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v70, 1, v59
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s33, v52
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s6, v52
	v_mov_b32_e32 v86, 0xff800000
	s_load_b256 s[16:23], s[0:1], 0x20
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v1, 1, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v49, 3, v0
	v_dual_mov_b32 v25, v24 :: v_dual_lshlrev_b32 v56, 2, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 774 26                        ; attention.py:774:26
	v_lshrrev_b32_e32 v67, 2, v50
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v43, 3, v0
	v_lshrrev_b32_e32 v54, 4, v0
	v_bfe_u32 v53, v0, 4, 1
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v45, v1, s[40:43], 0 offen
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v60, 48, v0
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v58, 3, v42
	v_lshrrev_b32_e32 v69, 2, v39
	.loc	1 773 86                        ; attention.py:773:86
	v_bfe_i32 v48, v0, 0, 1
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v51, 0x70, v0
	v_dual_mov_b32 v22, v24 :: v_dual_lshlrev_b32 v65, 7, v0
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v82, 2, v44
	v_dual_mov_b32 v23, v24 :: v_dual_lshlrev_b32 v72, 1, v61
	v_dual_mov_b32 v9, v24 :: v_dual_and_b32 v74, 0x260, v62
	v_dual_mov_b32 v10, v24 :: v_dual_lshlrev_b32 v73, 8, v59
	v_dual_mov_b32 v12, v24 :: v_dual_and_b32 v59, 0x120, v64
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v75, s6, v38
	v_lshl_or_b32 v44, v44, 5, v63
	v_lshl_or_b32 v39, v39, 2, v70
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	v_dual_mov_b32 v11, v24 :: v_dual_and_b32 v64, 0xfc, v56
	v_dual_mov_b32 v14, v24 :: v_dual_and_b32 v63, 0x300, v62
	v_lshrrev_b32_e32 v61, 5, v61
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v49, 0x78, v49, v67
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v38, 28, v56
	v_dual_mov_b32 v8, v24 :: v_dual_lshlrev_b32 v37, 2, v42
	v_dual_mov_b32 v2, v24 :: v_dual_lshlrev_b32 v77, 1, v53
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s0, 3
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_lshrrev_b32_e32 v71, 1, v60
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_or_b32 v76, s3, 8, v54
	v_or_b32_e32 v78, s7, v43
	v_xor_b32_e32 v43, v56, v69
	v_lshl_or_b32 v42, v42, 5, v70
	v_lshl_or_b32 v60, v60, 6, v58
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v55, 0x7c, v0
	v_bfe_i32 v66, v0, 2, 1
	v_dual_mov_b32 v13, v24 :: v_dual_and_b32 v48, 0x90, v48
	v_dual_mov_b32 v0, v24 :: v_dual_and_b32 v65, 0x700, v65
	v_dual_mov_b32 v4, v24 :: v_dual_add_nc_u32 v67, 0, v72
	v_lshrrev_b32_e32 v51, 2, v51
	v_xor_b32_e32 v44, v44, v59
	v_or_b32_e32 v79, 32, v75
	v_or3_b32 v39, v73, v74, v39
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s7, s39, s8
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s4, s1
	v_or3_b32 v69, v63, v64, v61
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v83, 4, v49
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s4, s7, s4
	v_mov_b32_e32 v1, v24
	v_dual_mov_b32 v40, v24 :: v_dual_add_nc_u32 v61, 0, v42
	v_lshl_or_b32 v59, s3, 10, v77
	v_xor_b32_e32 v70, 8, v42
	v_xor_b32_e32 v77, 16, v42
	v_xor_b32_e32 v80, 24, v42
	v_xor_b32_e32 v71, v60, v71
	v_add_nc_u32_e32 v60, 0, v43
	v_mad_u64_u32 v[42:43], null, s37, v76, v[37:38]
	v_dual_mov_b32 v15, v24 :: v_dual_and_b32 v62, 0x160, v62
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v64, v67, v44
	v_mov_b32_e32 v6, v24
	v_xor_b32_e32 v48, v48, v51
	v_add_nc_u32_e32 v51, 0, v65
	v_or_b32_e32 v72, v44, v72
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e64 s0, s36, v38
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s37, v37
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[43:44], null, s36, v78, v[38:39]
	v_mad_u64_u32 v[37:38], null, s5, v79, s[4:5]
	v_xor_b32_e32 v81, 0x60, v69
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v41, v24
	v_and_or_b32 v63, 0x90, v66, v62
	v_add_nc_u32_e32 v62, v51, v48
	v_xor_b32_e32 v44, 8, v39
	v_xor_b32_e32 v48, 16, v39
	v_xor_b32_e32 v51, 24, v39
	v_xor_b32_e32 v85, 0x240, v72
	v_add_nc_u32_e32 v72, 0, v39
	v_mad_u64_u32 v[38:39], null, s5, v75, s[4:5]
	s_mul_i32 s3, s3, s37
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v75
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_add_u32 v66, s3, 6, v58
	v_add_nc_u32_e32 v75, 0, v81
	v_add_lshl_u32 v81, v37, v82, 2
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s3, 0, v50
	.loc	1 903 13                        ; attention.py:903:13
	v_add_lshl_u32 v82, v38, v82, 2
	v_dual_mov_b32 v7, v24 :: v_dual_add_nc_u32 v78, 0, v48
	v_xor_b32_e32 v73, 32, v69
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v46, 0x1054, v46, s3
	v_cndmask_b32_e64 v47, 0x3276, v47, s3
	v_xor_b32_e32 v74, 64, v69
	v_add_nc_u32_e32 v65, 0, v69
	v_add_nc_u32_e32 v69, 0, v70
	v_lshl_or_b32 v48, v46, 8, v46
	v_lshl_or_b32 v47, v47, 8, v47
	v_add_nc_u32_e32 v70, 0, v77
	v_add_nc_u32_e32 v77, 0, v44
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s6, s38, 0x3fb8aa3b
	v_xor_b32_e32 v84, 16, v63
	v_dual_mov_b32 v57, 0xff800000 :: v_dual_mov_b32 v68, 0xff800000
	v_add_nc_u32_e32 v63, 0, v63
	v_add_nc_u32_e32 v67, v67, v71
	v_add_nc_u32_e32 v71, 0, v80
	v_add_nc_u32_e32 v73, 0, v73
	v_add_nc_u32_e32 v76, 0, v84
	v_add_nc_u32_e32 v79, 0, v51
	v_add_nc_u32_e32 v80, 0, v85
	s_and_b32 s27, s27, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s34, -16
	s_mov_b32 s35, 0x76543210
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	s_and_b32 s29, s29, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s38, s37, 1
	s_lshl_b32 s39, s37, 3
	s_lshl_b32 s36, s36, 4
	s_mov_b32 s44, s16
	s_mov_b32 s48, s20
	s_mov_b32 s24, s18
	s_mov_b32 s45, s17
	s_mov_b32 s49, s21
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s40, s26
	s_mov_b32 s41, s27
	s_mov_b32 s25, s19
	s_mov_b32 s26, s42
	s_mov_b32 s27, s43
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v88, v49, v33
	ds_bpermute_b32 v33, v83, v33
	ds_bpermute_b32 v37, v49, v34
	ds_bpermute_b32 v34, v83, v34
	ds_bpermute_b32 v38, v49, v35
	ds_bpermute_b32 v35, v83, v35
	ds_bpermute_b32 v39, v49, v36
	ds_bpermute_b32 v36, v83, v36
	v_and_b32_e32 v49, 0x760076, v47
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v44, v33, v88, s3
	v_cndmask_b32_e64 v46, v88, v33, s3
	v_and_b32_e32 v33, 0x540054, v48
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v47, v37, v34, s3
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v48, v35, v38, s3
	v_cndmask_b32_e64 v50, v38, v35, s3
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v51, v39, v36, s3
	v_lshl_or_b32 v33, v33, 4, v33
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v45
	v_add_nc_u32_e32 v74, 0, v74
	v_mov_b32_e32 v88, 0xff800000
	v_and_b32_e32 v84, 0x5040504, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 928 41                        ; attention.py:928:41
	v_mul_f32_e32 v83, s6, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v45, v34, v37, s3
	v_lshl_or_b32 v34, v49, 4, v49
	v_cndmask_b32_e64 v49, v36, v39, s3
	v_and_b32_e32 v85, 0x7060706, v34
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v89, 0x80000000, v43, s0
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v36, v32 :: v_dual_max_f32 v109, v86, v86
	v_dual_mov_b32 v33, v32 :: v_dual_cndmask_b32 v90, 0x80000000, v82
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v86, v89, s[40:43], 0 offen
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v34, v32 :: v_dual_cndmask_b32 v91, 0x80000000, v81
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v35, v32 :: v_dual_max_f32 v110, v87, v87
	v_dual_mov_b32 v37, v32 :: v_dual_mov_b32 v96, v41
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v92.l, 0
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v94, 0x80000000, v66, s1
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v93, 0x80000000, v42, s1
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s34, s34, 16
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v66, s38, v66
	v_add_nc_u32_e32 v42, s39, v42
	v_add_nc_u32_e32 v82, 64, v82
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v60, v86
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 964 36                        ; attention.py:964:36
	s_clause 0x1
	buffer_load_b128 v[97:100], v90, s[48:51], 0 offen
	buffer_load_b128 v[101:104], v91, s[48:51], 0 offen
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v91, v59, s[44:47], 0 offen
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[86:87], v61
	ds_load_b64 v[89:90], v69
	ds_load_b64 v[105:106], v70
	ds_load_b64 v[107:108], v71
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v39, v32
	v_mov_b32_e32 v38, v32
	v_mov_b32_e32 v95, v40
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x4
	buffer_load_u16 v115, v59, s[44:47], 0 offen offset:16
	buffer_load_u16 v116, v59, s[44:47], 0 offen offset:20
	buffer_load_u16 v117, v59, s[44:47], 0 offen offset:24
	buffer_load_u16 v111, v59, s[44:47], 0 offen offset:4
	buffer_load_u16 v112, v59, s[44:47], 0 offen offset:8
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v40, v39
	v_mov_b32_e32 v39, v38
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v41, v68, v68 :: v_dual_mov_b32 v38, v37
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v37, v36
	v_mov_b32_e32 v36, v35
	v_mov_b32_e32 v35, v34
	v_mov_b32_e32 v34, v33
	v_mov_b32_e32 v33, v32
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v113, v59, s[44:47], 0 offen offset:12
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[86:87], v[44:45], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[89:90], v[48:49], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[105:106], v[46:47], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[107:108], v[50:51], v[33:40] neg_lo:[1,1,0]
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v90, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v114, v40
	v_cvt_f32_i32_e32 v105, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v108, v39
	v_cvt_f32_i32_e32 v86, v33
	v_cvt_f32_i32_e32 v89, v34
	v_cvt_f32_i32_e32 v106, v37
	v_cvt_f32_i32_e32 v107, v38
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e32 v35, 0xff800000, v97, vcc_lo
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v97, v59, s[44:47], 0 offen offset:28
	.loc	1 964 36                        ; attention.py:964:36
	s_waitcnt vmcnt(8)
	v_cndmask_b32_e32 v40, 0xff800000, v103, vcc_lo
	v_dual_cndmask_b32 v36, 0xff800000, v99 :: v_dual_cndmask_b32 v39, 0xff800000, v101
	v_dual_cndmask_b32 v34, 0xff800000, v100 :: v_dual_cndmask_b32 v33, 0xff800000, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v40
	.loc	1 964 36                        ; attention.py:964:36
	v_dual_cndmask_b32 v38, 0xff800000, v104 :: v_dual_cndmask_b32 v37, 0xff800000, v102
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v36
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v102, v83, v108
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v39
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s3, vcc_lo, s3
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b64 v67, v[33:34], v[37:38] offset0:64 offset1:96
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s10, 0xff800000, v33
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	v_cndmask_b32_e64 v33, 0, 1, s3
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s6, 0xff800000, v35
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s4, vcc_lo, s4
	s_and_b32 s5, vcc_lo, s5
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	ds_store_2addr_b64 v67, v[35:36], v[39:40] offset1:32
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s9, 0xff800000, v34
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	v_cndmask_b32_e64 v34, 0, 1, s4
	v_cndmask_b32_e64 v35, 0, 1, s5
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v38
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s8, vcc_lo, s6
	s_and_b32 s9, vcc_lo, s9
	v_cndmask_b32_e64 v36, 0, 1, s8
	v_or_b16 v100.h, v34.l, v33.l
	v_mov_b16_e32 v33.l, v35.l
	s_and_b32 s6, vcc_lo, s11
	v_cndmask_b32_e64 v101, 0, 1, s9
	v_cndmask_b32_e64 v99, 0, 1, s6
	v_mov_b16_e32 v34.l, v36.l
	v_lshlrev_b16 v33.l, 8, v33.l
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s7, 0xff800000, v37
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s10, vcc_lo, s10
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v36, 0, 1, s10
	v_or_b16 v100.l, v34.l, v33.l
	v_mov_b16_e32 v33.l, v99.l
	v_mov_b16_e32 v34.l, v101.l
	s_and_b32 s7, vcc_lo, s7
	.loc	1 965 35                        ; attention.py:965:35
	s_barrier
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v35, 0, 1, s7
	v_lshlrev_b16 v33.l, 8, v33.l
	v_lshlrev_b16 v33.h, 8, v34.l
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v98, v83, v86
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[37:38], v72
	ds_load_b64 v[39:40], v77
	ds_load_b64 v[86:87], v78
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v101, v83, v107
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v35.h, v35.l, v33.l
	v_or_b16 v35.l, v36.l, v33.h
	.loc	1 965 35                        ; attention.py:965:35
	ds_load_b64 v[33:34], v79
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v103, v83, v114
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v107, 16, v115
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v64, v100
	ds_store_b32 v80, v35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 932 25                        ; attention.py:932:25
	v_dual_mul_f32 v36, v83, v89 :: v_dual_lshlrev_b32 v91, 16, v91
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v89, v83, v90 :: v_dual_lshlrev_b32 v104, 16, v111
	v_mul_f32_e32 v90, v83, v105
	v_dual_mul_f32 v99, v83, v106 :: v_dual_lshlrev_b32 v108, 16, v116
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_mul_f32 v38, 0x3fb8aa3b, v38
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v111, 16, v117
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v106, 16, v113
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	v_mul_f32_e32 v114, 0x3fb8aa3b, v34
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u16_d16_hi v34, v75
	.loc	1 965 25                        ; attention.py:965:25
	v_dual_fmac_f32 v38, v36, v104 :: v_dual_fmac_f32 v37, v98, v91
	v_dual_fmac_f32 v40, v90, v106 :: v_dual_lshlrev_b32 v105, 16, v112
	.loc	1 965 35 is_stmt 0              ; attention.py:965:35
	v_mul_f32_e32 v112, 0x3fb8aa3b, v86
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v98.h, v92.l
	v_mov_b16_e32 v91.h, v92.l
	.loc	1 903 13                        ; attention.py:903:13
	s_cmpk_lt_u32 s34, 0x1f0
	v_add_nc_u32_e32 v59, 32, v59
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v112, v99, v107
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v36.h, 8, v34.h
	v_and_b16 v34.h, 1, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b16 v36.h, 1, v36.h
	v_cmp_eq_u16_e64 s14, 1, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s18, 1, v36.h
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v97, 16, v97
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_fmac_f32 v114, v103, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v39, v89, v105
	.loc	1 967 26 is_stmt 1              ; attention.py:967:26
	v_cndmask_b32_e64 v104, 0xff800000, v114, s18
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v113, 0x3fb8aa3b, v87
	v_mul_f32_e32 v87, 0x3fb8aa3b, v33
	.loc	1 966 25                        ; attention.py:966:25
	ds_load_u16_d16 v33, v65
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v33, v73
	ds_load_u16_d16 v34, v74
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v87, v102, v111
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v111.h, v92.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v103, 0xff800000, v87, s14
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v100, v103, v104
.Ltmp2:
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v113, v101, v108
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b16 v35.l, 1, v33.l
	v_lshrrev_b16 v33.l, 8, v33.l
	v_and_b16 v35.h, 1, v33.h
	v_lshrrev_b16 v33.h, 8, v33.h
	v_and_b16 v36.l, 1, v34.l
	v_lshrrev_b16 v34.l, 8, v34.l
	v_and_b16 v33.l, 1, v33.l
	v_cmp_eq_u16_e64 s11, 1, v35.l
	v_and_b16 v33.h, 1, v33.h
	v_cmp_eq_u16_e64 s12, 1, v35.h
	v_and_b16 v34.l, 1, v34.l
	v_cmp_eq_u16_e64 s15, 1, v33.l
	v_cmp_eq_u16_e64 s13, 1, v36.l
	v_cmp_eq_u16_e64 s16, 1, v33.h
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v86, 0xff800000, v37, s11
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u16_e64 s17, 1, v34.l
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v87, 0xff800000, v38, s15
	v_cndmask_b32_e64 v89, 0xff800000, v39, s12
	v_cndmask_b32_e64 v90, 0xff800000, v40, s16
	v_cndmask_b32_e64 v101, 0xff800000, v112, s13
	v_cndmask_b32_e64 v102, 0xff800000, v113, s17
	ds_store_b64 v72, v[86:87]
	ds_store_b64 v77, v[89:90]
	ds_store_b64 v78, v[101:102]
	ds_store_b64 v79, v[103:104]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[33:36], v67 offset0:64 offset1:96
	ds_load_2addr_b64 v[37:40], v67 offset1:32
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v97, v86, v87, v89
	v_max3_f32 v99, v90, v101, v102
.Ltmp4:
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v93, v93, s[28:31], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v113.h, v92.l
	v_mov_b16_e32 v112.h, v92.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v97, v97, v99, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v99, v97, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v105, v57, v97, v99
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v43, s36, v43
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v97, v33, v33
	s_waitcnt lgkmcnt(0)
	v_dual_max_f32 v99, v37, v37 :: v_dual_max_f32 v100, v35, v35
	v_max_f32_e32 v106, v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v97, v99, v97
	v_max_f32_e32 v99, v106, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v97, v97, v38, v34
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v100, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v100, v100 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v87, v87, v105 :: v_dual_max_f32 v100, v100, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v87, v87
.Ltmp11:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v97, v97, v100
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v87, 0, v87, s15
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v91.l, v87.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v86, v86, v105 :: v_dual_and_b32 v91, 1, v91
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v86, v86
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v86, 0, v86, s11
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_cmp_o_f32_e64 s11, v87, v87
	v_add3_u32 v87, v87, v91, 0x7fff
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v91, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v98.l, v86.h
	v_cmp_o_f32_e64 s15, v86, v86
	v_cndmask_b16 v100.h, 0x7fff, v87.h, s11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v91, v91 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp16:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v98, 1, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v86, v86, v98, 0x7fff
	v_cndmask_b16 v100.l, 0x7fff, v86.h, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v86, v91, v91
	v_max3_f32 v99, v99, v40, v36
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v106, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v106, v106 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v106, v106, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v99, v99, v106
.Ltmp20:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v106, v100, s35, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_dual_mov_b32 v98, v99 :: v_dual_max_f32 v91, v97, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v97, v106, v100, v84
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_dpp v98, v98 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v86, v109, v91 :: v_dual_max_f32 v87, v98, v98
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v33, v33, v86
	v_sub_f32_e32 v108, v34, v86
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v98, v106, v100, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 969 24                        ; attention.py:969:24
	v_dual_max_f32 v106, v88, v88 :: v_dual_max_f32 v107, v99, v87
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v34, v90, v105
	v_sub_f32_e32 v90, v101, v105
	v_sub_f32_e32 v38, v38, v86
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v33, v33
	.loc	1 969 24 is_stmt 1              ; attention.py:969:24
	v_max_f32_e32 v87, v110, v107
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v34, v34
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v37, v37, v86
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v90, v90
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v110.h, v92.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v39, v87
	v_sub_f32_e32 v109, v35, v87
	v_dual_sub_f32 v35, v89, v105 :: v_dual_sub_f32 v40, v40, v87
	v_sub_f32_e32 v36, v36, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, 0, v34, s16
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v89.h, v92.l
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v40, v40
	v_exp_f32_e32 v36, v36
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v89.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v90, 0, v90, s13
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v41, v41, v91
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v39, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v89, 1, v89
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s12
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v91, v106, v107
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v40, 0, v40, s3
	v_cndmask_b32_e64 v36, 0, v36, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v34, v34, v89, 0x7fff
	v_mov_b16_e32 v89.h, v92.l
	v_mov_b16_e32 v89.l, v35.h
	v_cmp_o_f32_e64 s12, v35, v35
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v40, v36
.Ltmp26:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s11
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v89, 1, v89
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v107, v108
	v_exp_f32_e32 v108, v109
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v33, 0, v33, s10
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_add3_u32 v35, v35, v89, 0x7fff
	v_mov_b16_e32 v89.h, v92.l
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v106, v88, v91 :: v_dual_add_nc_u32 v81, 64, v81
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s12
	v_cmp_o_f32_e64 s12, v90, v90
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v38, s5
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v122, v106
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v33, v37, v33
.Ltmp28:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v35, v34, s35, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v99, v35, v34, v84
	v_perm_b32 v100, v35, v34, v85
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v102, v105
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v34.h, v92.l
	v_mov_b16_e32 v34.l, v90.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v34, v90, v34, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v90.h, v92.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v89.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v35, v35
	v_and_b32_e32 v89, 1, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v35, v35, v89, 0x7fff
	v_cndmask_b16 v35.l, 0x7fff, v34.h, s12
	v_mov_b16_e32 v89.h, v92.l
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v34, v35, s35, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v101, v34, v35, v84
	v_perm_b32 v102, v34, v35, v85
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v34, v104, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v34, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v110.l, v34.h
	v_cmp_o_f32_e64 s11, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v35, 1, v110
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v110, v57, v105
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v104, v34, v35, 0x7fff
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[34:35], v94, s[24:27], 0 offen
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v110, v110
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v103, v103, v105
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s11
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v57
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instid1(VALU_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v57, 0, v110, s11
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v92.l
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s11, 0xff800000, v68
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v24, v24, v57
	v_mul_f32_e32 v25, v25, v57
	v_mul_f32_e32 v26, v26, v57
	v_mul_f32_e32 v27, v27, v57
	v_mul_f32_e32 v28, v28, v57
	v_mul_f32_e32 v29, v29, v57
	v_mul_f32_e32 v31, v31, v57
	v_mul_f32_e32 v16, v16, v57
	v_mul_f32_e32 v17, v17, v57
	v_mul_f32_e32 v18, v18, v57
	v_mul_f32_e32 v19, v19, v57
	v_mul_f32_e32 v20, v20, v57
	v_mul_f32_e32 v21, v21, v57
	v_mul_f32_e32 v22, v22, v57
	v_mul_f32_e32 v23, v23, v57
	v_mul_f32_e32 v8, v8, v57
	v_mul_f32_e32 v9, v9, v57
	v_mul_f32_e32 v10, v10, v57
	v_mul_f32_e32 v11, v11, v57
	v_mul_f32_e32 v12, v12, v57
	v_mul_f32_e32 v13, v13, v57
	v_mul_f32_e32 v14, v14, v57
	v_mul_f32_e32 v15, v15, v57
	v_mul_f32_e32 v0, v0, v57
	v_mul_f32_e32 v1, v1, v57
	v_mul_f32_e32 v2, v2, v57
	v_mul_f32_e32 v3, v3, v57
	v_mul_f32_e32 v4, v4, v57
	v_mul_f32_e32 v5, v5, v57
	v_mul_f32_e32 v6, v6, v57
	v_mul_f32_e32 v7, v7, v57
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v40.l, v93.h
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v92.h, v34.l
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v57
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v57, v68, v41
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v68, 0, v108, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v121, v57
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v57, 0, v107, s9
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v37, v38, v57 :: v_dual_add_f32 v38, v39, v68
.Ltmp30:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v39, 0xffff0000, v35
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v57, 24, v93
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v68, 20, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v33, v33, v37 :: v_dual_add_f32 v36, v38, v36
.Ltmp32:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_dual_mov_b32 v37, v33 :: v_dual_mov_b32 v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v38, v38 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v123, v36, v38
.Ltmp34:
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v38, 0xffff0000, v34
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v94, v103
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v36, v93, 0, 8
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.l, v93.h, 15
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v94, 0, v94, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v89.l, v94.h
	v_cmp_o_f32_e64 s12, v94, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v89, 1, v89
	v_add3_u32 v89, v94, v89, 0x7fff
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v94.h, v92.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v104.l, 0x7fff, v89.h, s12
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s12, 0xff800000, v88
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v88, v33, v37
.Ltmp36:
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v33.l, v93.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v33.h, 4, v93.l
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v89, v104, s35, 0xfedcba98 op_sel:[1,0]
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v37, 8, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v33.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v33.h, v33.h, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v103, v89, v104, v84
	v_perm_b32 v104, v89, v104, v85
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v89.h, v35.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v35.l, v36.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v34.h, 0, -16, s3
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v36, v37, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v34.l
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v89.l, v92.l
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v35.l
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v90.l, v33.l, v34.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v33.l, v33.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v35.l, v36.l
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v36, v57, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.h, v68.l, 15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v93.l, v33.h, v33.l, s4
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v33.l, 4, v37.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v33.h, v37.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v37, v40, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v35.l
	v_cmp_gt_i16_e64 s6, 0, v36.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v33.l, v33.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v35.l, v37.l
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v35.h, v33.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s5, 0, v35.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v35.l, 0, -16, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v33.h
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v36.l, v33.l, v35.h, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v37.l, v34.l, v35.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.l, v57.l, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v33.l, 0, -16, s3
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v35.l, 4, v57.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v57, v93, 0, 16
	v_bfe_i32 v37, v37, 0, 16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v34.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v40.l, v33.h, v33.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b16 v33.l, v34.h, -16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v33.h, v92.l
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v57, v57
	v_bfe_i32 v36, v36, 0, 16
	v_bfe_i32 v40, v40, 0, 16
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v68.l, v34.h, v33.l, s5
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v33.l, 0, -16, s3
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v34.h, v92.l
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v93, v92, v57
	v_mov_b32_e32 v57, v105
	v_bfe_i32 v68, v68, 0, 16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v34.l, v34.l, v33.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v33.l, v35.l, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v40, v40
	v_bfe_i32 v105, v34, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v33.l, v35.l, v33.l, s6
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v35, v90, 0, 16
	v_cvt_f32_i32_e32 v68, v68
	v_mul_f32_e32 v37, v89, v37
	v_cvt_f32_i32_e32 v105, v105
	v_mul_f32_e32 v36, v38, v36
	v_cvt_f32_i32_e32 v35, v35
	v_mul_f32_e32 v38, v38, v40
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v111.l, v93.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v40, v89, v68
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v113.l, v37.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v35, v92, v35
	v_bfe_i32 v92, v33, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v112.l, v36.h
	v_mov_b16_e32 v94.l, v38.h
	v_mov_b16_e32 v110.l, v40.h
	v_mov_b16_e32 v90.l, v35.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v92, v92
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v35, v35
	v_cmp_o_f32_e64 s4, v93, v93
	v_cmp_o_f32_e64 s5, v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v68, v39, v92 :: v_dual_and_b32 v89, 1, v90
	v_dual_mul_f32 v39, v39, v105 :: v_dual_and_b32 v90, 1, v111
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v92, 1, v113
	v_add3_u32 v35, v35, v89, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v33.l, v68.h
	v_mov_b16_e32 v34.l, v39.h
	v_add3_u32 v89, v93, v90, 0x7fff
	v_and_b32_e32 v90, 1, v112
	v_and_b32_e32 v93, 1, v94
	v_add3_u32 v37, v37, v92, 0x7fff
	v_and_b32_e32 v92, 1, v110
	v_and_b32_e32 v33, 1, v33
	v_and_b32_e32 v34, 1, v34
	v_cmp_o_f32_e64 s6, v36, v36
	v_cmp_o_f32_e64 s7, v38, v38
	v_add3_u32 v36, v36, v90, 0x7fff
	v_add3_u32 v38, v38, v93, 0x7fff
	v_cmp_o_f32_e64 s8, v40, v40
	v_cmp_o_f32_e64 s9, v68, v68
	v_cmp_o_f32_e64 s10, v39, v39
	v_cndmask_b16 v89.l, 0x7fff, v35.h, s3
	v_add3_u32 v35, v40, v92, 0x7fff
	v_add3_u32 v33, v68, v33, 0x7fff
	v_add3_u32 v34, v39, v34, 0x7fff
	v_cndmask_b16 v89.h, 0x7fff, v89.h, s4
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s6
	v_cndmask_b16 v36.l, 0x7fff, v38.h, s7
	v_cndmask_b16 v35.l, 0x7fff, v37.h, s5
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s8
	v_cndmask_b16 v33.h, 0x7fff, v33.h, s9
	v_cndmask_b16 v33.l, 0x7fff, v34.h, s10
	ds_store_2addr_b32 v62, v89, v36 offset1:8
	ds_store_2addr_b32 v62, v35, v33 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[37:40], v76
	ds_load_b128 v[33:36], v63
	ds_load_b128 v[105:108], v63 offset:512
	ds_load_b128 v[109:112], v76 offset:512
	ds_load_b128 v[113:116], v63 offset:1024
	v_mov_b32_e32 v68, v41
	.loc	1 1019 23 is_stmt 1             ; attention.py:1019:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[33:40], v[97:104], v[24:31]
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v33, v88
.Ltmp38:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[105:112], v[97:104], v[16:23]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[105:108], v63 offset:1536
	ds_load_b128 v[117:120], v76 offset:1024
	ds_load_b128 v[109:112], v76 offset:1536
.Ltmp39:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v34, v123
.Ltmp40:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v35, 0, v121, s11
.Ltmp41:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v33, v33 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v36, 0, v122, s12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v40, v88, v33
	v_mov_b32_e32 v88, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v41, v123, v34
.Ltmp45:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v40, v95, v35 :: v_dual_fmac_f32 v41, v96, v36
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[113:120], v[97:104], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[105:112], v[97:104], v[0:7]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	v_and_b32_e32 v32, 0x80, v56
	v_and_b32_e32 v33, 4, v54
	v_add_nc_u32_e32 v34, 0, v58
	v_lshl_add_u32 v35, v55, 1, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s7, 0x31027000
	v_add3_u32 v32, v34, v32, v33
	ds_store_b64 v35, v[40:41]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s6, 0x7ffffffe
	ds_load_b32 v32, v32
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v32, v32, v24
	v_div_scale_f32 v35, null, v32, v32, v25
	v_div_scale_f32 v37, null, v32, v32, v26
	v_div_scale_f32 v39, null, v32, v32, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_rcp_f32_e32 v45, v35
	v_div_scale_f32 v41, null, v32, v32, v28
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_div_scale_f32 v42, null, v32, v32, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v48, v41
	v_div_scale_f32 v34, vcc_lo, v24, v32, v24
	v_fma_f32 v56, -v33, v44, 1.0
	v_fma_f32 v57, -v35, v45, 1.0
	v_div_scale_f32 v36, s0, v25, v32, v25
	v_fma_f32 v58, -v37, v46, 1.0
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v59, -v39, v47, 1.0
	v_fmac_f32_e32 v44, v56, v44
	v_rcp_f32_e32 v51, v42
	v_fmac_f32_e32 v45, v57, v45
	v_div_scale_f32 v38, s1, v26, v32, v26
	v_div_scale_f32 v40, s3, v27, v32, v27
	v_fma_f32 v60, -v41, v48, 1.0
	v_dual_fmac_f32 v47, v59, v47 :: v_dual_fmac_f32 v46, v58, v46
	v_dual_mul_f32 v57, v34, v44 :: v_dual_mul_f32 v58, v36, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v60, v48
	v_mul_f32_e32 v61, v40, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v38, v46
	v_fma_f32 v60, -v33, v57, v34
	v_fma_f32 v56, -v42, v51, 1.0
	v_fma_f32 v62, -v35, v58, v36
	v_fma_f32 v64, -v39, v61, v40
	v_fma_f32 v63, -v37, v59, v38
	v_fmac_f32_e32 v57, v60, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v51, v56, v51 :: v_dual_fmac_f32 v58, v62, v45
	v_div_scale_f32 v49, s4, v28, v32, v28
	v_fmac_f32_e32 v59, v63, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v57, v34
	v_fmac_f32_e32 v61, v64, v47
	v_fma_f32 v34, -v35, v58, v36
	v_mul_f32_e32 v56, v49, v48
	v_fma_f32 v35, -v37, v59, v38
	v_div_fmas_f32 v33, v33, v44, v57
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v50, s5, v29, v32, v29
	v_fma_f32 v36, -v39, v61, v40
	v_div_fmas_f32 v34, v34, v45, v58
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v32, v32, v30
	v_div_fmas_f32 v35, v35, v46, v59
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v34, v32, v25
	v_div_fmas_f32 v34, v36, v47, v61
	v_fma_f32 v36, -v41, v56, v49
	v_mul_f32_e32 v37, v50, v51
	v_rcp_f32_e32 v55, v43
	v_div_fixup_f32 v24, v33, v32, v24
	v_div_fixup_f32 v27, v34, v32, v27
	v_fmac_f32_e32 v56, v36, v48
	v_fma_f32 v34, -v42, v37, v50
	v_div_scale_f32 v33, null, v32, v32, v31
	v_div_scale_f32 v47, null, v32, v32, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v37, v34, v51
	v_fma_f32 v40, -v41, v56, v49
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v39, v33
	v_fma_f32 v38, -v43, v55, 1.0
	v_fma_f32 v42, -v42, v37, v50
	v_div_fmas_f32 v40, v40, v48, v56
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v36, null, v32, v32, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v37, v42, v51, v37
	v_rcp_f32_e32 v42, v47
	v_div_fixup_f32 v26, v35, v32, v26
	v_div_scale_f32 v35, s1, v30, v32, v30
	v_rcp_f32_e32 v41, v36
	v_div_fixup_f32 v28, v40, v32, v28
	v_div_fixup_f32 v29, v37, v32, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v55, v38, v55
	v_fma_f32 v38, -v33, v39, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v36, v41, 1.0
	v_fmac_f32_e32 v42, v40, v42
	v_mul_f32_e32 v34, v35, v55
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v31, v32, v31
	v_fmac_f32_e32 v41, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v43, v34, v35
	v_div_scale_f32 v46, s4, v16, v32, v16
	v_mul_f32_e32 v45, v38, v39
	v_div_scale_f32 v40, s1, v17, v32, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v34, v44, v55 :: v_dual_mul_f32 v37, v46, v41
	v_fma_f32 v44, -v33, v45, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v34, v35
	v_div_scale_f32 v43, null, v32, v32, v18
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v44, null, v32, v32, v19
	v_div_fmas_f32 v34, v35, v55, v34
	v_fma_f32 v35, -v36, v37, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v38, v43
	v_div_fixup_f32 v30, v34, v32, v30
	v_fmac_f32_e32 v37, v35, v41
	v_div_fmas_f32 v33, v33, v39, v45
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v35, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	v_cndmask_b32_e64 v28, 0, v28, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v31, v33, v32, v31
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v46, null, v32, v32, v20
	v_fma_f32 v45, -v43, v38, 1.0
	v_div_scale_f32 v36, s3, v18, v32, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v45, -v44, v35, 1.0
	v_div_scale_f32 v41, s4, v19, v32, v19
	v_div_fixup_f32 v16, v33, v32, v16
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v32, v32, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v46, v37, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v48, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v49, v37
	v_mul_f32_e32 v39, v40, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v39, v40
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	v_mul_f32_e32 v47, v41, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v42, v39
	v_fmac_f32_e32 v34, v40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v44, v47, v41
	v_fma_f32 v42, -v45, v48, 1.0
	v_div_scale_f32 v40, s1, v20, v32, v20
	v_div_fixup_f32 v17, v33, v32, v17
	v_fma_f32 v33, -v43, v34, v36
	v_dual_fmac_f32 v47, v39, v35 :: v_dual_fmac_f32 v48, v42, v48
	v_div_scale_f32 v42, null, v32, v32, v22
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v36, v40, v37
	v_div_scale_f32 v39, s5, v21, v32, v21
	v_div_fmas_f32 v33, v33, v38, v34
	v_fma_f32 v34, -v44, v47, v41
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v32, v32, v23
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v43, v39, v48
	v_div_fmas_f32 v34, v34, v35, v47
	v_rcp_f32_e32 v35, v44
	v_div_fixup_f32 v18, v33, v32, v18
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v38, -v45, v43, v39
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v19, v34, v32, v19
	v_div_scale_f32 v34, s3, v22, v32, v22
	v_fma_f32 v33, -v46, v36, v40
	v_fmac_f32_e32 v43, v38, v48
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v32, v32, v9
	v_div_fmas_f32 v33, v33, v37, v36
	v_fma_f32 v36, -v45, v43, v39
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v32, v32, v8
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v39, s1, v23, v32, v23
	v_div_fmas_f32 v36, v36, v48, v43
	v_rcp_f32_e32 v40, v38
	v_fma_f32 v43, -v42, v37, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v39, v35
	v_div_fixup_f32 v20, v33, v32, v20
	v_div_fixup_f32 v21, v36, v32, v21
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v33, -v44, v45, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v32, v32, v11
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v32, v32, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, v33, v35 :: v_dual_fmac_f32 v40, v43, v40
	v_fma_f32 v47, -v46, v36, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_div_fmas_f32 v34, v34, v41, v37
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v9, v32, v9
	v_fmac_f32_e32 v36, v47, v36
	v_div_scale_f32 v33, s4, v8, v32, v8
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v50, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v42, v43, 1.0
	v_mul_f32_e32 v49, v41, v36
	v_mul_f32_e32 v39, v33, v40
	v_div_fmas_f32 v35, v37, v35, v45
	v_div_fixup_f32 v22, v34, v32, v22
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v32, v10
	v_fma_f32 v37, -v46, v49, v41
	v_fma_f32 v47, -v38, v39, v33
	v_div_fixup_f32 v23, v35, v32, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v32, v32, v12
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v11, v32, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v40, v39
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v32, v32, v13
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v33, v32, v8
	v_div_fmas_f32 v38, v38, v43, v45
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v12, v32, v12
	v_div_fixup_f32 v9, v36, v32, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v43, v50
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v33, v41, v34
	v_div_fixup_f32 v10, v38, v32, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_div_scale_f32 v38, null, v32, v32, v14
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v13, v32, v13
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	v_rcp_f32_e32 v44, v38
	v_mul_f32_e32 v39, v36, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v11, v35, v32, v11
	v_fma_f32 v35, -v37, v33, v41
	v_div_scale_f32 v43, null, v32, v32, v15
	v_fma_f32 v37, -v40, v39, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v32, v32, v0
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v14, v32, v14
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v32, v32, v1
	v_div_fixup_f32 v12, v33, v32, v12
	v_fma_f32 v36, -v40, v39, v36
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v15, v32, v15
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v32, v32, v2
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v0, v32, v0
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v32, v1
	v_div_fixup_f32 v13, v36, v32, v13
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v2, v32, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v32, v32, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v35, v32, v14
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v32, v15
	v_div_fixup_f32 v0, v34, v32, v0
	v_div_scale_f32 v34, null, v32, v32, v4
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v32, v32, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v32, v1
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v32, v32, v5
	v_div_scale_f32 v37, null, v32, v32, v6
	v_div_scale_f32 v38, vcc_lo, v3, v32, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v32, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v4, v32, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v5, v32, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v6, v32, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v7, v32, v7
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v55, v48, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v49, v47, v36 :: v_dual_mul_f32 v56, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v37, v55, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v56, v50
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	v_fmac_f32_e32 v55, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v56, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v55, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v56, v50
	v_div_fixup_f32 v3, v38, v32, v3
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v33, v32, v4
	v_div_fmas_f32 v34, v34, v41, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v35, v32, v5
	v_div_fmas_f32 v36, v36, v46, v56
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v34, v32, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v36, v32, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s37, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s37, s33
	v_add_nc_u32_e32 v34, v32, v53
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s37, v53
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v53
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_add_lshl_u32 v38, v32, v53, 2
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	.loc	1 1046 74 is_stmt 0             ; attention.py:1046:74
	v_or_b32_e32 v35, 32, v53
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s37, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s37, v35
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v53
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v24, v41, s[4:7], 0 offen
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v40, s[4:7], 0 offen
	v_add_nc_u32_e32 v24, 24, v38
	v_add_nc_u32_e32 v25, 32, v38
	v_add_nc_u32_e32 v26, 40, v38
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v38, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v39, s[4:7], 0 offen
	buffer_store_b32 v31, v38, s[4:7], 0 offen
	v_add_lshl_u32 v24, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v34
	v_add_nc_u32_e32 v26, 0x50, v34
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v34
	v_add_nc_u32_e32 v18, 0x70, v34
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x78, v34
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v32, v35, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v8, v16, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s37, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v54
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[4:7], 0 offen
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v0, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[4:7], 0 offen
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v8, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp46:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 124
		.amdhsa_next_free_sgpr 52
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 124
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 52
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9068
; TotalNumSgprs: 54
; NumVgprs: 124
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 54
; NumVGPRsForWavesPerEU: 124
; Occupancy: 10
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
	.short	968                             ; DW_AT_call_line
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
	.short	972                             ; DW_AT_call_line
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_fp32_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     124
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
