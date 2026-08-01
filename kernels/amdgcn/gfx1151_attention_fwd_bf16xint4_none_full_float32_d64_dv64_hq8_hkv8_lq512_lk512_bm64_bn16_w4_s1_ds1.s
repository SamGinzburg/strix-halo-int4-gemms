	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x5c
	v_dual_mov_b32 v43, 0x5410 :: v_dual_and_b32 v42, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x10
	v_dual_mov_b32 v44, 0x7632 :: v_dual_lshlrev_b32 v1, 3, v42
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s30, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s11, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s30, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s10, s30, s11
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v46, 0x60, v0
	s_mov_b32 s15, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	s_mov_b32 s14, 0x7ffffffe
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v50, 16, v0
	s_clause 0x1
	s_load_b32 s29, s[0:1], 0x64
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s24, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s24, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s18, s24, 4
	s_lshl_b32 s19, s24, 5
	s_mul_i32 s20, s24, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s13, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s24, s10, v[81:82]
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s12, s4
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v48, 1, v0
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v45, 15, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v49, 0x70, v0
	v_dual_mov_b32 v26, v33 :: v_dual_lshlrev_b32 v1, 1, v2
	v_add_lshl_u32 v3, v2, s18, 1
	v_add_lshl_u32 v4, v2, s19, 1
	v_add_lshl_u32 v2, v2, s20, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_load_b64 s[20:21], s[0:1], 0x28
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[9:12], v1, s[12:15], 0 offen
	buffer_load_b128 v[13:16], v3, s[12:15], 0 offen
	buffer_load_b128 v[34:37], v4, s[12:15], 0 offen
	buffer_load_b128 v[38:41], v2, s[12:15], 0 offen
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v51, 7, v0
	v_bfe_i32 v52, v0, 0, 1
	v_dual_mov_b32 v31, v33 :: v_dual_lshlrev_b32 v42, 4, v42
	v_cmp_eq_u32_e64 s0, 0, v50
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v47, 4, v0
	v_dual_mov_b32 v22, v33 :: v_dual_lshlrev_b32 v53, 5, v0
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v48, 0x70, v48
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v50, 0x700, v51
	v_dual_mov_b32 v24, v33 :: v_dual_and_b32 v51, 0x90, v52
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v55, 1, v46
	v_cndmask_b32_e64 v43, 0x1054, v43, s0
	v_lshrrev_b32_e32 v49, 2, v49
	v_lshl_or_b32 v85, v45, 7, v42
	v_cndmask_b32_e64 v42, 0x3276, v44, s0
	v_bfe_i32 v54, v0, 2, 1
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v82, 2, v45
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v52, 0x160, v53
	v_mov_b32_e32 v2, v33
	v_or_b32_e32 v83, v55, v45
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v47, v47, v48
	v_lshl_or_b32 v43, v43, 8, v43
	v_xor_b32_e32 v44, v51, v49
	v_add_nc_u32_e32 v45, 0, v50
	v_lshl_or_b32 v46, v46, 6, v85
	v_lshl_or_b32 v42, v42, 8, v42
	v_mov_b32_e32 v23, v33
	v_mov_b32_e32 v3, v33
	v_dual_mov_b32 v4, v33 :: v_dual_add_nc_u32 v87, 0, v47
	v_dual_mov_b32 v6, v33 :: v_dual_and_b32 v43, 0x540054, v43
	v_and_or_b32 v86, 0x90, v54, v52
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v48, s30, v83
	v_xor_b32_e32 v47, 16, v85
	v_xor_b32_e32 v49, 32, v85
	v_xor_b32_e32 v50, 48, v85
	v_xor_b32_e32 v51, 64, v85
	v_xor_b32_e32 v52, 0x50, v85
	v_xor_b32_e32 v53, 0x60, v85
	v_xor_b32_e32 v54, 0x70, v85
	v_add_nc_u32_e32 v88, v45, v44
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v44, 0, v46
	v_and_b32_e32 v42, 0x760076, v42
	v_xad_u32 v45, v46, 16, 0
	v_xad_u32 v55, v46, 32, 0
	v_xad_u32 v56, v46, 48, 0
	v_xad_u32 v57, v46, 64, 0
	v_xad_u32 v61, 0x50, v46, 0
	v_xad_u32 v65, 0x60, v46, 0
	v_xad_u32 v69, 0x70, v46, 0
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v90, 0, v49
	v_dual_mov_b32 v7, v33 :: v_dual_add_nc_u32 v92, 0, v51
	v_dual_mov_b32 v8, v33 :: v_dual_add_nc_u32 v89, 0, v47
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v48
	v_lshl_or_b32 v74, v43, 4, v43
	v_add_nc_u32_e32 v91, 0, v50
	v_add_nc_u32_e32 v93, 0, v52
	v_add_nc_u32_e32 v94, 0, v53
	v_add_nc_u32_e32 v95, 0, v54
	v_lshl_or_b32 v75, v42, 4, v42
	v_xor_b32_e32 v73, 16, v86
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v98, 4, v0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v28, v33
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s25, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v96, 0, v73
	v_and_b32_e32 v97, 0x5040504, v74
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v99, 0x7060706, v75
	v_lshl_or_b32 v100, s3, 8, v98
	v_mov_b32_e32 v101, 0xff800000
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s29, s29, 0x3fb8aa3b
	s_mov_b32 s26, 0
	s_mov_b32 s27, 0x76543210
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s28, s3, 5
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
	s_and_b32 s13, s7, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s12, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v87, v[9:12]
	s_waitcnt vmcnt(2)
	ds_store_b128 v87, v[13:16] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v87, v[34:37] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[38:41] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v44
	ds_load_b128 v[45:48], v45
	ds_load_b128 v[49:52], v55
	ds_load_b128 v[53:56], v56
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v69
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v33
	v_mov_b32_e32 v11, v33
	v_mov_b32_e32 v12, v33
	v_mov_b32_e32 v13, v33
	v_mov_b32_e32 v14, v33
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v16, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s26, s11
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v40, v33
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s2, s2, s24
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v34, v33
	v_dual_mov_b32 v35, v33 :: v_dual_add_nc_u32 v102, 0, v85
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v103, s2, v81, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v80, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v78, v38 :: v_dual_mov_b32 v79, v39
	v_dual_mov_b32 v76, v36 :: v_dual_mov_b32 v75, v35
	v_dual_mov_b32 v77, v37 :: v_dual_mov_b32 v74, v34
	v_dual_mov_b32 v73, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v103
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[34:37], v34, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[34:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[102:105], v102
	ds_load_b128 v[106:109], v89
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[102:109], v[41:48], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[102:105], v90
	ds_load_b128 v[106:109], v91
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[102:109], v[49:56], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[102:105], v92
	ds_load_b128 v[106:109], v93
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[102:109], v[57:64], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[102:105], v94
	ds_load_b128 v[106:109], v95
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[102:109], v[65:72], v[73:80]
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v104.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v35, s29, v74
	v_mul_f32_e32 v37, s29, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, s29, v78 :: v_dual_mul_f32 v34, s29, v73
	v_mul_f32_e32 v73, s29, v80
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s0
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v36, s29, v75
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s0
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v38, s29, v77
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v39, 0xff800000, v39, s0
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v40, s29, v79
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v76, 0xff800000, v34, s0
	v_cndmask_b32_e64 v77, 0xff800000, v36, s0
	v_cndmask_b32_e64 v78, 0xff800000, v38, s0
	v_cndmask_b32_e64 v80, 0xff800000, v73, s0
	v_cndmask_b32_e64 v79, 0xff800000, v40, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v75.h, v104.l
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v34, v76, v35, v77
	v_max3_f32 v36, v37, v78, v39
.Ltmp2:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v74.h, v104.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v38, v79, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v34, v34, v36, v38
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v36, v34, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v34, v101, v34, v36
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v35, v35, v34
	v_sub_f32_e32 v36, v76, v34
	v_sub_f32_e32 v37, v37, v34
	v_sub_f32_e32 v39, v39, v34
	v_sub_f32_e32 v79, v79, v34
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v79, v79
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v80, v80, v34
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v35, 0, v35, s0
	v_cndmask_b32_e64 v36, 0, v36, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v37, 0, v37, s0
	v_cndmask_b32_e64 v39, 0, v39, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_cndmask_b32_e64 v103, 0, v79, s0
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v74.l, v35.h
	v_mov_b16_e32 v75.l, v36.h
	v_cmp_o_f32_e64 s2, v35, v35
	v_cmp_o_f32_e64 s3, v36, v36
	v_mov_b16_e32 v79.h, v104.l
	v_and_b32_e32 v38, 1, v74
	v_and_b32_e32 v40, 1, v75
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v38, v35, v38, 0x7fff
	v_add3_u32 v40, v36, v40, 0x7fff
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v36, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp7:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s2
	v_cndmask_b16 v38.l, 0x7fff, v40.h, s3
	v_cmp_o_f32_e64 s2, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v40, v38, s27, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v73, v40, v38, v97
	v_perm_b32 v74, v40, v38, v99
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v38, v77, v34
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v40.h, v104.l
	v_mov_b16_e32 v40.l, v37.h
	v_mov_b16_e32 v77.h, v104.l
	v_mov_b16_e32 v77.l, v39.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v40, 1, v40
	v_and_b32_e32 v77, 1, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v40, v37, v40, 0x7fff
	v_add3_u32 v77, v39, v77, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v38, 0, v38, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s2
	v_cmp_o_f32_e64 s2, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v75.l, v38.h
	v_cmp_o_f32_e64 s3, v38, v38
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v38, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp9:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v102.h, 0x7fff, v77.h, s2
	v_mov_b32_e32 v37, v84
	v_and_b32_e32 v75, 1, v75
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp11:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v75, v38, v75, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v75.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v76, v40, s27, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v75, v76, v40, v97
	v_perm_b32 v76, v76, v40, v99
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v40, v78, v34
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v78.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v40, v40
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v40, 0, v40, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v78.l, v40.h
	v_cmp_o_f32_e64 s3, v40, v40
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v38, v40, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp13:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v78, v40, v78, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v102.l, 0x7fff, v78.h, s3
	v_cmp_o_f32_e64 s3, v103, v103
	v_permlanex16_b32 v78, v102, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v77, v78, v102, v97
	v_perm_b32 v78, v78, v102, v99
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v102, 0, v80, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v80.h, v104.l
	v_mov_b16_e32 v80.l, v103.h
	v_mov_b16_e32 v79.l, v102.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s2, v102, v102
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v39, v103, v102 :: v_dual_and_b32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v79, 1, v79
	v_add3_u32 v80, v103, v80, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v38, v39
.Ltmp17:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v79, v102, v79, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v105.l, 0x7fff, v80.h, s3
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v35, v35, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v105.h, 0x7fff, v79.h, s2
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s2, s26, 1
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v36, v35, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v80, v105, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v84, v35, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v79, v80, v105, v97
	v_perm_b32 v80, v80, v105, v99
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v105, s2, v100
	v_mad_u64_u32 v[105:106], null, v105, s25, v[82:83]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v105, 0x80000000, v105, s1
	buffer_load_b32 v107, v105, s[16:19], 0 offen
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v104.h, v107.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v105, v107, 0, 8
	v_lshrrev_b32_e32 v106, 8, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v104.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s2, 0, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v105.l, 0, -16, s3
	v_or_b16 v108.l, v104.h, v105.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v104.h, 4, v107.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v104.h, v104.h, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.l, v104.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v109.l, v104.h, v105.l, s2
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v104.h, v106.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v105, v106, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v104.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s2, 0, v105.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v105.l, 0, -16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v110.l, v104.h, v105.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v104.h, 4, v106.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v110, v110, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v104.h, v104.h, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.l, v104.h, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v105.l, v104.h, v105.l, s2
	.loc	1 1001 53 is_stmt 1             ; attention.py:1001:53
	s_lshr_b32 s2, s26, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1001 25 is_stmt 0             ; attention.py:1001:25
	s_add_i32 s2, s2, s28
	s_mul_i32 s2, s2, s25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v105, v105, 0, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v106, s2, v82, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v111, v105
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v106, 0x80000000, v106, s1
	buffer_load_b64 v[105:106], v106, s[20:23], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v112, 0xffff0000, v105
	v_mov_b16_e32 v104.h, v105.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v105, v108, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v108.h, v104.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v111, v112, v111
	v_cvt_f32_i32_e32 v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s4, v111, v111
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v105, v104, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v108.l, v105.h
	v_cmp_o_f32_e64 s2, v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v108, 1, v108
	v_add3_u32 v105, v105, v108, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v108, v109, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v108, v108
	v_mul_f32_e32 v108, v104, v108
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v104.h, v107.h, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.l, v108.h
	v_cmp_o_f32_e64 s3, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v109, 1, v109
	v_add3_u32 v108, v108, v109, 0x7fff
	v_mov_b16_e32 v109.h, v104.l
	v_mov_b16_e32 v109.l, v111.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v110, v112, v110
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v108.l, 0x7fff, v105.h, s2
	v_cndmask_b16 v108.h, 0x7fff, v108.h, s3
	.loc	1 989 38 is_stmt 1              ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v104.h
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v109, 1, v109
	v_cmp_o_f32_e64 s5, v110, v110
	v_add_nc_u32_e32 v112, 0, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_add3_u32 v109, v111, v109, 0x7fff
	v_mov_b16_e32 v111.h, v104.l
	v_mov_b16_e32 v111.l, v110.h
	v_cndmask_b16 v105.h, 0x7fff, v109.h, s4
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v109, 24, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v111, 1, v111
	v_add3_u32 v110, v110, v111, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v105.l, 0x7fff, v110.h, s5
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v110, v109, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v88, v108, v105 offset1:8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v105.h, v106.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v105.l, v107.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v107, 20, v107
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v106, 0xffff0000, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v108, v105, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v105.l, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i16_e64 s2, 0, v105.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v105.l, 0, -16, s3
	v_or_b16 v108.l, v104.h, v105.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v105.l, v110.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v104.h, v107.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v108, v108, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v105.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v105.l, v104.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v107.l, v104.h, v105.l, s2
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v104.h, v109.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v107, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v104.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v105.l, 0, -16, s2
	v_or_b16 v110.l, v104.h, v105.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v104.h, 4, v109.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.l, v104.h, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v109.l, v104.h, v105.l, s3
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_mov_b16_e32 v105.l, v104.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v104.h, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v108, v105, v108
	v_mul_f32_e32 v105, v105, v107
	v_bfe_i32 v107, v109, 0, 16
	v_bfe_i32 v109, v110, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v105, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v107, v106, v107
	v_mul_f32_e32 v106, v106, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.h, v104.l
	v_mov_b16_e32 v109.l, v108.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s4, v107, v107
	v_cmp_o_f32_e64 s5, v106, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v109, 1, v109
	v_cmp_o_f32_e64 s2, v108, v108
	v_add3_u32 v108, v108, v109, 0x7fff
	v_mov_b16_e32 v109.h, v104.l
	v_mov_b16_e32 v109.l, v105.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v109, 1, v109
	v_add3_u32 v105, v105, v109, 0x7fff
	v_cndmask_b16 v105.l, 0x7fff, v108.h, s2
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v101
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v101, v101, v34
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v109.h, v104.l
	v_mov_b16_e32 v109.l, v107.h
	v_mov_b16_e32 v104.l, v106.h
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s3
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v101, v101
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v109, 1, v109
	v_add3_u32 v107, v107, v109, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v101, 0, v101, s2
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v104, 1, v104
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s2, s26, 16
	s_cmpk_lt_u32 s26, 0x1f0
	s_mov_b32 s26, s2
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v28, v28, v101
	v_mul_f32_e32 v29, v29, v101
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v104, v106, v104, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v30, v30, v101
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v106.h, 0x7fff, v107.h, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v31, v31, v101
	v_mul_f32_e32 v25, v25, v101
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v106.l, 0x7fff, v104.h, s5
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v26, v26, v101
	v_mul_f32_e32 v27, v27, v101
	v_mul_f32_e32 v32, v32, v101
	v_mul_f32_e32 v17, v17, v101
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v88, v105, v106 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[108:111], v96
	ds_load_b128 v[104:107], v112
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v18, v18, v101
	v_mul_f32_e32 v19, v19, v101
	v_mul_f32_e32 v20, v20, v101
	v_mul_f32_e32 v21, v21, v101
	v_mul_f32_e32 v22, v22, v101
	v_mul_f32_e32 v23, v23, v101
	v_mul_f32_e32 v24, v24, v101
	v_mul_f32_e32 v1, v1, v101
	v_mul_f32_e32 v2, v2, v101
	v_mul_f32_e32 v3, v3, v101
	v_mul_f32_e32 v4, v4, v101
	v_mul_f32_e32 v5, v5, v101
	v_mul_f32_e32 v6, v6, v101
	v_mul_f32_e32 v7, v7, v101
	v_mul_f32_e32 v8, v8, v101
	v_mul_f32_e32 v9, v9, v101
	v_mul_f32_e32 v10, v10, v101
	v_mul_f32_e32 v11, v11, v101
	v_mul_f32_e32 v12, v12, v101
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[104:111], v[73:80], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[104:107], v112 offset:512
	ds_load_b128 v[108:111], v96 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v13, v13, v101
	v_mul_f32_e32 v14, v14, v101
	v_mul_f32_e32 v15, v15, v101
	v_mul_f32_e32 v16, v16, v101
	.loc	1 1020 23                       ; attention.py:1020:23
	v_dual_fmac_f32 v84, v37, v101 :: v_dual_mov_b32 v101, v34
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[104:111], v[73:80], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[108:111], v96 offset:1024
	ds_load_b128 v[104:107], v112 offset:1024
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[104:111], v[73:80], v[1:8]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[102:105], v112 offset:1536
	ds_load_b128 v[106:109], v96 offset:1536
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[102:109], v[73:80], v[9:16]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v37, null, v84, v84, v25
	v_div_scale_f32 v45, null, v84, v84, v28
	v_div_scale_f32 v39, null, v84, v84, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v37
	v_rcp_f32_e32 v48, v45
	v_div_scale_f32 v40, vcc_lo, v25, v84, v25
	v_div_scale_f32 v47, s3, v28, v84, v28
	v_rcp_f32_e32 v42, v39
	v_div_scale_f32 v43, null, v84, v84, v27
	v_div_scale_f32 v41, s1, v26, v84, v26
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v37, v38, 1.0
	v_fma_f32 v53, -v45, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v43
	v_div_scale_f32 v44, s2, v27, v84, v27
	v_div_scale_f32 v50, null, v84, v84, v29
	v_fmac_f32_e32 v48, v53, v48
	v_fmac_f32_e32 v38, v33, v38
	v_fma_f32 v33, -v39, v42, 1.0
	v_div_scale_f32 v53, null, v84, v84, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v51, -v43, v46, 1.0
	v_mul_f32_e32 v49, v40, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v42, v33, v42
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v35, v0, 4, 1
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s9, s9, 0xffff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v46, v51, v46
	v_fma_f32 v36, -v37, v49, v40
	s_mov_b32 s11, 0x31027000
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v33, 48, v35
	v_or_b32_e32 v34, 32, v35
	v_or_b32_e32 v0, 62, v98
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v36, v38
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 16, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v49, v40
	v_mul_f32_e32 v40, v44, v46
	v_div_fmas_f32 v37, v37, v38, v49
	v_dual_mul_f32 v49, v47, v48 :: v_dual_mul_f32 v52, v41, v42
	v_rcp_f32_e32 v38, v50
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v25, v37, v84, v25
	v_div_scale_f32 v37, null, v84, v84, v30
	v_fma_f32 v51, -v39, v52, v41
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v84
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v52, v51, v42
	v_fma_f32 v51, -v43, v40, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v39, v52, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v40, v51, v46
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v51, -v50, v38, 1.0
	v_div_fmas_f32 v39, v39, v42, v52
	v_fma_f32 v42, -v45, v49, v47
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v51, v38
	v_div_fixup_f32 v26, v39, v84, v26
	v_fma_f32 v39, -v43, v40, v44
	v_fmac_f32_e32 v49, v42, v48
	v_div_scale_f32 v42, s4, v29, v84, v29
	v_fma_f32 v43, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v39, v46, v40
	v_fma_f32 v40, -v45, v49, v47
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v45, v42, v38
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, null, v84, v84, v31
	v_fmac_f32_e32 v41, v43, v41
	v_div_scale_f32 v46, s2, v30, v84, v30
	v_div_fmas_f32 v40, v40, v48, v49
	v_fma_f32 v48, -v50, v45, v42
	v_rcp_f32_e32 v43, v44
	v_div_scale_f32 v47, null, v84, v84, v32
	v_mul_f32_e32 v49, v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v45, v48, v38
	v_div_scale_f32 v48, null, v84, v84, v17
	v_rcp_f32_e32 v52, v47
	v_div_fixup_f32 v27, v39, v84, v27
	v_fma_f32 v39, -v37, v49, v46
	v_fma_f32 v42, -v50, v45, v42
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v51, -v44, v43, 1.0
	v_div_fixup_f32 v28, v40, v84, v28
	v_fmac_f32_e32 v49, v39, v41
	v_div_scale_f32 v40, s3, v31, v84, v31
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v37, v49, v46
	v_div_fmas_f32 v38, v42, v38, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v48, v50, 1.0
	v_fmac_f32_e32 v43, v51, v43
	v_fma_f32 v51, -v47, v52, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v38, v84, v29
	v_dual_fmac_f32 v50, v46, v50 :: v_dual_mul_f32 v39, v40, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, s5, v32, v84, v32
	v_div_scale_f32 v46, s2, v17, v84, v17
	v_fma_f32 v42, -v44, v39, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v51, v52
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v38, v46, v50
	v_div_fmas_f32 v37, v37, v41, v49
	v_rcp_f32_e32 v41, v53
	v_fmac_f32_e32 v39, v42, v43
	v_fma_f32 v42, -v47, v45, v51
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v37, v84, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v44, v39, v40
	v_fmac_f32_e32 v45, v42, v52
	v_div_scale_f32 v42, null, v84, v84, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v53, v41, 1.0
	v_div_fmas_f32 v37, v37, v43, v39
	v_fma_f32 v43, -v48, v38, v46
	v_fma_f32 v39, -v47, v45, v51
	v_div_scale_f32 v44, s3, v18, v84, v18
	v_fmac_f32_e32 v41, v40, v41
	v_rcp_f32_e32 v40, v42
	v_fmac_f32_e32 v38, v43, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v47, null, v84, v84, v20
	v_div_fmas_f32 v39, v39, v52, v45
	v_mul_f32_e32 v45, v44, v41
	v_div_fixup_f32 v31, v37, v84, v31
	v_fma_f32 v37, -v48, v38, v46
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v49, -v42, v40, 1.0
	v_rcp_f32_e32 v43, v47
	v_div_fixup_f32 v32, v39, v84, v32
	v_fma_f32 v39, -v53, v45, v44
	v_div_scale_f32 v46, s4, v19, v84, v19
	v_fmac_f32_e32 v40, v49, v40
	v_div_fmas_f32 v37, v37, v50, v38
	v_div_scale_f32 v50, null, v84, v84, v22
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v38, v46, v40 :: v_dual_fmac_f32 v45, v39, v41
	v_rcp_f32_e32 v52, v50
	v_fma_f32 v48, -v47, v43, 1.0
	v_div_fixup_f32 v17, v37, v84, v17
	v_div_scale_f32 v49, null, v84, v84, v21
	v_fma_f32 v37, -v53, v45, v44
	v_fma_f32 v44, -v42, v38, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v39, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v40
	v_div_fmas_f32 v37, v37, v41, v45
	v_fma_f32 v45, -v50, v52, 1.0
	v_fmac_f32_e32 v43, v48, v43
	v_div_scale_f32 v48, s2, v20, v84, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v18, v37, v84, v18
	v_fmac_f32_e32 v52, v45, v52
	v_div_scale_f32 v45, null, v84, v84, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v51, v48, v43
	v_fma_f32 v37, -v42, v38, v46
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v53, -v49, v39, 1.0
	v_fma_f32 v41, -v47, v51, v48
	v_div_fmas_f32 v37, v37, v40, v38
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v44, s3, v21, v84, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v51, v41, v43
	v_div_scale_f32 v42, s5, v22, v84, v22
	v_div_fixup_f32 v19, v37, v84, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v32, 0, v32, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v47, v51, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v47, v42, v52
	v_div_scale_f32 v48, null, v84, v84, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v51
	v_fma_f32 v51, -v45, v46, 1.0
	v_fmac_f32_e32 v39, v53, v39
	v_fma_f32 v43, -v50, v47, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v20, v38, v84, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v46, v51, v46 :: v_dual_mul_f32 v41, v44, v39
	v_fmac_f32_e32 v47, v43, v52
	v_div_scale_f32 v38, s2, v23, v84, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v49, v41, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v40, v39
	v_rcp_f32_e32 v40, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v37, -v49, v41, v44
	v_div_fmas_f32 v37, v37, v39, v41
	v_fma_f32 v39, -v50, v47, v42
	v_mul_f32_e32 v41, v38, v46
	v_div_scale_f32 v42, null, v84, v84, v1
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v48, v40, 1.0
	v_div_fmas_f32 v39, v39, v52, v47
	v_rcp_f32_e32 v44, v42
	v_fma_f32 v47, -v45, v41, v38
	v_div_scale_f32 v50, null, v84, v84, v2
	v_fmac_f32_e32 v40, v43, v40
	v_div_scale_f32 v43, s3, v24, v84, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v47, v46
	v_div_fixup_f32 v22, v39, v84, v22
	v_rcp_f32_e32 v39, v50
	v_mul_f32_e32 v49, v43, v40
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v47, -v42, v44, 1.0
	v_fma_f32 v38, -v45, v41, v38
	v_div_scale_f32 v45, null, v84, v84, v3
	v_div_fixup_f32 v21, v37, v84, v21
	v_fma_f32 v37, -v48, v49, v43
	v_fmac_f32_e32 v44, v47, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v51, -v50, v39, 1.0
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v49, v37, v40
	v_div_fmas_f32 v38, v38, v46, v41
	v_div_scale_f32 v46, s2, v2, v84, v2
	v_fmac_f32_e32 v39, v51, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v41, -v48, v49, v43
	v_div_scale_f32 v37, s4, v1, v84, v1
	v_fma_f32 v48, -v45, v47, 1.0
	v_div_scale_f32 v52, null, v84, v84, v4
	v_mul_f32_e32 v53, v46, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v43, v37, v44
	v_fmac_f32_e32 v47, v48, v47
	v_div_scale_f32 v48, s5, v3, v84, v3
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v54, v52
	v_div_fmas_f32 v40, v41, v40, v49
	v_fma_f32 v41, -v50, v53, v46
	v_mul_f32_e32 v49, v48, v47
	v_fma_f32 v51, -v42, v43, v37
	v_div_fixup_f32 v23, v38, v84, v23
	v_div_fixup_f32 v24, v40, v84, v24
	v_fmac_f32_e32 v53, v41, v39
	v_fma_f32 v38, -v45, v49, v48
	v_div_scale_f32 v41, null, v84, v84, v5
	v_fmac_f32_e32 v43, v51, v44
	v_fma_f32 v40, -v52, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v49, v38, v47
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v37, -v42, v43, v37
	v_fma_f32 v42, -v50, v53, v46
	v_fmac_f32_e32 v54, v40, v54
	v_div_scale_f32 v40, s3, v4, v84, v4
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v44, v43
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v44, null, v84, v84, v6
	v_div_fmas_f32 v39, v42, v39, v53
	v_fma_f32 v42, -v45, v49, v48
	v_mul_f32_e32 v43, v40, v54
	v_fma_f32 v45, -v41, v38, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v46, v44
	v_div_fmas_f32 v42, v42, v47, v49
	v_fma_f32 v47, -v52, v43, v40
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s2, v5, v84, v5
	v_div_fixup_f32 v1, v37, v84, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v47, v54
	v_div_fixup_f32 v2, v39, v84, v2
	v_mul_f32_e32 v37, v45, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v46, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v40, -v52, v43, v40
	v_div_fixup_f32 v3, v42, v84, v3
	v_fma_f32 v47, -v41, v37, v45
	v_div_scale_f32 v42, null, v84, v84, v7
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s4, v6, v84, v6
	v_div_fmas_f32 v40, v40, v54, v43
	v_fmac_f32_e32 v37, v47, v38
	v_rcp_f32_e32 v48, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v43, v39, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v40, v84, v4
	v_fma_f32 v40, -v41, v37, v45
	v_div_scale_f32 v47, null, v84, v84, v8
	v_fma_f32 v41, -v44, v43, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v37, v40, v38, v37
	v_div_scale_f32 v38, null, v84, v84, v9
	v_fma_f32 v45, -v42, v48, 1.0
	v_rcp_f32_e32 v49, v47
	v_fmac_f32_e32 v43, v41, v46
	v_rcp_f32_e32 v41, v38
	v_div_scale_f32 v40, s2, v7, v84, v7
	v_fmac_f32_e32 v48, v45, v48
	v_div_scale_f32 v45, null, v84, v84, v10
	v_div_fixup_f32 v5, v37, v84, v5
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v47, v49, 1.0
	v_rcp_f32_e32 v51, v45
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v38, v41, 1.0
	v_mul_f32_e32 v44, v40, v48
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v49, v37, v49
	v_div_scale_f32 v37, s3, v8, v84, v8
	v_fmac_f32_e32 v41, v50, v41
	v_div_scale_f32 v50, null, v84, v84, v11
	v_div_fmas_f32 v39, v39, v46, v43
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v37, v49
	v_div_scale_f32 v52, s4, v9, v84, v9
	v_fma_f32 v53, -v45, v51, 1.0
	v_rcp_f32_e32 v54, v50
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v43, -v47, v46, v37
	v_mul_f32_e32 v55, v52, v41
	v_fmac_f32_e32 v51, v53, v51
	v_div_scale_f32 v53, s5, v10, v84, v10
	v_div_fixup_f32 v6, v39, v84, v6
	v_fma_f32 v39, -v42, v44, v40
	v_fmac_f32_e32 v46, v43, v49
	v_fma_f32 v40, -v38, v55, v52
	v_mul_f32_e32 v42, v53, v51
	v_fma_f32 v43, -v50, v54, 1.0
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v37, -v47, v46, v37
	v_fmac_f32_e32 v55, v40, v41
	v_fma_f32 v40, -v45, v42, v53
	v_fmac_f32_e32 v54, v43, v54
	v_div_scale_f32 v43, s2, v11, v84, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v38, v55, v52
	v_fmac_f32_e32 v42, v40, v51
	v_div_fmas_f32 v39, v39, v48, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v40, v43, v54
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, null, v84, v84, v12
	v_div_fmas_f32 v37, v37, v49, v46
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v7, v39, v84, v7
	v_div_fmas_f32 v38, v38, v41, v55
	v_fma_f32 v41, -v45, v42, v53
	v_fma_f32 v45, -v50, v40, v43
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v8, v37, v84, v8
	v_div_fixup_f32 v9, v38, v84, v9
	v_div_scale_f32 v38, null, v84, v84, v13
	v_fmac_f32_e32 v40, v45, v54
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v48, null, v84, v84, v16
	v_div_fmas_f32 v41, v41, v51, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v37, -v50, v40, v43
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v44, v46, 1.0
	v_rcp_f32_e32 v50, v48
	v_div_fixup_f32 v10, v41, v84, v10
	v_div_fmas_f32 v37, v37, v54, v40
	v_rcp_f32_e32 v40, v38
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, null, v84, v84, v14
	v_div_scale_f32 v41, null, v84, v84, v15
	v_div_scale_f32 v42, vcc_lo, v12, v84, v12
	v_div_fixup_f32 v11, v37, v84, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	v_fma_f32 v37, -v38, v40, 1.0
	v_rcp_f32_e32 v45, v41
	v_mul_f32_e32 v47, v42, v46
	v_fma_f32 v54, -v48, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v37, v40
	v_div_scale_f32 v37, s2, v13, v84, v13
	v_fma_f32 v51, -v44, v47, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v39, v43, 1.0
	v_dual_fmac_f32 v50, v54, v50 :: v_dual_mul_f32 v53, v37, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v41, v45, 1.0
	v_fmac_f32_e32 v47, v51, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, s3, v14, v84, v14
	v_fma_f32 v51, -v38, v53, v37
	v_fmac_f32_e32 v45, v52, v45
	v_div_scale_f32 v52, s4, v15, v84, v15
	v_mul_f32_e32 v55, v49, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v53, v51, v40
	v_div_scale_f32 v54, s5, v16, v84, v16
	v_mul_f32_e32 v56, v52, v45
	v_fma_f32 v42, -v44, v47, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v37, -v38, v53, v37
	v_fma_f32 v44, -v39, v55, v49
	v_mul_f32_e32 v57, v54, v50
	v_fma_f32 v51, -v41, v56, v52
	v_div_fmas_f32 v42, v42, v46, v47
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v55, v44, v43
	v_div_fmas_f32 v37, v37, v40, v53
	v_fmac_f32_e32 v56, v51, v45
	v_fma_f32 v38, -v48, v57, v54
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v39, -v39, v55, v49
	v_div_fixup_f32 v13, v37, v84, v13
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v37, s10, v83
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v57, v38, v50
	v_fma_f32 v38, -v41, v56, v52
	v_div_fmas_f32 v39, v39, v43, v55
	s_mov_b32 vcc_lo, s4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v37, s25, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v48, v57, v54
	v_div_fmas_f32 v38, v38, v45, v56
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v39, v84, v14
	s_mov_b32 s10, 0x7ffffffe
	v_div_fmas_f32 v40, v40, v50, v57
	v_div_fixup_f32 v15, v38, v84, v15
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v38, v37, v35, 2
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s25, v35
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v42, v84, v12
	v_div_fixup_f32 v16, v40, v84, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	v_add_nc_u32_e32 v35, 8, v38
	v_add_nc_u32_e32 v39, 16, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v40, 0x80000000, v38 :: v_dual_cndmask_b32 v35, 0x80000000, v35
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x2
	buffer_store_b32 v25, v40, s[8:11], 0 offen
	buffer_store_b32 v26, v35, s[8:11], 0 offen
	buffer_store_b32 v27, v39, s[8:11], 0 offen
	v_add_nc_u32_e32 v25, 24, v38
	v_add_nc_u32_e32 v26, 32, v38
	v_add_nc_u32_e32 v27, 40, v38
	v_add_nc_u32_e32 v35, 48, v38
	v_add_nc_u32_e32 v39, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s25, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	s_clause 0x4
	buffer_store_b32 v28, v25, s[8:11], 0 offen
	buffer_store_b32 v29, v26, s[8:11], 0 offen
	buffer_store_b32 v30, v27, s[8:11], 0 offen
	buffer_store_b32 v31, v35, s[8:11], 0 offen
	buffer_store_b32 v32, v39, s[8:11], 0 offen
	v_add_lshl_u32 v25, v37, v36, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[8:11], 0 offen
	buffer_store_b32 v18, v26, s[8:11], 0 offen
	buffer_store_b32 v19, v27, s[8:11], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s25, v34
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[8:11], 0 offen
	v_add_nc_u32_e32 v19, 0x70, v38
	v_add_nc_u32_e32 v20, 0x78, v38
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	buffer_store_b32 v21, v17, s[8:11], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_dual_cndmask_b32 v19, 0x80000000, v19 :: v_dual_cndmask_b32 v20, 0x80000000, v20
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v22, v18, s[8:11], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[8:11], 0 offen
	buffer_store_b32 v24, v20, s[8:11], 0 offen
	buffer_store_b32 v1, v17, s[8:11], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_store_b32 v2, v17, s[8:11], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s25, v33
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v3, v1, s[8:11], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v4, v2, s[8:11], 0 offen
	buffer_store_b32 v5, v17, s[8:11], 0 offen
	buffer_store_b32 v6, v18, s[8:11], 0 offen
	v_add_nc_u32_e32 v2, 0xb8, v38
	v_add_lshl_u32 v3, v37, v33, 2
	v_add_nc_u32_e32 v4, 0xc8, v38
	v_add_nc_u32_e32 v5, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v0, v37, v0, 2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	v_cndmask_b32_e32 v5, 0x80000000, v5, vcc_lo
	s_clause 0x4
	buffer_store_b32 v7, v1, s[8:11], 0 offen
	buffer_store_b32 v8, v2, s[8:11], 0 offen
	buffer_store_b32 v9, v3, s[8:11], 0 offen
	buffer_store_b32 v10, v4, s[8:11], 0 offen
	buffer_store_b32 v11, v5, s[8:11], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v4, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_dual_cndmask_b32 v2, 0x80000000, v2 :: v_dual_cndmask_b32 v3, 0x80000000, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x4
	buffer_store_b32 v12, v1, s[8:11], 0 offen
	buffer_store_b32 v13, v2, s[8:11], 0 offen
	buffer_store_b32 v14, v3, s[8:11], 0 offen
	buffer_store_b32 v15, v4, s[8:11], 0 offen
	buffer_store_b32 v16, v0, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 113
		.amdhsa_next_free_sgpr 31
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
		.amdhsa_inst_pref_size 58
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 113
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7408
; TotalNumSgprs: 33
; NumVgprs: 113
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 113
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     113
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
