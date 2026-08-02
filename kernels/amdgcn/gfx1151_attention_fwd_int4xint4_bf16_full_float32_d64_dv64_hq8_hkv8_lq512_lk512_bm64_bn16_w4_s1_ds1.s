	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[36:39], s[0:1], 0x60
	s_load_b256 s[24:31], s[0:1], 0x0
	v_dual_mov_b32 v46, 0x5410 :: v_dual_and_b32 v39, 1, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v40, 1, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s7, s2, 6
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s6, s3, 9
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v47, 0x7632 :: v_dual_lshlrev_b32 v38, 4, v39
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s33, s7, s6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v41, s7, v40
	.loc	1 773 26                        ; attention.py:773:26
	v_or_b32_e32 v1, s33, v40
	v_dual_mov_b32 v72, 0 :: v_dual_and_b32 v43, 0x60, v0
	v_dual_mov_b32 v49, 0x7531 :: v_dual_and_b32 v44, 15, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v41
	s_mov_b32 s43, 0x31027000
	s_mov_b32 s42, 0x7ffffffe
	s_load_b64 s[4:5], s[0:1], 0x70
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[1:2], null, s36, v1, v[38:39]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s2, s36, v38
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v43
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s41, s25, 0xffff
	s_mov_b32 s40, s24
	s_load_b256 s[16:23], s[0:1], 0x20
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s2
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v51, v2, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v94, 0xff800000
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s7, v51
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[34:37], v1, s[40:43], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s33, v51
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s41, s31, 0xffff
	s_mov_b32 s40, s30
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v48, 0x6420 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v52, v0, 4, 1
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v63, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v68, 7, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v50, 3, v0
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v45, v1, s[40:43], 0 offen
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_i32 v65, v0, 0, 1
	v_dual_mov_b32 v20, v33 :: v_dual_and_b32 v67, 0x70, v0
	v_dual_mov_b32 v22, v33 :: v_dual_lshlrev_b32 v69, 5, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s7, s0, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v70, v63, 30, v52
	v_cmp_eq_u32_e64 s0, 0, v39
	v_bfe_i32 v71, v0, 2, 1
	v_mov_b32_e32 v31, v33
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v76, 0x160, v69
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v85, 3, v39
	v_dual_mov_b32 v10, v33 :: v_dual_and_b32 v73, 0x700, v68
	v_dual_mov_b32 v12, v33 :: v_dual_and_b32 v75, 0x90, v65
	v_dual_mov_b32 v14, v33 :: v_dual_lshlrev_b32 v65, 2, v70
	v_or_b32_e32 v62, s6, v50
	v_and_b32_e32 v50, 24, v63
	v_cndmask_b32_e64 v39, 0x7632, v46, s0
	v_lshrrev_b32_e32 v74, 2, v67
	v_and_or_b32 v38, v40, 15, v38
	v_cndmask_b32_e64 v40, 0x5410, v47, s0
	v_dual_mov_b32 v61, 0xff800000 :: v_dual_lshlrev_b32 v66, 2, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v53, 4, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v87, 16, v0
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v0, 2, v44
	v_dual_mov_b32 v16, v33 :: v_dual_add_nc_u32 v77, 0, v73
	v_lshrrev_b32_e32 v43, 2, v43
	v_lshl_or_b32 v44, v44, 5, v50
	v_lshl_or_b32 v39, v39, 8, v39
	v_cndmask_b32_e64 v48, 0x7531, v48, s0
	v_cndmask_b32_e64 v49, 0x6420, v49, s0
	v_xor_b32_e32 v50, v75, v74
	v_and_or_b32 v71, 0x90, v71, v76
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v75, 4, v65
	v_lshl_or_b32 v40, v40, 8, v40
	v_mul_lo_u32 v41, s5, v41
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_mov_b32_e32 v23, v33
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v39, 0x760032, v39
	v_mov_b32_e32 v4, v33
	v_dual_mov_b32 v6, v33 :: v_dual_add_nc_u32 v79, 0, v44
	v_xor_b32_e32 v43, v66, v43
	v_xor_b32_e32 v80, 8, v44
	v_xor_b32_e32 v81, 16, v44
	v_dual_mov_b32 v93, 0xff800000 :: v_dual_add_nc_u32 v76, v77, v50
	v_xor_b32_e32 v50, 24, v44
	v_lshl_or_b32 v48, v48, 8, v48
	v_lshl_or_b32 v49, v49, 8, v49
	v_lshlrev_b32_e32 v77, 2, v38
	v_xor_b32_e32 v38, 16, v71
	v_and_b32_e32 v40, 0x760032, v40
	.loc	1 956 27                        ; attention.py:956:27
	s_mul_i32 s5, s39, s7
	.loc	1 957 27                        ; attention.py:957:27
	s_mul_i32 s4, s4, s1
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v78, 0, v43
	s_add_i32 s4, s4, s5
	v_mov_b32_e32 v11, v33
	v_dual_mov_b32 v8, v33 :: v_dual_and_b32 v43, 0x750031, v48
	v_lshl_or_b32 v39, v39, 4, v39
	v_and_b32_e32 v48, 0x750031, v49
	v_add_nc_u32_e32 v83, 0, v38
	v_add3_u32 v85, s4, v85, v41
	v_lshl_or_b32 v38, v40, 4, v40
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v87
	v_dual_mov_b32 v3, v33 :: v_dual_and_b32 v86, 0x7060302, v39
	v_lshl_or_b32 v39, v43, 4, v43
	v_lshl_or_b32 v40, v48, 4, v48
	v_and_b32_e32 v87, 0x7060302, v38
	v_cndmask_b32_e64 v46, 0x1054, v46, s4
	v_cndmask_b32_e64 v47, 0x3276, v47, s4
	.loc	1 760 21                        ; attention.py:760:21
	v_or_b32_e32 v60, 2, v52
	v_or_b32_e32 v59, 4, v52
	v_or_b32_e32 v58, 6, v52
	v_or_b32_e32 v57, 8, v52
	v_or_b32_e32 v56, 10, v52
	v_or_b32_e32 v55, 12, v52
	v_or_b32_e32 v54, 14, v52
	v_dual_mov_b32 v5, v33 :: v_dual_and_b32 v88, 0x7050301, v39
	v_and_b32_e32 v89, 0x7050301, v40
	v_lshl_or_b32 v40, v46, 8, v46
	v_lshl_or_b32 v46, v47, 8, v47
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v42, 28, v66
	v_or_b32_e32 v63, s6, v52
	v_or_b32_e32 v66, s6, v60
	v_or_b32_e32 v67, s6, v59
	v_or_b32_e32 v68, s6, v58
	v_or_b32_e32 v69, s6, v57
	v_or_b32_e32 v70, s6, v56
	v_or_b32_e32 v73, s6, v55
	v_or_b32_e32 v74, s6, v54
	.loc	1 929 25                        ; attention.py:929:25
	s_mul_f32 s6, s38, 0x3fb8aa3b
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v26, v33
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v28, v33
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v30, v33
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s34, s3, 5
	v_dual_mov_b32 v13, v33 :: v_dual_add_nc_u32 v80, 0, v80
	v_dual_mov_b32 v15, v33 :: v_dual_add_nc_u32 v82, 0, v50
	v_lshl_or_b32 v64, s3, 8, v53
	.loc	1 910 31                        ; attention.py:910:31
	v_cmp_gt_i32_e64 s1, s36, v42
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s3, s37, v0
	v_add_nc_u32_e32 v81, 0, v81
	v_xor_b32_e32 v84, 64, v77
	s_and_b32 s27, s27, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s21, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s24, 0
	s_mov_b32 s25, 0x76543210
	s_mov_b32 s46, s42
	s_mov_b32 s47, s43
	s_mov_b32 s50, s42
	s_mov_b32 s51, s43
	s_mov_b32 s54, s42
	s_mov_b32 s55, s43
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s44, s16
	s_mov_b32 s48, s20
	s_mov_b32 s52, s18
	s_mov_b32 s45, s17
	s_mov_b32 s49, s21
	s_mov_b32 s53, s19
	s_mov_b32 s30, s42
	s_mov_b32 s31, s43
	s_mov_b32 s40, s26
	s_mov_b32 s41, s27
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v65, v34
	ds_bpermute_b32 v34, v75, v34
	ds_bpermute_b32 v41, v65, v35
	ds_bpermute_b32 v35, v75, v35
	ds_bpermute_b32 v48, v65, v36
	ds_bpermute_b32 v36, v75, v36
	ds_bpermute_b32 v38, v65, v37
	ds_bpermute_b32 v37, v75, v37
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v39, 16, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v7, v33 :: v_dual_mul_f32 v90, s6, v39
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v43, v34, v44, s4
	v_cndmask_b32_e64 v45, v44, v34, s4
	v_and_b32_e32 v34, 0x540054, v40
	v_and_b32_e32 v39, 0x760076, v46
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v44, v35, v41, s4
	v_cndmask_b32_e64 v46, v41, v35, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v47, v36, v48, s4
	v_lshl_or_b32 v34, v34, 4, v34
	v_lshl_or_b32 v35, v39, 4, v39
	v_cndmask_b32_e64 v49, v48, v36, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v48, v37, v38, s4
	v_cndmask_b32_e64 v50, v38, v37, s4
	v_and_b32_e32 v91, 0x5040504, v34
	v_and_b32_e32 v92, 0x7060706, v35
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 913 33                        ; attention.py:913:33
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v95, s24, v62
	v_mov_b32_e32 v40, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 907 32                        ; attention.py:907:32
	v_mad_u64_u32 v[103:104], null, v95, s36, v[42:43]
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 964 36                        ; attention.py:964:36
	v_add_lshl_u32 v105, v85, s24, 1
	.loc	1 913 33                        ; attention.py:913:33
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v102, v40
	v_dual_mov_b32 v100, v38 :: v_dual_mov_b32 v99, v37
	v_dual_mov_b32 v101, v39 :: v_dual_mov_b32 v98, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v97, v35 :: v_dual_mov_b32 v96, v34
	v_mov_b32_e32 v95, v33
	.loc	1 908 32                        ; attention.py:908:32
	v_cndmask_b32_e64 v34, 0x80000000, v103, s1
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e32 v40, 0x80000000, v105, vcc_lo
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v106, s24, v63, 1
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v41.l, 0
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v107, s24, v66, 1
	.loc	1 908 32                        ; attention.py:908:32
	buffer_load_b32 v34, v34, s[40:43], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v108, s24, v67, 1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s14, s24, 1
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v109, s24, v68, 1
	v_add_lshl_u32 v110, s24, v69, 1
	v_add_lshl_u32 v111, s24, v70, 1
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s15, s24, 4
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s13, 0xff800000, v94
	.loc	1 966 25                        ; attention.py:966:25
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v61, v61, v61
	.loc	1 908 32                        ; attention.py:908:32
	s_waitcnt vmcnt(0)
	ds_store_b32 v78, v34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[34:35], v79
	ds_load_b64 v[36:37], v80
	ds_load_b64 v[38:39], v81
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[34:35], v[43:44], v[95:102] neg_lo:[1,1,0]
	.loc	1 908 32                        ; attention.py:908:32
	ds_load_b64 v[34:35], v82
	.loc	1 913 33                        ; attention.py:913:33
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[36:37], v[47:48], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[38:39], v[45:46], v[95:102] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[34:35], v[49:50], v[95:102] neg_lo:[1,1,0]
	.loc	1 964 36                        ; attention.py:964:36
	buffer_load_b128 v[34:37], v40, s[48:51], 0 offen
	.loc	1 923 37                        ; attention.py:923:37
	buffer_load_u16 v40, v106, s[44:47], 0 offen
	.loc	1 932 25                        ; attention.py:932:25
	v_cvt_f32_i32_e32 v38, v95
	v_cvt_f32_i32_e32 v39, v96
	v_cvt_f32_i32_e32 v95, v97
	v_cvt_f32_i32_e32 v96, v98
	v_cvt_f32_i32_e32 v98, v99
	v_cvt_f32_i32_e32 v99, v100
	v_cvt_f32_i32_e32 v100, v101
	v_cvt_f32_i32_e32 v101, v102
	v_mul_f32_e32 v95, v90, v95
	v_mul_f32_e32 v96, v90, v96
	v_mul_f32_e32 v38, v90, v38
	v_mul_f32_e32 v39, v90, v39
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v99, v90, v99 :: v_dual_cndmask_b32 v34, 0xff80ff80, v34
	.loc	1 964 36                        ; attention.py:964:36
	v_cndmask_b32_e32 v35, 0xff80ff80, v35, vcc_lo
	v_cndmask_b32_e32 v97, 0xff80ff80, v36, vcc_lo
	s_waitcnt vmcnt(0)
	v_dual_cndmask_b32 v37, 0xff80ff80, v37 :: v_dual_lshlrev_b32 v40, 16, v40
	v_and_b32_e32 v36, 0xffff0000, v34
	v_mov_b16_e32 v41.h, v34.l
	v_and_b32_e32 v102, 0xffff0000, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v104, 0xffff0000, v37
	v_and_b32_e32 v103, 0xffff0000, v97
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s5, 0xff800000, v36
	v_cmp_neq_f32_e64 s6, 0xff800000, v41
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v41.h, v35.l
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v36, v35, v34, v86
	v_perm_b32 v34, v35, v34, v87
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s8, 0xff800000, v102
	v_cmp_neq_f32_e64 s10, 0xff800000, v104
	.loc	1 966 25 is_stmt 0              ; attention.py:966:25
	s_and_b32 s7, vcc_lo, s5
	.loc	1 966 34                        ; attention.py:966:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v41
	v_cmp_neq_f32_e64 s9, 0xff800000, v103
	.loc	1 965 35 is_stmt 1              ; attention.py:965:35
	ds_bpermute_b32 v103, v75, v34
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v34, 0, 1, s7
	s_and_b32 s6, vcc_lo, s6
	s_and_b32 s8, vcc_lo, s8
	.loc	1 964 36                        ; attention.py:964:36
	v_mov_b16_e32 v41.h, v97.l
	.loc	1 966 25                        ; attention.py:966:25
	s_and_b32 s5, vcc_lo, s10
	s_and_b32 s10, vcc_lo, s11
	.loc	1 965 35                        ; attention.py:965:35
	ds_bpermute_b32 v102, v65, v36
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v35, 0, 1, s6
	v_cndmask_b32_e64 v36, 0, 1, s8
	v_lshlrev_b16 v34.l, 8, v34.l
	v_cndmask_b32_e64 v105, 0, 1, s10
	s_and_b32 s9, vcc_lo, s9
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s11, 0xff800000, v41
	.loc	1 964 36 is_stmt 1              ; attention.py:964:36
	v_mov_b16_e32 v41.h, v37.l
	.loc	1 966 25                        ; attention.py:966:25
	v_cndmask_b32_e64 v104, 0, 1, s9
	v_or_b16 v35.l, v35.l, v34.l
	v_lshlrev_b16 v34.l, 8, v36.l
	v_mov_b16_e32 v36.l, v105.l
	s_and_b32 s11, vcc_lo, s11
	.loc	1 966 34 is_stmt 0              ; attention.py:966:34
	v_cmp_neq_f32_e64 s12, 0xff800000, v41
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	v_add_lshl_u32 v105, s24, v73, 1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v35.h, v36.l, v34.l
	v_cndmask_b32_e64 v36, 0, 1, s5
	v_mov_b16_e32 v34.l, v104.l
	v_cndmask_b32_e64 v104, 0, 1, s11
	s_and_b32 s12, vcc_lo, s12
	v_lshlrev_b16 v34.h, 8, v36.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshlrev_b16 v34.l, 8, v34.l
	v_mov_b16_e32 v36.l, v104.l
	v_cndmask_b32_e64 v104, 0, 1, s12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_or_b16 v36.l, v36.l, v34.l
	v_mov_b16_e32 v34.l, v104.l
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v104, v103, v102, s4
	v_cndmask_b32_e64 v102, v102, v103, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 966 25                        ; attention.py:966:25
	v_or_b16 v36.h, v34.l, v34.h
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v34, 16, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v34, 0x3fb8aa3b, v34
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_fmac_f32_e32 v34, v38, v40
	.loc	1 923 37 is_stmt 1              ; attention.py:923:37
	s_clause 0x1
	buffer_load_u16 v40, v107, s[44:47], 0 offen
	buffer_load_u16 v106, v108, s[44:47], 0 offen
	.loc	1 965 35                        ; attention.py:965:35
	v_perm_b32 v38, v37, v97, v86
	v_perm_b32 v37, v37, v97, v87
	.loc	1 923 37                        ; attention.py:923:37
	v_add_lshl_u32 v97, s24, v74, 1
	.loc	1 965 35                        ; attention.py:965:35
	ds_bpermute_b32 v107, v65, v38
	ds_bpermute_b32 v108, v75, v37
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v37, 0xffff0000, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v38, 0x3fb8aa3b, v37
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v104, v108, v107, s4
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v37, 16, v104
	.loc	1 965 35                        ; attention.py:965:35
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v40, 16, v40
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v106, 16, v106
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v38, v39, v40
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v39, s14, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v37, v95, v106
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s14, s15, s34
	s_mul_i32 s14, s14, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[39:40], null, v39, s37, v[0:1]
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v40, s14, v0, 1
	v_cndmask_b32_e64 v40, 0x80000000, v40, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v39, 0x80000000, v39, s3
	.loc	1 923 37                        ; attention.py:923:37
	s_clause 0x4
	buffer_load_u16 v95, v109, s[44:47], 0 offen
	buffer_load_u16 v106, v110, s[44:47], 0 offen
	buffer_load_u16 v109, v111, s[44:47], 0 offen
	buffer_load_u16 v105, v105, s[44:47], 0 offen
	buffer_load_u16 v110, v97, s[44:47], 0 offen
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v111, v39, s[28:31], 0 offen
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v39, 0xffff0000, v104
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v104, v90, v101
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v100, v90, v100 :: v_dual_mul_f32 v39, 0x3fb8aa3b, v39
	.loc	1 923 37                        ; attention.py:923:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v95, 16, v95
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v101, 16, v109
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v105, 16, v105
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v39, v96, v95
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[96:97], v40, s[52:55], 0 offen
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v40, 16, v102
	.loc	1 932 25                        ; attention.py:932:25
	v_mul_f32_e32 v95, v90, v98
	.loc	1 923 37                        ; attention.py:923:37
	v_lshlrev_b32_e32 v98, 16, v106
	.loc	1 978 32                        ; attention.py:978:32
	s_waitcnt vmcnt(1)
	v_bfe_i32 v109, v111, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v40, 0x3fb8aa3b, v40
	.loc	1 1017 30                       ; attention.py:1017:30
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v40, v95, v98
	.loc	1 964 36                        ; attention.py:964:36
	v_and_b32_e32 v95, 0xffff0000, v102
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v98.l, v111.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v98.h, 4, v111.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v102.l, v111.h
	.loc	1 965 35                        ; attention.py:965:35
	v_dual_mul_f32 v95, 0x3fb8aa3b, v95 :: v_dual_lshlrev_b32 v106, 16, v110
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v110, 8, v111
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s14, 7, v98.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v98.h, v98.h, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v95, v99, v101
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v99.l, v109.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v99.h, v111.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s15, 0, v99.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v99.l, 0, -16, s14
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s14, 7, v99.h
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v102.h, v97.l
	v_and_b32_e32 v103, 0xffff0000, v96
	v_and_b32_e32 v101, 0xffff0000, v97
	.loc	1 965 35                        ; attention.py:965:35
	v_cndmask_b32_e64 v97, v107, v108, s4
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v41.h, v96.l
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v107, v102, 0, 8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 964 36                        ; attention.py:964:36
	v_lshlrev_b32_e32 v96, 16, v97
	v_and_b32_e32 v97, 0xffff0000, v97
	.loc	1 965 35                        ; attention.py:965:35
	v_mul_f32_e32 v97, 0x3fb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 965 25 is_stmt 0              ; attention.py:965:25
	v_dual_fmac_f32 v97, v104, v106 :: v_dual_mul_f32 v96, 0x3fb8aa3b, v96
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v106, v110, 0, 8
	v_lshrrev_b32_e32 v104, 24, v111
	.loc	1 965 25                        ; attention.py:965:25
	v_fmac_f32_e32 v96, v100, v105
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v100.l, v98.l, v99.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v98.l, v98.h, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_mov_b16_e32 v102.l, v106.l
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v108, v104, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v105, 20, v111
	v_lshrrev_b16 v104.h, 4, v104.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v99.l, v98.h, v98.l, s15
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s15, 0, v102.l
	v_mov_b16_e32 v102.l, v107.l
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v98.l, v110.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v98.h, 4, v110.l
	v_and_b16 v100.h, v105.l, 15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s16, 0, v102.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v102.l, 0, -16, s14
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s14, 7, v98.l
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_and_b16 v98.h, v98.h, 15
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v106.l, v99.h, v102.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v102.l, v108.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v99.h, v104.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v106, v106, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s17, 0, v102.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v102.l, 0, -16, s14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s14, 7, v99.h
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v102.l, v98.l, v102.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v98.l, v98.h, -16
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v109, v102, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v108.l, v98.h, v98.l, s15
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v98.l, v100.h, -16
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_mov_b16_e32 v102.l, v41.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_i32 v108, v108, 0, 16
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v107.l, v100.h, v98.l, s16
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v98.l, 0, -16, s14
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v106, v102, v106
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v100.h, v41.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v108, v108
	v_bfe_i32 v107, v107, 0, 16
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v104.l, v99.h, v98.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v98.l, v104.h, -16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v99.h, v41.l
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v108, v103, v108
	v_mul_f32_e32 v103, v103, v109
	v_cvt_f32_i32_e32 v107, v107
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v105.l, v104.h, v98.l, s17
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v104, v104, 0, 16
	v_bfe_i32 v109, v99, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s16, v106, v106
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v102, v102, v107
	v_bfe_i32 v105, v105, 0, 16
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v109, v109
	v_bfe_i32 v107, v100, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s17, v108, v108
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v105, v105
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v98, 0, v71
	v_cmp_o_f32_e64 s18, v103, v103
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v105, v101, v105
	v_mul_f32_e32 v101, v101, v104
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v104.h, v41.l
	v_mov_b16_e32 v104.l, v108.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v109, v41, v109
	v_mul_f32_e32 v107, v41, v107
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s19, v101, v101
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v41.h, v41.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v104, 1, v104
	v_mov_b16_e32 v99.l, v109.h
	v_mov_b16_e32 v100.l, v107.h
	v_cmp_o_f32_e64 s15, v109, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v104, v108, v104, 0x7fff
	v_and_b32_e32 v99, 1, v99
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v100, 1, v100
	v_cmp_o_f32_e64 s14, v107, v107
	v_mov_b16_e32 v108.h, v41.l
	v_mov_b16_e32 v108.l, v105.h
	v_add3_u32 v99, v109, v99, 0x7fff
	v_mov_b16_e32 v109.h, v41.l
	v_mov_b16_e32 v109.l, v106.h
	v_add3_u32 v100, v107, v100, 0x7fff
	v_mov_b16_e32 v107.h, v41.l
	v_mov_b16_e32 v107.l, v103.h
	v_cndmask_b16 v99.h, 0x7fff, v99.h, s15
	v_and_b32_e32 v109, 1, v109
	v_cndmask_b16 v99.l, 0x7fff, v100.h, s14
	v_cmp_o_f32_e64 s14, v102, v102
	v_and_b32_e32 v107, 1, v107
	v_cmp_o_f32_e64 s15, v105, v105
	v_add3_u32 v106, v106, v109, 0x7fff
	.loc	1 966 25                        ; attention.py:966:25
	v_perm_b32 v109, v36, v35, v88
	v_perm_b32 v35, v36, v35, v89
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v36.h, v41.l
	v_mov_b16_e32 v36.l, v102.h
	v_add3_u32 v103, v103, v107, 0x7fff
	.loc	1 966 25                        ; attention.py:966:25
	ds_bpermute_b32 v109, v65, v109
	ds_bpermute_b32 v35, v75, v35
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v107.h, v41.l
	v_and_b32_e32 v36, 1, v36
	v_mov_b16_e32 v107.l, v101.h
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s17
	v_cndmask_b16 v104.l, 0x7fff, v103.h, s18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v100.h, v41.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v36, v102, v36, 0x7fff
	v_and_b32_e32 v102, 1, v108
	v_and_b32_e32 v107, 1, v107
	v_cndmask_b16 v36.l, 0x7fff, v106.h, s16
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v103.h, v41.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s14
	v_add3_u32 v102, v105, v102, 0x7fff
	v_add3_u32 v101, v101, v107, 0x7fff
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v105.h, v41.l
	v_mov_b16_e32 v107.h, v41.l
	v_mov_b16_e32 v106.h, v41.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v102.h, 0x7fff, v102.h, s15
	v_cndmask_b16 v102.l, 0x7fff, v101.h, s19
	ds_store_2addr_b32 v76, v99, v104 offset1:8
	ds_store_2addr_b32 v76, v36, v102 offset0:16 offset1:24
	.loc	1 966 25                        ; attention.py:966:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v36, v35, v109, s4
	v_cndmask_b32_e64 v35, v109, v35, s4
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v101.h, v41.l
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v102, 1, v35
	v_and_b32_e32 v104, 0x100, v35
	v_and_b32_e32 v109, 0x1000000, v35
	v_and_b32_e32 v35, 0x10000, v35
	v_cmp_eq_u32_e64 s15, 1, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s16, 0, v104
	v_cmp_eq_u32_e64 s18, 0, v109
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s19, 0, v35
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v111, 0xff800000, v40, s15
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v102, 0x1000000, v36
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v112, v95, 0xff800000, s16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v96, v96, 0xff800000, s19
	v_cndmask_b32_e64 v97, v97, 0xff800000, s18
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s20, 0, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v114, v39, 0xff800000, s20
	.loc	1 966 25                        ; attention.py:966:25
	v_and_b32_e32 v99, 0x100, v36
	v_cmp_eq_u32_e64 s14, 0, v99
	v_and_b32_e32 v99, 1, v36
	v_and_b32_e32 v36, 0x10000, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v110, v38, 0xff800000, s14
	.loc	1 966 25                        ; attention.py:966:25
	v_cmp_eq_u32_e64 s17, 1, v99
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e64 s21, 0, v36
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v36, v114, v111, v112
.Ltmp2:
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v109, 0xff800000, v34, s17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v113, v37, 0xff800000, s21
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v34, v96, v97
	v_max3_f32 v35, v109, v110, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v35, v36, v34
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v35, v34, s25, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v95, v94, v34, v35
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v34, v110, v95
	v_sub_f32_e32 v36, v114, v95
	v_sub_f32_e32 v35, v109, v95
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v94, v94, v95
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v113, v95
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v35, v35
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v94, v94
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v38, v112, v95
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_exp_f32_e32 v38, v38
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v34, v34, 0, s14
	v_cndmask_b32_e64 v36, v36, 0, s20
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cndmask_b32_e64 v94, 0, v94, s13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v41.l, v34.h
	v_mov_b16_e32 v105.l, v36.h
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b16_e32 v100.l, v35.h
	v_cmp_o_f32_e64 s14, v34, v34
	v_cmp_o_f32_e64 s17, v35, v35
	v_and_b32_e32 v39, 1, v41
	v_and_b32_e32 v41, 1, v105
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v27, v27, v94 :: v_dual_and_b32 v40, 1, v100
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s20, v36, v36
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, v37, 0, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v36, v36, v41, 0x7fff
	v_add3_u32 v35, v35, v40, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v40, v97, v95
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v34, v34, v39, 0x7fff
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v111, v95
	v_sub_f32_e32 v41, v96, v95
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v38, v38, 0, s16
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v40, v40
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v107.l, v37.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v41, v41
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v103.l, v38.h
	v_cmp_o_f32_e64 s16, v38, v38
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v18, v18, v94 :: v_dual_and_b32 v99, 1, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_dual_mul_f32 v29, v29, v94 :: v_dual_and_b32 v100, 1, v103
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v40, v40, 0, s18
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v20, v20, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v39, s15
	v_cndmask_b32_e64 v41, v41, 0, s19
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s15, v37, v37
	v_mov_b16_e32 v101.l, v40.h
	v_cmp_o_f32_e64 s19, v40, v40
	v_mov_b16_e32 v106.l, v39.h
	v_mov_b16_e32 v108.l, v41.h
	v_cmp_o_f32_e64 s18, v39, v39
	v_and_b32_e32 v101, 1, v101
	v_cmp_o_f32_e64 s21, v41, v41
	v_and_b32_e32 v102, 1, v106
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v22, v22, v94 :: v_dual_and_b32 v103, 1, v108
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v37, v37, v99, 0x7fff
	v_add3_u32 v38, v38, v100, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v39, v39, v102, 0x7fff
	v_add3_u32 v40, v40, v101, 0x7fff
	v_add3_u32 v41, v41, v103, 0x7fff
	v_cndmask_b16 v99.h, 0x7fff, v34.h, s14
	v_cndmask_b16 v99.l, 0x7fff, v35.h, s17
	v_cndmask_b16 v100.h, 0x7fff, v36.h, s20
	v_cndmask_b16 v100.l, 0x7fff, v37.h, s15
	v_cndmask_b16 v101.h, 0x7fff, v38.h, s16
	v_cndmask_b16 v101.l, 0x7fff, v39.h, s18
	v_cndmask_b16 v102.h, 0x7fff, v40.h, s19
	v_cndmask_b16 v102.l, 0x7fff, v41.h, s21
	v_permlanex16_b32 v35, v99, s25, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v100, s25, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v101, s25, 0xfedcba98 op_sel:[1,0]
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v94
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v41, v102, s25, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v35, v99, v91
	v_perm_b32 v35, v35, v99, v92
	v_perm_b32 v36, v37, v100, v91
	v_perm_b32 v37, v37, v100, v92
	v_perm_b32 v38, v39, v101, v91
	v_perm_b32 v39, v39, v101, v92
	v_perm_b32 v40, v41, v102, v91
	v_perm_b32 v41, v41, v102, v92
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[103:106], v83
	ds_load_b128 v[99:102], v98
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v94
	v_mul_f32_e32 v28, v28, v94
	v_mul_f32_e32 v30, v30, v94
	v_mul_f32_e32 v31, v31, v94
	v_mul_f32_e32 v32, v32, v94
	v_mul_f32_e32 v17, v17, v94
	v_mul_f32_e32 v19, v19, v94
	v_mul_f32_e32 v21, v21, v94
	v_mul_f32_e32 v23, v23, v94
	v_mul_f32_e32 v24, v24, v94
	v_mul_f32_e32 v11, v11, v94
	v_mul_f32_e32 v13, v13, v94
	v_mul_f32_e32 v15, v15, v94
	v_mul_f32_e32 v1, v1, v94
	v_mul_f32_e32 v3, v3, v94
	v_mul_f32_e32 v4, v4, v94
	v_mul_f32_e32 v5, v5, v94
	v_mul_f32_e32 v6, v6, v94
	v_mul_f32_e32 v7, v7, v94
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[99:106], v[34:41], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[99:102], v98 offset:512
	ds_load_b128 v[103:106], v83 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v94
	v_mul_f32_e32 v10, v10, v94
	v_mul_f32_e32 v12, v12, v94
	v_mul_f32_e32 v14, v14, v94
	v_mul_f32_e32 v16, v16, v94
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[99:106], v[34:41], v[17:24]
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v102, v112, v110, s4
	v_cndmask_b32_e64 v103, v110, v112, s4
	v_cndmask_b32_e64 v104, v96, v113, s4
	v_cndmask_b32_e64 v96, v113, v96, s4
	v_cndmask_b32_e64 v105, v97, v114, s4
	v_cndmask_b32_e64 v97, v114, v97, s4
	v_cndmask_b32_e64 v100, v111, v109, s4
	v_cndmask_b32_e64 v101, v109, v111, s4
	ds_bpermute_b32 v102, v77, v102
	ds_bpermute_b32 v103, v84, v103
	ds_bpermute_b32 v104, v77, v104
	ds_bpermute_b32 v96, v84, v96
	ds_bpermute_b32 v97, v84, v97
	ds_bpermute_b32 v105, v77, v105
	ds_bpermute_b32 v100, v77, v100
	ds_bpermute_b32 v101, v84, v101
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v99, v93, v93
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v106, v103, v102, s0
	v_cndmask_b32_e64 v102, v102, v103, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v103, v96, v104, s0
	v_cndmask_b32_e64 v96, v104, v96, s0
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	s_waitcnt lgkmcnt(3)
	v_max_f32_e32 v104, v97, v97
	s_waitcnt lgkmcnt(2)
	v_max_f32_e32 v107, v105, v105
