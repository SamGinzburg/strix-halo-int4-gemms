	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[14:15], s[0:1], 0x5c
	v_dual_mov_b32 v16, 0x5410 :: v_dual_and_b32 v15, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x10
	v_dual_mov_b32 v38, 0x7632 :: v_dual_lshlrev_b32 v1, 3, v15
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s30, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s25, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s30, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s24, s30, s25
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v40, 0x60, v0
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	s_mov_b32 s10, 0x7ffffffe
	v_dual_mov_b32 v25, 0 :: v_dual_lshlrev_b32 v42, 1, v0
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v46, 7, v0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s14, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s14, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s18, s14, 4
	s_lshl_b32 s19, s14, 5
	s_mul_i32 s20, s14, 48
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s9, s5, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s14, s24, v[81:82]
	.loc	1 788 26                        ; attention.py:788:26
	s_mov_b32 s8, s4
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v39, 15, v0
	v_dual_mov_b32 v32, v33 :: v_dual_and_b32 v43, 0x70, v0
	v_dual_mov_b32 v26, v33 :: v_dual_lshlrev_b32 v1, 1, v2
	v_add_lshl_u32 v3, v2, s18, 1
	v_add_lshl_u32 v4, v2, s19, 1
	v_add_lshl_u32 v2, v2, s20, 1
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v44, 4, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v5, 0x80000000, v3, s2
	v_cndmask_b32_e64 v9, 0x80000000, v4, s2
	v_cndmask_b32_e64 v10, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[1:4], v1, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v5, s[8:11], 0 offen
	buffer_load_b128 v[11:14], v9, s[8:11], 0 offen
	buffer_load_b128 v[34:37], v10, s[8:11], 0 offen
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v48, 5, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v45, 16, v0
	v_bfe_i32 v47, v0, 0, 1
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v15, 4, v15
	s_clause 0x2
	s_load_b32 s29, s[0:1], 0x64
	s_load_b64 s[12:13], s[0:1], 0x38
	s_load_b64 s[20:21], s[0:1], 0x28
	v_dual_mov_b32 v30, v33 :: v_dual_lshlrev_b32 v41, 4, v0
	v_bfe_i32 v49, v0, 2, 1
	v_dual_mov_b32 v29, v33 :: v_dual_and_b32 v42, 0x70, v42
	v_mov_b32_e32 v31, v33
	v_mov_b32_e32 v19, v33
	v_mov_b32_e32 v22, v33
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v50, 1, v40
	v_lshl_or_b32 v87, s3, 8, v44
	v_cmp_eq_u32_e64 s1, 0, v45
	v_and_b32_e32 v44, 0x700, v46
	v_lshrrev_b32_e32 v43, 2, v43
	v_and_b32_e32 v45, 0x90, v47
	v_and_b32_e32 v46, 0x160, v48
	v_lshl_or_b32 v88, v39, 7, v15
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v82, 2, v39
	v_mov_b32_e32 v24, v33
	v_or_b32_e32 v85, v50, v39
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v41, v41, v42
	v_cndmask_b32_e64 v15, 0x3276, v38, s1
	v_xor_b32_e32 v38, v45, v43
	v_add_nc_u32_e32 v39, 0, v44
	v_and_or_b32 v89, 0x90, v49, v46
	v_lshl_or_b32 v40, v40, 6, v88
	v_dual_mov_b32 v21, v33 :: v_dual_add_nc_u32 v90, 0, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v10, v33 :: v_dual_add_nc_u32 v91, v39, v38
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v42, s30, v85
	v_xor_b32_e32 v41, 16, v88
	v_xor_b32_e32 v43, 32, v88
	v_xor_b32_e32 v44, 48, v88
	v_xor_b32_e32 v45, 64, v88
	v_xor_b32_e32 v46, 0x50, v88
	v_xor_b32_e32 v47, 0x60, v88
	v_xor_b32_e32 v48, 0x70, v88
	v_xor_b32_e32 v49, 16, v89
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v38, 0, v40
	v_xad_u32 v39, v40, 16, 0
	v_xad_u32 v50, v40, 32, 0
	v_xad_u32 v53, v40, 48, 0
	v_xad_u32 v57, v40, 64, 0
	v_xad_u32 v61, 0x50, v40, 0
	v_xad_u32 v65, 0x60, v40, 0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x200, v42
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v40, 0x70, v40, 0
	v_add_nc_u32_e32 v92, 0, v41
	v_add_nc_u32_e32 v93, 0, v43
	v_add_nc_u32_e32 v94, 0, v44
	v_add_nc_u32_e32 v95, 0, v45
	v_add_nc_u32_e32 v96, 0, v46
	v_add_nc_u32_e32 v97, 0, v47
	v_add_nc_u32_e32 v98, 0, v48
	v_add_nc_u32_e32 v99, 0, v49
	v_cndmask_b32_e64 v16, 0x1054, v16, s1
	v_lshl_or_b32 v15, v15, 8, v15
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s2, s15, v82
	v_mov_b32_e32 v86, 0
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s29, s29, 0x3fb8aa3b
	v_lshl_or_b32 v16, v16, 8, v16
	v_mov_b32_e32 v23, v33
	v_and_b32_e32 v15, 0x760076, v15
	s_mov_b32 s26, 0
	s_mov_b32 s27, 0x76543210
	v_and_b32_e32 v16, 0x540054, v16
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s28, s3, 5
	s_mov_b32 s18, s10
	s_mov_b32 s19, s11
	s_mov_b32 s22, s10
	v_lshl_or_b32 v16, v16, 4, v16
	s_mov_b32 s23, s11
	s_and_b32 s9, s7, 0xffff
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s21, s21, 0xffff
	v_and_b32_e32 v83, 0x5040504, v16
	v_mov_b32_e32 v16, v33
	s_mov_b32 s8, s6
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v90, v[1:4]
	s_waitcnt vmcnt(2)
	ds_store_b128 v90, v[5:8] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v90, v[11:14] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v90, v[34:37] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v11, v33
	ds_load_b128 v[41:44], v38
	ds_load_b128 v[45:48], v39
	ds_load_b128 v[49:52], v50
	ds_load_b128 v[53:56], v53
	ds_load_b128 v[57:60], v57
	ds_load_b128 v[61:64], v61
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v40
	v_mov_b32_e32 v12, v33
	v_lshl_or_b32 v15, v15, 4, v15
	v_mov_b32_e32 v13, v33
	v_dual_mov_b32 v14, v33 :: v_dual_mov_b32 v1, 0
	v_mov_b32_e32 v2, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v5, v33 :: v_dual_and_b32 v84, 0x7060706, v15
	v_mov_b32_e32 v15, v33
	v_mov_b32_e32 v3, v33
	v_mov_b32_e32 v4, v33
	v_mov_b32_e32 v6, v33
	v_dual_mov_b32 v7, v33 :: v_dual_mov_b32 v100, 0xff800000
	v_mov_b32_e32 v8, v33
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s3, s26, s25
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v40, v33
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s3, s3, s14
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v34, v33 :: v_dual_add_nc_u32 v101, 0, v88
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v102, s3, v81, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v80, v40
	v_dual_mov_b32 v78, v38 :: v_dual_mov_b32 v77, v37
	v_dual_mov_b32 v79, v39 :: v_dual_mov_b32 v76, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v75, v35 :: v_dual_mov_b32 v74, v34
	v_dual_mov_b32 v73, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v102
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[34:37], v34, s[8:11], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v90, v[34:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[101:104], v101
	ds_load_b128 v[105:108], v92
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v34.l, 0
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[101:108], v[41:48], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[101:104], v93
	ds_load_b128 v[105:108], v94
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[101:108], v[49:56], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[101:104], v95
	ds_load_b128 v[105:108], v96
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[101:108], v[57:64], v[73:80]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[101:104], v97
	ds_load_b128 v[105:108], v98
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[101:108], v[65:72], v[73:80]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v35, s29, v73 :: v_dual_mul_f32 v36, s29, v74
	v_dual_mul_f32 v37, s29, v75 :: v_dual_mul_f32 v38, s29, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v39, s29, v77 :: v_dual_mul_f32 v40, s29, v78
	v_dual_mul_f32 v73, s29, v79 :: v_dual_mul_f32 v74, s29, v80
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v77, 0xff800000, v35, s0
	v_cndmask_b32_e64 v36, 0xff800000, v36, s0
	v_cndmask_b32_e64 v78, 0xff800000, v37, s0
	v_cndmask_b32_e64 v38, 0xff800000, v38, s0
	v_cndmask_b32_e64 v79, 0xff800000, v39, s0
	v_cndmask_b32_e64 v40, 0xff800000, v40, s0
	v_cndmask_b32_e64 v80, 0xff800000, v73, s0
	v_cndmask_b32_e64 v102, 0xff800000, v74, s0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v35, v77, v36, v78
.Ltmp2:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v76.h, v34.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v37, v38, v79, v40
.Ltmp4:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v75.h, v34.l
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v39, v80, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v35, v35, v37, v39
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v37, v35, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v35, v100, v35, v37
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v37, v77, v35
	v_sub_f32_e32 v38, v38, v35
	v_sub_f32_e32 v80, v80, v35
	v_sub_f32_e32 v40, v40, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v37, v37
	v_exp_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v40, v40
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v37, 0, v37, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v38, 0, v38, s0
	v_cndmask_b32_e64 v103, 0, v80, s0
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v80.h, v34.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v40, 0, v40, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v76.l, v37.h
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v36, v36, v35
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s4, v37, v37
	v_mov_b16_e32 v80.l, v103.h
	v_and_b32_e32 v73, 1, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v36, v36
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v80, 1, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v73, v37, v73, 0x7fff
	v_add3_u32 v80, v103, v80, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v36, 0, v36, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v75.l, v36.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v36, v36
	v_and_b32_e32 v39, 1, v75
	v_mov_b16_e32 v75.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add3_u32 v39, v36, v39, 0x7fff
	v_cndmask_b16 v39.l, 0x7fff, v73.h, s4
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v36, v37, v36 :: v_dual_and_b32 v75, 1, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	v_cmp_o_f32_e64 s3, v38, v38
	v_add3_u32 v75, v38, v75, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v74, v39, s27, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v77.h, 0x7fff, v75.h, s3
	v_cmp_o_f32_e64 s3, v40, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v73, v74, v39, v83
	v_perm_b32 v74, v74, v39, v84
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v39, v78, v35
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v78.h, v34.l
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v39, 0, v39, s0
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v76.l, v39.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v39, v39
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v37, v39, v38 :: v_dual_and_b32 v76, 1, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_f32_e32 v36, v36, v37
.Ltmp11:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v76, v39, v76, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v77.l, 0x7fff, v76.h, s4
	v_permlanex16_b32 v76, v77, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v75, v76, v77, v83
	v_perm_b32 v76, v76, v77, v84
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v77, v79, v35
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v101, 0, v77, s0
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v77.h, v34.l
	v_mov_b16_e32 v77.l, v40.h
	v_mov_b16_e32 v78.l, v101.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s4, v101, v101
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v38, v101, v40 :: v_dual_and_b32 v77, 1, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v78, 1, v78
	v_add3_u32 v77, v40, v77, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v78, v101, v78, 0x7fff
	v_cndmask_b16 v79.h, 0x7fff, v77.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v79.l, 0x7fff, v78.h, s4
	v_cmp_o_f32_e64 s4, v103, v103
	v_permlanex16_b32 v78, v79, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v104.l, 0x7fff, v80.h, s4
	v_perm_b32 v77, v78, v79, v83
	v_perm_b32 v78, v78, v79, v84
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v79, v102, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v79, v79
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v102, 0, v79, s0
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v79.h, v34.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v79.l, v102.h
	v_cmp_o_f32_e64 s3, v102, v102
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v39, v103, v102
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_and_b32_e32 v79, 1, v79
.Ltmp16:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v37, v38, v39
	v_mov_b32_e32 v38, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp17:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v79, v102, v79, 0x7fff
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v36, v36, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v104.h, 0x7fff, v79.h, s3
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s3, s26, 1
.Ltmp20:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v37, v36, s27, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp21:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_permlanex16_b32 v80, v104, s27, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v86, v36, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp23:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_perm_b32 v79, v80, v104, v83
	v_perm_b32 v80, v80, v104, v84
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v104, s3, v87
	v_mad_u64_u32 v[104:105], null, v104, s15, v[82:83]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v104, 0x80000000, v104, s2
	buffer_load_b32 v106, v104, s[16:19], 0 offen
	.loc	1 986 76                        ; attention.py:986:76
	s_waitcnt vmcnt(0)
	v_and_b16 v34.h, v106.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v104, v106, 0, 8
	v_lshrrev_b32_e32 v105, 8, v106
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v34.h
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v104.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v104.l, 0, -16, s4
	v_or_b16 v107.l, v34.h, v104.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v34.h, 4, v106.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v34.h, v34.h, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v104.l, v34.h, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v108.l, v34.h, v104.l, s3
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v34.h, v105.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v104, v105, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v104.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v104.l, 0, -16, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v109.l, v34.h, v104.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v34.h, 4, v105.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v109, v109, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.h, v34.h, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v104.l, v34.h, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v104.l, v34.h, v104.l, s3
	.loc	1 1001 53 is_stmt 1             ; attention.py:1001:53
	s_lshr_b32 s3, s26, 4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1001 25 is_stmt 0             ; attention.py:1001:25
	s_add_i32 s3, s3, s28
	s_mul_i32 s3, s3, s15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_bfe_i32 v104, v104, 0, 16
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v105, s3, v82, 1
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v110, v104
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v105, 0x80000000, v105, s2
	buffer_load_b64 v[104:105], v105, s[20:23], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v111, 0xffff0000, v104
	v_mov_b16_e32 v34.h, v104.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v104, v107, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v107.h, v34.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v110, v111, v110
	v_mul_f32_e32 v109, v111, v109
	v_cvt_f32_i32_e32 v104, v104
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s5, v110, v110
	v_cmp_o_f32_e64 s6, v109, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v104, v34, v104
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v107.l, v104.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v104, v104
	v_and_b32_e32 v107, 1, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v104, v104, v107, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v108, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v108.h, v34.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v107, v34, v107
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v34.h, v106.h, 15
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v108.l, v107.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s4, v107, v107
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e32 v108.h, v34.l
	v_mov_b16_e32 v108.l, v110.h
	v_cndmask_b16 v107.l, 0x7fff, v104.h, s3
	v_cndmask_b16 v107.h, 0x7fff, v107.h, s4
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s4, 7, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v108, 1, v108
	v_add3_u32 v108, v110, v108, 0x7fff
	v_mov_b16_e32 v110.h, v34.l
	v_mov_b16_e32 v110.l, v109.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v104.h, 0x7fff, v108.h, s5
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v108, 24, v106
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v110, 1, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v109, v109, v110, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v109.h, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v109, v108, 0, 8
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v91, v107, v104 offset1:8
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v104.h, v105.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v104.l, v106.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v106, 20, v106
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v105, 0xffff0000, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v107, v104, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v104.l, v107.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i16_e64 s3, 0, v104.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v104.l, 0, -16, s4
	v_or_b16 v107.l, v34.h, v104.l
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v104.l, v109.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v34.h, v106.l, 15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v107, v107, 0, 16
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v104.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 990 56 is_stmt 0              ; attention.py:990:56
	v_or_b16 v104.l, v34.h, -16
	.loc	1 1017 31 is_stmt 1             ; attention.py:1017:31
	v_cvt_f32_i32_e32 v107, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v106.l, v34.h, v104.l, s3
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v34.h, v108.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v106, v106, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v34.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v106, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v104.l, 0, -16, s3
	v_or_b16 v109.l, v34.h, v104.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v34.h, 4, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v104.l, v34.h, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v108.l, v34.h, v104.l, s4
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_mov_b16_e32 v104.l, v34.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v107, v104, v107
	v_mul_f32_e32 v104, v104, v106
	v_bfe_i32 v106, v108, 0, 16
	v_bfe_i32 v108, v109, 0, 16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v107, v107
	v_cmp_o_f32_e64 s4, v104, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v106, v105, v106
	v_mul_f32_e32 v105, v105, v108
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v108.h, v34.l
	v_mov_b16_e32 v108.l, v107.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s5, v106, v106
	v_cmp_o_f32_e64 s6, v105, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v108, 1, v108
	v_add3_u32 v107, v107, v108, 0x7fff
	v_mov_b16_e32 v108.h, v34.l
	v_mov_b16_e32 v108.l, v104.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v108, 1, v108
	v_add3_u32 v104, v104, v108, 0x7fff
	v_cndmask_b16 v104.l, 0x7fff, v107.h, s3
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v100
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v100, v100, v35
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_mov_b16_e32 v108.h, v34.l
	v_mov_b16_e32 v108.l, v106.h
	v_cndmask_b16 v104.h, 0x7fff, v104.h, s4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v100, v100
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v108, 1, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_add3_u32 v106, v106, v108, 0x7fff
	v_mov_b16_e32 v108.h, v34.l
	v_mov_b16_e32 v108.l, v105.h
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v112, 0, v100, s3
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add_nc_u32_e32 v100, 0, v89
	v_cndmask_b16 v106.h, 0x7fff, v106.h, s5
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s3, s26, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v108, 1, v108
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v27, v27, v112
	v_mul_f32_e32 v25, v25, v112
	v_mul_f32_e32 v26, v26, v112
	v_mul_f32_e32 v28, v28, v112
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v105, v105, v108, 0x7fff
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v112
	v_mul_f32_e32 v30, v30, v112
	v_mul_f32_e32 v31, v31, v112
	v_mul_f32_e32 v32, v32, v112
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v106.l, 0x7fff, v105.h, s6
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v112
	v_mul_f32_e32 v18, v18, v112
	v_mul_f32_e32 v19, v19, v112
	v_mul_f32_e32 v20, v20, v112
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v91, v104, v106 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[108:111], v99
	ds_load_b128 v[104:107], v100
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v21, v21, v112
	v_mul_f32_e32 v22, v22, v112
	v_mul_f32_e32 v23, v23, v112
	v_mul_f32_e32 v24, v24, v112
	v_mul_f32_e32 v9, v9, v112
	v_mul_f32_e32 v10, v10, v112
	v_mul_f32_e32 v11, v11, v112
	v_mul_f32_e32 v12, v12, v112
	v_mul_f32_e32 v13, v13, v112
	v_mul_f32_e32 v14, v14, v112
	v_mul_f32_e32 v15, v15, v112
	v_mul_f32_e32 v16, v16, v112
	v_mul_f32_e32 v1, v1, v112
	v_mul_f32_e32 v2, v2, v112
	v_mul_f32_e32 v3, v3, v112
	v_mul_f32_e32 v4, v4, v112
	v_mul_f32_e32 v5, v5, v112
	v_mul_f32_e32 v6, v6, v112
	v_mul_f32_e32 v7, v7, v112
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[104:111], v[73:80], v[25:32]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[104:107], v100 offset:512
	ds_load_b128 v[108:111], v99 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v8, v8, v112
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v86, v38, v112
	.loc	1 903 13                        ; attention.py:903:13
	s_cmpk_lt_u32 s26, 0x1f0
	s_mov_b32 s26, s3
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[104:111], v[73:80], v[17:24]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[108:111], v99 offset:1024
	ds_load_b128 v[104:107], v100 offset:1024
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[104:111], v[73:80], v[9:16]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[104:107], v100 offset:1536
	ds_load_b128 v[108:111], v99 offset:1536
	v_mov_b32_e32 v100, v35
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[104:111], v[73:80], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v36, null, v86, v86, v25
	v_div_scale_f32 v37, null, v86, v86, v26
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v41, vcc_lo, v25, v86, v25
	v_rcp_f32_e32 v40, v37
	v_div_scale_f32 v39, null, v86, v86, v27
	v_div_scale_f32 v42, s2, v26, v86, v26
	v_div_scale_f32 v44, null, v86, v86, v28
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v36, v38, 1.0
	v_rcp_f32_e32 v43, v39
	v_div_scale_f32 v48, null, v86, v86, v29
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v37, v40, 1.0
	v_dual_fmac_f32 v38, v33, v38 :: v_dual_and_b32 v33, 8, v0
	v_rcp_f32_e32 v46, v44
	v_div_scale_f32 v45, s3, v27, v86, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_dual_fmac_f32 v40, v35, v40 :: v_dual_mul_f32 v47, v41, v38
	v_fma_f32 v0, -v39, v43, 1.0
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v49, v42, v40
	v_fma_f32 v35, -v36, v47, v41
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v0, v43
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v0, 48, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v52, -v37, v49, v42
	v_fmac_f32_e32 v47, v35, v38
	v_fmac_f32_e32 v46, v50, v46
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 32, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v49, v52, v40
	v_fma_f32 v36, -v36, v47, v41
	v_rcp_f32_e32 v41, v48
	v_div_scale_f32 v52, s4, v28, v86, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v37, v49, v42
	v_div_fmas_f32 v38, v36, v38, v47
	v_div_scale_f32 v42, null, v86, v86, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v52, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v25, v38, v86, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v48, v41, 1.0
	v_div_fmas_f32 v37, v37, v40, v49
	v_fma_f32 v40, -v44, v47, v52
	v_div_scale_f32 v49, null, v86, v86, v31
	v_fmac_f32_e32 v41, v38, v41
	v_rcp_f32_e32 v38, v42
	v_mul_f32_e32 v51, v45, v43
	v_fmac_f32_e32 v47, v40, v46
	v_rcp_f32_e32 v40, v49
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v37, v37, v86, v26
	v_fma_f32 v50, -v39, v51, v45
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v36, 16, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v43
	v_fma_f32 v50, -v42, v38, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v39, v51, v45
	v_div_scale_f32 v45, s2, v29, v86, v29
	v_fmac_f32_e32 v38, v50, v38
	v_fma_f32 v50, -v49, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v39, v39, v43, v51
	v_mul_f32_e32 v43, v45, v41
	v_div_scale_f32 v51, null, v86, v86, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v50, v40
	v_div_fixup_f32 v26, v39, v86, v27
	v_fma_f32 v27, -v44, v47, v52
	v_fma_f32 v39, -v48, v43, v45
	v_div_scale_f32 v44, s3, v30, v86, v30
	v_div_scale_f32 v50, null, v86, v86, v17
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v43, v39, v41
	v_div_fmas_f32 v27, v27, v46, v47
	v_mul_f32_e32 v39, v44, v38
	v_rcp_f32_e32 v46, v51
	v_rcp_f32_e32 v52, v50
	v_div_scale_f32 v47, s4, v31, v86, v31
	v_div_fixup_f32 v28, v27, v86, v28
	v_fma_f32 v27, -v48, v43, v45
	v_fma_f32 v45, -v42, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v48, v47, v40
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v53, -v51, v46, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v39, v45, v38
	v_fma_f32 v45, -v50, v52, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v46, v53, v46
	v_fmac_f32_e32 v52, v45, v52
	v_div_fmas_f32 v27, v27, v41, v43
	v_fma_f32 v41, -v49, v48, v47
	v_div_scale_f32 v43, s2, v32, v86, v32
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v27, v27, v86, v29
	v_fma_f32 v29, -v42, v39, v44
	v_dual_fmac_f32 v48, v41, v40 :: v_dual_mul_f32 v41, v43, v46
	v_div_scale_f32 v42, s5, v17, v86, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v29, v29, v38, v39
	v_fma_f32 v38, -v49, v48, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v51, v41, v43
	v_div_scale_f32 v49, null, v86, v86, v19
	v_mul_f32_e32 v47, v42, v52
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v41, v39, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v39, v49
	v_div_fmas_f32 v38, v38, v40, v48
	v_fma_f32 v40, -v50, v47, v42
	v_div_scale_f32 v44, null, v86, v86, v18
	v_div_fixup_f32 v30, v29, v86, v30
	v_div_fixup_f32 v29, v38, v86, v31
	v_fma_f32 v31, -v51, v41, v43
	v_fmac_f32_e32 v47, v40, v52
	v_div_scale_f32 v43, null, v86, v86, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_fma_f32 v40, -v49, v39, 1.0
	v_rcp_f32_e32 v45, v44
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v38, s3, v18, v86, v18
	v_fmac_f32_e32 v39, v40, v39
	v_rcp_f32_e32 v40, v43
	v_div_fmas_f32 v31, v31, v46, v41
	v_fma_f32 v41, -v50, v47, v42
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v46, s2, v19, v86, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v44, v45, 1.0
	v_div_fmas_f32 v41, v41, v52, v47
	v_div_fixup_f32 v31, v31, v86, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v46, v39
	v_fma_f32 v51, -v43, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v17, v41, v86, v17
	v_div_scale_f32 v41, s4, v20, v86, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v51, v40 :: v_dual_fmac_f32 v45, v48, v45
	v_div_scale_f32 v48, null, v86, v86, v21
	v_fma_f32 v32, -v49, v50, v46
	v_mul_f32_e32 v42, v38, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v52, v48
	v_fmac_f32_e32 v50, v32, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v47, -v44, v42, v38
	v_fmac_f32_e32 v42, v47, v45
	v_div_scale_f32 v47, null, v86, v86, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v51, -v48, v52, 1.0
	v_fma_f32 v38, -v44, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v53, v47
	v_mul_f32_e32 v44, v41, v40
	v_fmac_f32_e32 v52, v51, v52
	v_div_scale_f32 v51, s5, v21, v86, v21
	v_div_fmas_f32 v32, v38, v45, v42
	v_fma_f32 v38, -v49, v50, v46
	v_fma_f32 v42, -v43, v44, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v45, v51, v52
	v_div_scale_f32 v49, null, v86, v86, v23
	v_fma_f32 v46, -v47, v53, 1.0
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v44, v42, v40
	v_div_fmas_f32 v38, v38, v39, v50
	v_rcp_f32_e32 v39, v49
	v_fma_f32 v42, -v48, v45, v51
	v_fmac_f32_e32 v53, v46, v53
	v_div_scale_f32 v46, s2, v22, v86, v22
	v_div_fixup_f32 v32, v32, v86, v18
	v_div_fixup_f32 v18, v38, v86, v19
	v_fma_f32 v19, -v43, v44, v41
	v_fmac_f32_e32 v45, v42, v52
	v_mul_f32_e32 v41, v46, v53
	v_div_scale_f32 v42, null, v86, v86, v24
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v49, v39, 1.0
	v_div_fmas_f32 v19, v19, v40, v44
	v_fma_f32 v43, -v47, v41, v46
	v_rcp_f32_e32 v44, v42
	v_div_scale_f32 v50, null, v86, v86, v9
	v_fma_f32 v40, -v48, v45, v51
	v_fmac_f32_e32 v39, v38, v39
	v_div_scale_f32 v48, s3, v23, v86, v23
	v_fmac_f32_e32 v41, v43, v53
	v_rcp_f32_e32 v43, v50
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v51, -v42, v44, 1.0
	v_div_fmas_f32 v40, v40, v52, v45
	v_mul_f32_e32 v45, v48, v39
	v_div_fixup_f32 v38, v19, v86, v20
	v_fma_f32 v20, -v47, v41, v46
	v_fmac_f32_e32 v44, v51, v44
	v_div_fixup_f32 v19, v40, v86, v21
	v_fma_f32 v21, -v49, v45, v48
	v_div_scale_f32 v40, s4, v24, v86, v24
	v_fma_f32 v46, -v50, v43, 1.0
	v_div_scale_f32 v47, null, v86, v86, v10
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v45, v21, v39
	v_div_fmas_f32 v20, v20, v53, v41
	v_mul_f32_e32 v21, v40, v44
	v_fmac_f32_e32 v43, v46, v43
	v_rcp_f32_e32 v41, v47
	v_div_scale_f32 v46, s2, v9, v86, v9
	v_div_scale_f32 v51, null, v86, v86, v11
	v_div_fixup_f32 v22, v20, v86, v22
	v_fma_f32 v20, -v49, v45, v48
	v_fma_f32 v48, -v42, v21, v40
	v_mul_f32_e32 v49, v46, v43
	v_rcp_f32_e32 v52, v51
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v53, -v47, v41, 1.0
	v_div_fmas_f32 v20, v20, v39, v45
	v_fmac_f32_e32 v21, v48, v44
	v_fma_f32 v39, -v50, v49, v46
	v_div_scale_f32 v45, s3, v10, v86, v10
	v_fmac_f32_e32 v41, v53, v41
	v_div_fixup_f32 v20, v20, v86, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v51, v52, 1.0
	v_fma_f32 v23, -v42, v21, v40
	v_fmac_f32_e32 v49, v39, v43
	v_div_scale_f32 v42, null, v86, v86, v12
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v39, v45, v41 :: v_dual_fmac_f32 v52, v48, v52
	v_div_scale_f32 v40, s5, v11, v86, v11
	v_div_fmas_f32 v21, v23, v44, v21
	v_fma_f32 v23, -v50, v49, v46
	v_rcp_f32_e32 v46, v42
	v_fma_f32 v44, -v47, v39, v45
	v_mul_f32_e32 v48, v40, v52
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v50, null, v86, v86, v13
	v_div_fmas_f32 v23, v23, v43, v49
	v_fmac_f32_e32 v39, v44, v41
	v_fma_f32 v44, -v51, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v50
	v_fma_f32 v49, -v42, v46, 1.0
	v_div_fixup_f32 v21, v21, v86, v24
	v_div_fixup_f32 v9, v23, v86, v9
	v_fma_f32 v23, -v47, v39, v45
	v_fmac_f32_e32 v48, v44, v52
	v_fmac_f32_e32 v46, v49, v46
	v_div_scale_f32 v24, s2, v12, v86, v12
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v50, v43, 1.0
	v_div_fmas_f32 v23, v23, v41, v39
	v_fma_f32 v39, -v51, v48, v40
	v_mul_f32_e32 v40, v24, v46
	v_div_scale_f32 v41, null, v86, v86, v14
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s3, v13, v86, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v41
	v_fma_f32 v47, -v42, v40, v24
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v49, null, v86, v86, v15
	v_div_fmas_f32 v39, v39, v52, v48
	v_fmac_f32_e32 v40, v47, v46
	v_mul_f32_e32 v48, v44, v43
	v_div_fixup_f32 v10, v23, v86, v10
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v47, -v41, v45, 1.0
	v_fma_f32 v24, -v42, v40, v24
	v_div_scale_f32 v42, null, v86, v86, v16
	v_div_fixup_f32 v11, v39, v86, v11
	v_fma_f32 v23, -v50, v48, v44
	v_rcp_f32_e32 v39, v49
	v_fmac_f32_e32 v45, v47, v45
	v_rcp_f32_e32 v47, v42
	v_div_fmas_f32 v24, v24, v46, v40
	v_fmac_f32_e32 v48, v23, v43
	v_div_scale_f32 v23, s4, v14, v86, v14
	v_div_scale_f32 v46, s2, v15, v86, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v40, -v50, v48, v44
	v_fma_f32 v51, -v49, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v44, v23, v45
	v_fma_f32 v50, -v42, v47, 1.0
	v_div_scale_f32 v52, null, v86, v86, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v51, v39
	v_fma_f32 v51, -v41, v44, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v50, v47
	v_div_scale_f32 v50, s5, v16, v86, v16
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v53, v46, v39
	v_rcp_f32_e32 v54, v52
	v_div_fmas_f32 v40, v40, v43, v48
	v_fmac_f32_e32 v44, v51, v45
	v_mul_f32_e32 v48, v50, v47
	v_fma_f32 v43, -v49, v53, v46
	v_div_fixup_f32 v12, v24, v86, v12
	v_div_fixup_f32 v13, v40, v86, v13
	v_fma_f32 v23, -v41, v44, v23
	v_fma_f32 v24, -v42, v48, v50
	v_div_scale_f32 v41, null, v86, v86, v2
	v_fmac_f32_e32 v53, v43, v39
	v_fma_f32 v40, -v52, v54, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v48, v24, v47
	v_rcp_f32_e32 v24, v41
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v49, v53, v46
	v_fmac_f32_e32 v54, v40, v54
	v_div_scale_f32 v40, s3, v1, v86, v1
	v_div_fmas_f32 v23, v23, v45, v44
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v42, -v42, v48, v50
	v_div_fmas_f32 v39, v43, v39, v53
	v_mul_f32_e32 v43, v40, v54
	v_div_scale_f32 v44, null, v86, v86, v3
	v_fma_f32 v45, -v41, v24, 1.0
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v23, v86, v14
	v_div_fmas_f32 v42, v42, v47, v48
	v_rcp_f32_e32 v46, v44
	v_fma_f32 v47, -v52, v43, v40
	v_fmac_f32_e32 v24, v45, v24
	v_div_scale_f32 v45, s2, v2, v86, v2
	v_div_fixup_f32 v15, v39, v86, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v47, v54
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v23, v45, v24
	v_div_fixup_f32 v16, v42, v86, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v44, v46, 1.0
	v_fma_f32 v40, -v52, v43, v40
	v_div_scale_f32 v42, null, v86, v86, v4
	v_fma_f32 v47, -v41, v23, v45
	v_fmac_f32_e32 v46, v39, v46
	v_div_scale_f32 v39, s4, v3, v86, v3
	v_div_fmas_f32 v40, v40, v54, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v23, v47, v24
	v_rcp_f32_e32 v48, v42
	v_mul_f32_e32 v43, v39, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v40, v86, v1
	v_fma_f32 v40, -v41, v23, v45
	v_div_scale_f32 v47, null, v86, v86, v5
	v_fma_f32 v41, -v44, v43, v39
	v_div_scale_f32 v52, null, v86, v86, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v23, v40, v24, v23
	v_div_scale_f32 v24, null, v86, v86, v6
	v_rcp_f32_e32 v49, v47
	v_fmac_f32_e32 v43, v41, v46
	v_fma_f32 v45, -v42, v48, 1.0
	v_rcp_f32_e32 v41, v24
	v_div_scale_f32 v40, s2, v4, v86, v4
	v_div_fixup_f32 v2, v23, v86, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v45, v48
	v_div_scale_f32 v45, null, v86, v86, v7
	v_fma_f32 v23, -v47, v49, 1.0
	v_fma_f32 v39, -v44, v43, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v44, v40, v48
	v_fma_f32 v50, -v24, v41, 1.0
	v_rcp_f32_e32 v51, v45
	v_fmac_f32_e32 v49, v23, v49
	v_div_scale_f32 v23, s3, v5, v86, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v41, v50, v41
	v_rcp_f32_e32 v50, v52
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v53, s4, v6, v86, v6
	v_div_fmas_f32 v39, v39, v46, v43
	v_fma_f32 v43, -v42, v44, v40
	v_mul_f32_e32 v46, v23, v49
	v_fma_f32 v54, -v45, v51, 1.0
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v3, v39, v86, v3
	v_fmac_f32_e32 v44, v43, v48
	v_fma_f32 v39, -v47, v46, v23
	v_mul_f32_e32 v43, v53, v41
	v_fma_f32 v55, -v52, v50, 1.0
	v_fmac_f32_e32 v51, v54, v51
	v_div_scale_f32 v54, s5, v7, v86, v7
	v_fma_f32 v40, -v42, v44, v40
	v_fmac_f32_e32 v46, v39, v49
	v_fma_f32 v39, -v24, v43, v53
	v_fmac_f32_e32 v50, v55, v50
	v_div_scale_f32 v55, s6, v8, v86, v8
	v_mul_f32_e32 v42, v54, v51
	v_div_fmas_f32 v40, v40, v48, v44
	v_fma_f32 v23, -v47, v46, v23
	v_fmac_f32_e32 v43, v39, v41
	v_mul_f32_e32 v44, v55, v50
	v_fma_f32 v39, -v45, v42, v54
	s_mov_b32 vcc_lo, s3
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s15, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v23, v23, v49, v46
	v_fma_f32 v24, -v24, v43, v53
	v_fma_f32 v46, -v52, v44, v55
	v_fmac_f32_e32 v42, v39, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v5, v23, v86, v5
	v_div_fmas_f32 v24, v24, v41, v43
	v_fmac_f32_e32 v44, v46, v50
	v_fma_f32 v23, -v45, v42, v54
	s_mov_b32 vcc_lo, s5
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s5, 0, v86
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v24, v86, v6
	v_fma_f32 v24, -v52, v44, v55
	v_div_fmas_f32 v23, v23, v51, v42
	s_mov_b32 vcc_lo, s6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v37, 0, v37, s5
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v39, s24, v85
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v24, v50, v44
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s15, v36
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v23, v86, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s5
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v23, s15, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v8, v24, v86, v8
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v25, s5
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v37.h
	v_mov_b16_e32 v25.h, v34.l
	v_mov_b16_e32 v39.h, v34.l
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v24.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v25
	v_cmp_o_f32_e64 s6, v37, v37
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v0, v23, v0, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_fixup_f32 v4, v40, v86, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v37, v25, 0x7fff
	v_mov_b16_e32 v37.l, v28.h
	v_mov_b16_e32 v37.h, v34.l
	v_add3_u32 v39, v24, v39, 0x7fff
	v_mov_b16_e32 v40.l, v26.h
	v_mov_b16_e32 v40.h, v34.l
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s6
	v_and_b32_e32 v37, 1, v37
	v_cmp_o_f32_e64 s6, v24, v24
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v27, s5
	v_cndmask_b32_e64 v30, 0, v30, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v40
	v_add3_u32 v37, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s7, v28, v28
	v_mov_b16_e32 v28.l, v24.h
	v_mov_b16_e32 v28.h, v34.l
	v_mov_b16_e32 v40.l, v30.h
	v_cndmask_b16 v25.l, 0x7fff, v39.h, s6
	v_add3_u32 v27, v26, v27, 0x7fff
	v_cmp_o_f32_e64 s6, v26, v26
	v_and_b32_e32 v28, 1, v28
	v_and_b32_e32 v39, 1, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v31, s5
	v_cndmask_b32_e64 v29, 0, v29, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v37.h, 0x7fff, v37.h, s7
	v_add3_u32 v28, v24, v28, 0x7fff
	v_add3_u32 v31, v30, v39, 0x7fff
	v_cmp_o_f32_e64 s7, v30, v30
	v_mov_b16_e32 v30.l, v26.h
	v_mov_b16_e32 v30.h, v34.l
	v_mov_b16_e32 v39.l, v29.h
	v_mov_b16_e32 v39.h, v34.l
	v_cmp_o_f32_e64 s8, v24, v24
	v_cndmask_b16 v37.l, 0x7fff, v27.h, s6
	v_and_b32_e32 v24, 1, v30
	v_cmp_o_f32_e64 s6, v26, v26
	v_and_b32_e32 v30, 1, v39
	v_cndmask_b16 v27.l, 0x7fff, v28.h, s8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v32, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v24, v26, v24, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v26, v29, v30, 0x7fff
	v_mov_b16_e32 v30.h, v34.l
	v_mov_b16_e32 v30.l, v28.h
	v_cndmask_b16 v27.h, 0x7fff, v31.h, s7
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s6
	v_cmp_o_f32_e64 s6, v29, v29
	v_mov_b16_e32 v29.l, v17.h
	v_mov_b16_e32 v29.h, v34.l
	v_and_b32_e32 v30, 1, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v38, s5
	v_cndmask_b32_e64 v18, 0, v18, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v26.h, s6
	v_and_b32_e32 v26, 1, v29
	v_add3_u32 v29, v28, v30, 0x7fff
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v32.l, v18.h
	v_mov_b16_e32 v32.h, v34.l
	v_mov_b16_e32 v30.h, v34.l
	v_cmp_o_f32_e64 s6, v28, v28
	v_add3_u32 v26, v17, v26, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_and_b32_e32 v17, 1, v32
	v_and_b32_e32 v28, 1, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v29.h, 0x7fff, v29.h, s6
	v_cndmask_b16 v29.l, 0x7fff, v26.h, s7
	v_add3_u32 v17, v18, v17, 0x7fff
	v_add3_u32 v26, v31, v28, 0x7fff
	v_mov_b16_e32 v28.l, v22.h
	v_mov_b16_e32 v28.h, v34.l
	v_cmp_o_f32_e64 s7, v18, v18
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v31, v31
	v_mov_b16_e32 v18.h, v34.l
	v_and_b32_e32 v28, 1, v28
	v_cndmask_b16 v26.l, 0x7fff, v17.h, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v21, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v18.l, v19.h
	v_cndmask_b16 v26.h, 0x7fff, v26.h, s6
	v_add3_u32 v21, v22, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v22, v22
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v17.h
	v_mov_b16_e32 v22.h, v34.l
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v28.h, v34.l
	v_mov_b16_e32 v28.l, v20.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v22
	v_add3_u32 v18, v19, v18, 0x7fff
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s6
	v_cmp_o_f32_e64 s6, v19, v19
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v28
	v_add3_u32 v22, v17, v22, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	v_mov_b16_e32 v28.l, v9.h
	v_mov_b16_e32 v17.l, v10.h
	v_mov_b16_e32 v17.h, v34.l
	v_cndmask_b16 v21.l, 0x7fff, v18.h, s6
	v_add3_u32 v18, v20, v19, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s7
	v_and_b32_e32 v22, 1, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s5
	v_cndmask_b32_e64 v12, 0, v12, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v17, 1, v17
	v_cmp_o_f32_e64 s6, v20, v20
	v_add3_u32 v20, v9, v22, 0x7fff
	v_mov_b16_e32 v22.l, v11.h
	v_mov_b16_e32 v22.h, v34.l
	v_mov_b16_e32 v28.l, v12.h
	v_add3_u32 v17, v10, v17, 0x7fff
	v_cmp_o_f32_e64 s7, v10, v10
	v_cmp_o_f32_e64 s8, v9, v9
	v_and_b32_e32 v9, 1, v22
	v_and_b32_e32 v10, 1, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s5
	v_cndmask_b32_e64 v13, 0, v13, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v18.h, s6
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s7
	v_add3_u32 v9, v11, v9, 0x7fff
	v_add3_u32 v10, v12, v10, 0x7fff
	v_cmp_o_f32_e64 s6, v12, v12
	v_cmp_o_f32_e64 s7, v11, v11
	v_mov_b16_e32 v11.l, v14.h
	v_mov_b16_e32 v11.h, v34.l
	v_mov_b16_e32 v12.l, v13.h
	v_mov_b16_e32 v12.h, v34.l
	v_cndmask_b16 v10.l, 0x7fff, v9.h, s7
	v_cndmask_b16 v10.h, 0x7fff, v10.h, s6
	v_and_b32_e32 v9, 1, v11
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v11, 1, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v15, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v14, v14
	v_add3_u32 v9, v14, v9, 0x7fff
	v_mov_b16_e32 v14.h, v34.l
	v_mov_b16_e32 v15.l, v16.h
	v_mov_b16_e32 v14.l, v12.h
	v_mov_b16_e32 v15.h, v34.l
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cmp_o_f32_e64 s7, v13, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v14
	v_and_b32_e32 v15, 1, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v11.h, s7
	v_cmp_o_f32_e64 s7, v12, v12
	v_add3_u32 v11, v12, v13, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v14, v16, v15, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v12.l, 0x7fff, v11.h, s7
	v_mov_b16_e32 v11.l, v2.h
	v_mov_b16_e32 v11.h, v34.l
	v_mov_b16_e32 v13.l, v1.h
	v_mov_b16_e32 v13.h, v34.l
	v_cndmask_b16 v12.h, 0x7fff, v14.h, s6
	v_mov_b16_e32 v14.l, v4.h
	v_mov_b16_e32 v14.h, v34.l
	v_and_b32_e32 v11, 1, v11
	v_and_b32_e32 v13, 1, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s6, v2, v2
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v11, v2, v11, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v20.h, s8
	v_mov_b16_e32 v15.l, v3.h
	v_mov_b16_e32 v15.h, v34.l
	v_add3_u32 v2, v4, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v4, v4
	v_cndmask_b16 v4.h, 0x7fff, v11.h, s6
	v_mov_b16_e32 v11.l, v5.h
	v_mov_b16_e32 v11.h, v34.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s5
	v_cndmask_b32_e64 v7, 0, v7, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v4.l, 0x7fff, v13.h, s7
	v_mov_b16_e32 v13.l, v6.h
	v_mov_b16_e32 v13.h, v34.l
	v_and_b32_e32 v1, 1, v15
	v_and_b32_e32 v11, 1, v11
	v_mov_b16_e32 v14.l, v8.h
	v_mov_b16_e32 v15.l, v7.h
	v_mov_b16_e32 v14.h, v34.l
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v1, v3, v1, 0x7fff
	v_cmp_o_f32_e64 s5, v3, v3
	v_add3_u32 v3, v5, v11, 0x7fff
	v_and_b32_e32 v11, 1, v15
	v_and_b32_e32 v14, 1, v14
	v_add3_u32 v13, v6, v13, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_cmp_o_f32_e64 s7, v5, v5
	v_cndmask_b16 v2.h, 0x7fff, v2.h, s8
	v_add3_u32 v5, v7, v11, 0x7fff
	v_add3_u32 v6, v8, v14, 0x7fff
	v_cmp_o_f32_e64 s8, v8, v8
	v_cmp_o_f32_e64 s9, v7, v7
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s5
	v_cndmask_b16 v1.h, 0x7fff, v13.h, s6
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s7
	v_cndmask_b16 v3.h, 0x7fff, v6.h, s8
	v_cndmask_b16 v3.l, 0x7fff, v5.h, s9
	v_cndmask_b32_e64 v6, v25, v27, s1
	v_cndmask_b32_e64 v8, v37, v24, s1
	v_cndmask_b32_e64 v13, v29, v21, s1
	v_cndmask_b32_e64 v15, v26, v19, s1
	v_cndmask_b32_e64 v16, v9, v17, s1
	v_cndmask_b32_e64 v9, v17, v9, s1
	v_cndmask_b32_e64 v17, v12, v10, s1
	v_cndmask_b32_e64 v10, v10, v12, s1
	v_cndmask_b32_e64 v18, v1, v4, s1
	v_cndmask_b32_e64 v1, v4, v1, s1
	v_cndmask_b32_e64 v14, v19, v26, s1
	v_cndmask_b32_e64 v19, v3, v2, s1
	v_cndmask_b32_e64 v2, v2, v3, s1
	s_mov_b32 s5, 0x76543210
	v_cndmask_b32_e64 v5, v27, v25, s1
	v_cndmask_b32_e64 v7, v24, v37, s1
	v_cndmask_b32_e64 v11, v21, v29, s1
	v_permlanex16_b32 v3, v6, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v8, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v13, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v15, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v12, v9, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s5, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v2, s5, 0xfedcba98 op_sel:[1,0]
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s15, v33
	v_cmp_gt_i32_e64 s3, s15, v35
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v1, v3, v5, v83
	v_perm_b32 v2, v3, v5, v84
	v_perm_b32 v3, v4, v7, v83
	v_perm_b32 v4, v4, v7, v84
	v_perm_b32 v5, v6, v11, v83
	v_perm_b32 v6, v6, v11, v84
	v_perm_b32 v7, v8, v14, v83
	v_perm_b32 v8, v8, v14, v84
	v_perm_b32 v9, v12, v16, v83
	v_perm_b32 v10, v12, v16, v84
	v_perm_b32 v11, v13, v17, v83
	v_perm_b32 v12, v13, v17, v84
	v_perm_b32 v13, v15, v18, v83
	v_perm_b32 v14, v15, v18, v84
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v18, v23, v36, 1
	v_add_lshl_u32 v17, v23, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v15, v20, v19, v83
	v_perm_b32 v16, v20, v19, v84
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v23, v35, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 s1, s0, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e64 v17, 0x80000000, v17, s1
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	s_mov_b32 s15, 0x31027000
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[1:4], v17, s[12:15], 0 offen
	buffer_store_b128 v[5:8], v18, s[12:15], 0 offen
	buffer_store_b128 v[9:12], v19, s[12:15], 0 offen
	buffer_store_b128 v[13:16], v0, s[12:15], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp24:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 113
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8532
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
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
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