.Ltmp7:
	.loc	1 967 26                        ; attention.py:967:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v108, v101, v100, s0
	v_cndmask_b32_e64 v109, v97, v105, s0
	v_cndmask_b32_e64 v97, v105, v97, s0
	v_cndmask_b32_e64 v105, v100, v101, s0
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v104, v107, v104
	v_max3_f32 v100, v100, v101, v106
	v_max3_f32 v101, v102, v103, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v100, v100, v101, v104
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_mov_b32_e32 v101, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v101, v101, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v100, v100, v101
.Ltmp11:
	.loc	1 969 24                        ; attention.py:969:24
	v_max_f32_e32 v61, v61, v100
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_max_f32 v107, v99, v100 :: v_dual_sub_f32 v96, v96, v61
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v99, v108, v61
	v_sub_f32_e32 v100, v105, v61
	v_sub_f32_e32 v101, v106, v61
	v_sub_f32_e32 v102, v102, v61
	v_sub_f32_e32 v103, v103, v61
	v_sub_f32_e32 v104, v109, v61
	v_sub_f32_e32 v97, v97, v61
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v96, v96
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v97, v97
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v2, v2, v94
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v99, 0, v99, s6
	v_cndmask_b32_e64 v100, 0, v100, s7
	v_cndmask_b32_e64 v101, 0, v101, s10
	v_cndmask_b32_e64 v102, 0, v102, s8
	v_cndmask_b32_e64 v103, 0, v103, s11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v96, 0, v96, s9
	v_cndmask_b32_e64 v104, 0, v104, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v97, 0, v97, s5
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v108, v99, v100 :: v_dual_add_f32 v109, v101, v102
	v_dual_add_f32 v96, v103, v96 :: v_dual_mul_f32 v9, v9, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v97, v104, v97
.Ltmp13:
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[103:106], v83 offset:1024
	ds_load_b128 v[99:102], v98 offset:1024
	v_mov_b32_e32 v94, v95
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v108, v108, v109
.Ltmp15:
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s5, 0xff800000, v93
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[99:106], v[34:41], v[9:16]
	.loc	1 970 74                        ; attention.py:970:74
	v_dual_sub_f32 v104, v93, v107 :: v_dual_add_f32 v109, v96, v97
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[96:99], v98 offset:1536
	ds_load_b128 v[100:103], v83 offset:1536
	v_mov_b32_e32 v106, v72
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v72, v104
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v105, v108, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp17:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_e32 v93, v105
.Ltmp18:
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v104, 0, v72, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
.Ltmp19:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_mov_b32_dpp v93, v93 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s5, s24, 16
	s_cmpk_lt_u32 s24, 0x1f0
	s_mov_b32 s24, s5
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v72, v105, v93 :: v_dual_mov_b32 v93, v107
.Ltmp22:
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[96:103], v[34:41], v[1:8]
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v72, v106, v104
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	ds_bpermute_b32 v0, v65, v72
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v33
	v_div_scale_f32 v39, null, v0, v0, v28
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v42, null, v0, v0, v30
	v_rcp_f32_e32 v45, v35
	v_rcp_f32_e32 v46, v37
	v_rcp_f32_e32 v47, v39
	v_rcp_f32_e32 v48, v41
	v_rcp_f32_e32 v61, v42
	v_fma_f32 v63, -v33, v44, 1.0
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_div_scale_f32 v36, s0, v26, v0, v26
	v_fma_f32 v64, -v35, v45, 1.0
	v_fma_f32 v65, -v37, v46, 1.0
	v_fmac_f32_e32 v44, v63, v44
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_fma_f32 v66, -v39, v47, 1.0
	v_fma_f32 v67, -v41, v48, 1.0
	v_dual_fmac_f32 v45, v64, v45 :: v_dual_fmac_f32 v46, v65, v46
	v_fma_f32 v63, -v42, v61, 1.0
	v_mul_f32_e32 v64, v34, v44
	v_div_scale_f32 v50, s5, v30, v0, v30
	v_fmac_f32_e32 v47, v66, v47
	v_dual_mul_f32 v65, v36, v45 :: v_dual_mul_f32 v66, v38, v46
	v_fmac_f32_e32 v61, v63, v61
	v_fmac_f32_e32 v48, v67, v48
	v_fma_f32 v67, -v33, v64, v34
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v69, -v35, v65, v36
	v_fma_f32 v70, -v37, v66, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v64, v67, v44
	v_mul_f32_e32 v68, v40, v47
	v_div_scale_f32 v43, null, v0, v0, v31
	v_div_scale_f32 v49, s4, v29, v0, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v33, v64, v34
	v_fmac_f32_e32 v65, v69, v45
	v_fma_f32 v71, -v39, v68, v40
	v_fmac_f32_e32 v66, v70, v46
	v_rcp_f32_e32 v62, v43
	v_div_fmas_f32 v33, v33, v44, v64
	v_fma_f32 v34, -v35, v65, v36
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v35, -v37, v66, v38
	v_mul_f32_e32 v37, v50, v61
	v_dual_mul_f32 v63, v49, v48 :: v_dual_fmac_f32 v68, v71, v47
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_scale_f32 v33, null, v0, v0, v32
	v_div_fmas_f32 v34, v34, v45, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v39, v68, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v39, v33
	v_div_fmas_f32 v35, v35, v46, v66
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v26, v34, v0, v26
	v_div_fmas_f32 v34, v36, v47, v68
	v_fma_f32 v38, -v43, v62, 1.0
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s1, v31, v0, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v28, v34, v0, v28
	v_fma_f32 v34, -v42, v37, v50
	v_fmac_f32_e32 v62, v38, v62
	v_fma_f32 v38, -v33, v39, 1.0
	v_fma_f32 v36, -v41, v63, v49
	v_div_scale_f32 v47, null, v0, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v37, v34, v61 :: v_dual_mul_f32 v34, v35, v62
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v38, s3, v32, v0, v32
	v_fmac_f32_e32 v63, v36, v48
	v_div_scale_f32 v36, null, v0, v0, v17
	v_fma_f32 v44, -v43, v34, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v38, v39
	v_fma_f32 v40, -v41, v63, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v41, v36
	v_fma_f32 v42, -v42, v37, v50
	v_fmac_f32_e32 v34, v44, v62
	v_fma_f32 v44, -v33, v45, v38
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v48, v63
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v43, v34, v35
	v_div_fmas_f32 v37, v42, v61, v37
	v_rcp_f32_e32 v42, v47
	v_fmac_f32_e32 v45, v44, v39
	v_div_scale_f32 v43, null, v0, v0, v19
	v_fma_f32 v46, -v36, v41, 1.0
	v_div_fixup_f32 v29, v40, v0, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v33, v45, v38
	v_rcp_f32_e32 v38, v43
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v37, v0, v30
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v40, -v47, v42, 1.0
	v_fmac_f32_e32 v41, v46, v41
	v_div_scale_f32 v46, s4, v17, v0, v17
	v_div_fmas_f32 v34, v35, v62, v34
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v40, v42
	v_div_fmas_f32 v33, v33, v39, v45
	v_fma_f32 v45, -v43, v38, 1.0
	v_mul_f32_e32 v37, v46, v41
	v_div_scale_f32 v44, null, v0, v0, v20
	v_div_scale_f32 v40, s1, v18, v0, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v45, v38
	v_fma_f32 v35, -v36, v37, v46
	v_div_fixup_f32 v31, v34, v0, v31
	v_div_fixup_f32 v32, v33, v0, v32
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v37, v35, v41
	v_rcp_f32_e32 v35, v44
	v_fma_f32 v33, -v36, v37, v46
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_div_scale_f32 v46, null, v0, v0, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v44, v35, 1.0
	v_fmac_f32_e32 v35, v45, v35
	v_div_scale_f32 v45, null, v0, v0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v48, v45
	v_mul_f32_e32 v39, v40, v42
	v_fma_f32 v34, -v47, v39, v40
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v39, v34, v42
	v_mul_f32_e32 v34, v36, v38
	v_div_fmas_f32 v33, v33, v41, v37
	v_rcp_f32_e32 v37, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v41, s4, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v33, -v47, v39, v40
	v_fma_f32 v40, -v43, v34, v36
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v46, v37, 1.0
	v_div_fmas_f32 v33, v33, v42, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v34, v40, v38
	v_div_scale_f32 v40, s1, v21, v0, v21
	v_fmac_f32_e32 v37, v49, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v43, v34, v36
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v45, v48, 1.0
	v_mul_f32_e32 v36, v40, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v38, v34
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v42, v48
	v_fma_f32 v38, -v46, v36, v40
	v_mul_f32_e32 v47, v41, v35
	v_div_scale_f32 v42, null, v0, v0, v23
	v_div_fixup_f32 v19, v33, v0, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v38, v37
	v_fma_f32 v39, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v46, v36, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v39, v35
	v_div_scale_f32 v39, s5, v22, v0, v22
	v_div_scale_f32 v46, null, v0, v0, v10
	v_fma_f32 v34, -v44, v47, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v48
	v_rcp_f32_e32 v41, v42
	v_div_scale_f32 v44, null, v0, v0, v24
	v_div_fmas_f32 v34, v34, v35, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v45, v43, v39
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v35, v44
	v_div_fmas_f32 v33, v33, v37, v36
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v43, v38, v48
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v42, v41, 1.0
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fma_f32 v36, -v45, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v41, v47, v41
	v_fma_f32 v38, -v44, v35, 1.0
	v_div_scale_f32 v39, s1, v24, v0, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v48, v43
	v_div_fixup_f32 v21, v33, v0, v21
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, null, v0, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v22, v36, v0, v22
	v_rcp_f32_e32 v36, v46
	v_mul_f32_e32 v45, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v33, -v44, v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v47, -v46, v36, 1.0
	v_mul_f32_e32 v37, v34, v41
	v_fmac_f32_e32 v45, v33, v35
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v47, v36
	v_fma_f32 v43, -v42, v37, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v43, v41
	v_fma_f32 v43, -v38, v40, 1.0
	v_fma_f32 v34, -v42, v37, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v43, v40
	v_div_fmas_f32 v34, v34, v41, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v37, -v44, v45, v39
	v_div_scale_f32 v41, s3, v10, v0, v10
	v_mul_f32_e32 v39, v33, v40
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v49, v41, v36
	v_div_fmas_f32 v35, v37, v35, v45
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v44, -v42, v43, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v46, v49, v41
	v_div_fixup_f32 v24, v35, v0, v24
	v_fmac_f32_e32 v39, v47, v40
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v11, v0, v11
	v_fmac_f32_e32 v49, v37, v36
	v_div_scale_f32 v37, null, v0, v0, v13
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v35, -v48, v50, 1.0
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v45, v44
	v_fmac_f32_e32 v50, v35, v50
	v_div_scale_f32 v35, s1, v12, v0, v12
	v_div_fmas_f32 v33, v33, v40, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v35, v50
	v_div_fmas_f32 v36, v38, v36, v49
	v_fma_f32 v38, -v42, v45, v44
	v_div_scale_f32 v40, null, v0, v0, v14
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_div_fmas_f32 v38, v38, v43, v45
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v41, -v37, v34, 1.0
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v35
	v_div_fixup_f32 v10, v36, v0, v10
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v11, v38, v0, v11
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	v_fma_f32 v36, -v40, v42, 1.0
	v_fma_f32 v35, -v48, v39, v35
	v_rcp_f32_e32 v44, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v43, -v37, v33, v41
	v_fmac_f32_e32 v42, v36, v42
	v_div_scale_f32 v36, s4, v14, v0, v14
	v_div_fmas_f32 v35, v35, v50, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v43, v34
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v39, v36, v42
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v35, v0, v12
	v_fma_f32 v35, -v37, v33, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v40, v39, v36
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v35, v34, v33
	v_div_scale_f32 v34, null, v0, v0, v1
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v0, v0, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v35, s1, v15, v0, v15
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v36, -v40, v39, v36
	v_mul_f32_e32 v40, v35, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_div_fmas_f32 v36, v36, v42, v39
	v_fma_f32 v39, -v38, v40, v35
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s4, v1, v0, v1
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v61, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_div_fixup_f32 v14, v36, v0, v14
	v_fma_f32 v35, -v38, v40, v35
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v61, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v61, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v61, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v40, null, v0, v0, v4
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v61
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fixup_f32 v1, v34, v0, v1
	v_div_scale_f32 v34, null, v0, v0, v5
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v61, v45, v39 :: v_dual_mul_f32 v62, v48, v41
	v_fmac_f32_e32 v49, v47, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v63, v50, v46
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v61, v45
	v_fma_f32 v47, -v37, v62, v48
	v_fma_f32 v33, -v34, v49, v33
	v_fma_f32 v34, -v44, v63, v50
	v_div_fmas_f32 v38, v38, v42, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v61, v40, v39 :: v_dual_fmac_f32 v62, v47, v41
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v63, v34, v46
	v_div_fmas_f32 v33, v33, v36, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v35, -v35, v61, v45
	v_fma_f32 v34, -v37, v62, v48
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v63, v50
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v35, v35, v39, v61
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v33, v0, v5
	v_div_fmas_f32 v34, v34, v41, v62
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v63
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s37, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s37, s33
	v_add_nc_u32_e32 v35, v32, v52
	v_add_nc_u32_e32 v32, s0, v32
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s37, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s23, 0xffff
	s_mov_b32 s4, s22
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v33, 16, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v38, v32, v52, 2
	v_add_lshl_u32 v39, v32, v60, 2
	v_add_lshl_u32 v40, v32, v59, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v35, v35, s0, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v38, s[4:7], 0 offen
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v40, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v58, 2
	v_add_lshl_u32 v25, v32, v57, 2
	v_add_lshl_u32 v26, v32, v56, 2
	v_add_lshl_u32 v38, v32, v55, 2
	v_add_lshl_u32 v39, v32, v54, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s37, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v38, 0x80000000, v38 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_clause 0x4
	buffer_store_b32 v27, v8, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v38, s[4:7], 0 offen
	buffer_store_b32 v31, v39, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v33, 2
	v_add_nc_u32_e32 v25, 0x48, v35
	v_add_nc_u32_e32 v26, 0x50, v35
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v35
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 32, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	s_clause 0x2
	buffer_store_b32 v17, v8, s[4:7], 0 offen
	buffer_store_b32 v18, v25, s[4:7], 0 offen
	buffer_store_b32 v19, v26, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v35
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v8, 0x80000000, v28
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s37, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v18, 0x70, v35
	v_add_nc_u32_e32 v19, 0x78, v35
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x1
	buffer_store_b32 v20, v27, s[4:7], 0 offen
	buffer_store_b32 v21, v8, s[4:7], 0 offen
	v_add_lshl_u32 v8, v32, v34, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v35
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v18, s[4:7], 0 offen
	buffer_store_b32 v24, v19, s[4:7], 0 offen
	buffer_store_b32 v9, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v35
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v35
	v_add_nc_u32_e32 v18, 0xa0, v35
	v_add_nc_u32_e32 v19, 0xa8, v35
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v52
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s37, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v11, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v35
	s_clause 0x2
	buffer_store_b32 v12, v9, s[4:7], 0 offen
	buffer_store_b32 v13, v10, s[4:7], 0 offen
	buffer_store_b32 v14, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v35
	v_add_lshl_u32 v10, v32, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v35
	v_add_nc_u32_e32 v12, 0xd0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v53
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[4:7], 0 offen
	buffer_store_b32 v16, v9, s[4:7], 0 offen
	buffer_store_b32 v1, v10, s[4:7], 0 offen
	buffer_store_b32 v2, v11, s[4:7], 0 offen
	buffer_store_b32 v3, v12, s[4:7], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v35
	v_add_nc_u32_e32 v2, 0xe0, v35
	v_add_nc_u32_e32 v3, 0xe8, v35
	v_add_nc_u32_e32 v8, 0xf0, v35
	v_add_lshl_u32 v9, v32, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v3, s[4:7], 0 offen
	buffer_store_b32 v7, v8, s[4:7], 0 offen
	buffer_store_b32 v0, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp23:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 115
		.amdhsa_next_free_sgpr 56
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 115
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 56
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9156
; TotalNumSgprs: 58
; NumVgprs: 115
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 58
; NumVGPRsForWavesPerEU: 115
; Occupancy: 12
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
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xint4_bf16_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     115
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
