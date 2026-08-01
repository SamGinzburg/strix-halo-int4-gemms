	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[10:11], s[0:1], 0x5c
	s_load_b32 s8, s[0:1], 0x64
	v_dual_mov_b32 v85, 0xff800000 :: v_dual_and_b32 v10, 7, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v66, 15, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v1, 3, v10
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x10
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s15, s2, 5
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s15, v2
	.loc	1 787 26                        ; attention.py:787:26
	s_add_i32 s14, s15, s2
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshlrev_b32_e32 v15, 2, v0
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v4
	v_lshlrev_b32_e32 v16, 7, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v10, 4, v10
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[61:62], null, s10, v2, v[1:2]
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s10, v1
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s9, s10, 4
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v64, 32, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v12, 1, v0
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 787 26                        ; attention.py:787:26
	v_mad_u64_u32 v[2:3], null, s10, s14, v[61:62]
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s17, s5, 0xffff
	s_mov_b32 s16, s4
	v_and_b32_e32 v15, 64, v15
	v_and_b32_e32 v16, 0x700, v16
	v_lshl_or_b32 v68, v66, 7, v10
	v_lshlrev_b32_e32 v11, 4, v0
	v_lshlrev_b32_e32 v1, 1, v2
	v_add_lshl_u32 v2, v2, s9, 1
	v_and_b32_e32 v12, 0x70, v12
	v_add3_u32 v10, 0, v15, v64
	v_add_nc_u32_e32 v15, 0, v16
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_cndmask_b32_e64 v5, 0x80000000, v2, s2
	v_xor_b32_e32 v16, 16, v68
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x28
	s_load_b64 s[12:13], s[0:1], 0x38
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 788 26                        ; attention.py:788:26
	s_clause 0x1
	buffer_load_b128 v[1:4], v1, s[16:19], 0 offen
	buffer_load_b128 v[5:8], v5, s[16:19], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	v_add_nc_u32_e32 v77, 0, v16
	v_mov_b32_e32 v16, v17
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v11, v11, v12
	v_lshlrev_b32_e32 v19, 5, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_bfe_i32 v20, v0, 2, 1
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v63, 64, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v71, 0, v11
	.loc	1 974 51                        ; attention.py:974:51
	v_and_b32_e32 v13, 0x70, v0
	v_bfe_i32 v18, v0, 0, 1
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, 0xfff0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s2, s0, 4
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s0, s3, s1
	v_and_b32_e32 v20, 0x90, v20
	v_lshlrev_b32_e32 v24, 4, v64
	v_lshrrev_b32_e32 v23, 1, v63
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s1, s0, 0x10007
	v_dual_mov_b32 v67, 0 :: v_dual_and_b32 v18, 0x90, v18
	s_add_i32 s0, s0, s1
	.loc	1 761 22                        ; attention.py:761:22
	v_lshlrev_b32_e32 v62, 2, v66
	v_lshlrev_b32_e32 v65, 1, v66
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s0, 0x80000
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v11, v64, 6, v68
	v_add_nc_u32_e32 v12, 0, v23
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	.loc	1 974 51                        ; attention.py:974:51
	v_lshrrev_b32_e32 v14, 4, v0
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s1, s0, 1
	v_lshlrev_b32_e32 v22, 1, v64
	v_add_nc_u32_e32 v69, 0, v62
	.loc	1 937 33                        ; attention.py:937:33
	s_lshl3_add_u32 s2, s2, s1
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v49, 0x60, v11, 0
	v_lshl_or_b32 v76, s2, 10, v14
	v_xad_u32 v14, v11, 48, 0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v21, 1, v64
	v_xor_b32_e32 v23, 0x60, v68
	.loc	1 945 31                        ; attention.py:945:31
	s_mul_f32 s30, s8, 0x3fb8aa3b
	s_mov_b32 s28, 0
	s_mov_b32 s29, 0x76543210
	.loc	1 759 21                        ; attention.py:759:21
	v_or3_b32 v21, v66, v21, s15
	v_add_nc_u32_e32 v82, 0, v23
	s_mov_b32 s22, s18
	s_and_b32 s17, s7, 0xffff
	s_and_b32 s21, s21, 0xffff
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v21
	v_xor_b32_e32 v21, 0x50, v68
	s_waitcnt lgkmcnt(0)
	s_and_b32 s25, s25, 0xffff
	.loc	1 937 32                        ; attention.py:937:32
	s_lshl_b32 s31, s2, 11
	.loc	1 997 21                        ; attention.py:997:21
	s_lshl_b32 s33, s2, 7
	s_mov_b32 s16, s6
	v_add_nc_u32_e32 v81, 0, v21
	s_mov_b32 s23, s19
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt vmcnt(1)
	ds_store_b128 v71, v[1:4]
	s_waitcnt vmcnt(0)
	ds_store_b128 v71, v[5:8] offset:2048
	v_dual_mov_b32 v6, v17 :: v_dual_and_b32 v19, 0x160, v19
	v_mov_b32_e32 v2, v17
	v_lshrrev_b32_e32 v13, 2, v13
	v_dual_mov_b32 v8, v17 :: v_dual_add_nc_u32 v73, v10, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_or3_b32 v70, v20, v24, v19
	v_add_nc_u32_e32 v10, 0, v11
	v_xor_b32_e32 v13, v18, v13
	v_add_nc_u32_e32 v74, v12, v65
	v_xad_u32 v12, v11, 16, 0
	v_xor_b32_e32 v25, 16, v70
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v75, v15, v13
	v_xad_u32 v13, v11, 32, 0
	v_xad_u32 v15, v11, 64, 0
	v_add_nc_u32_e32 v84, 0, v25
	s_barrier
	v_mov_b32_e32 v5, v17
	v_add_nc_u32_e32 v72, v69, v22
	v_xad_u32 v22, 0x50, v11, 0
	v_xad_u32 v11, 0x70, v11, 0
	ds_load_b128 v[25:28], v10
	ds_load_b128 v[29:32], v12
	ds_load_b128 v[33:36], v13
	ds_load_b128 v[37:40], v14
	ds_load_b128 v[41:44], v15
	ds_load_b128 v[45:48], v22
	ds_load_b128 v[49:52], v49
	ds_load_b128 v[53:56], v11
	v_xor_b32_e32 v18, 32, v68
	v_xor_b32_e32 v19, 48, v68
	v_xor_b32_e32 v20, 64, v68
	v_xor_b32_e32 v24, 0x70, v68
	v_mov_b32_e32 v10, v17
	v_add_nc_u32_e32 v78, 0, v18
	v_add_nc_u32_e32 v79, 0, v19
	v_add_nc_u32_e32 v80, 0, v20
	v_add_nc_u32_e32 v83, 0, v24
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v12, v17
	v_mov_b32_e32 v13, v17
	v_mov_b32_e32 v14, v17
	v_mov_b32_e32 v15, v17
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s1, s11, v62
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v3, v17
	v_mov_b32_e32 v4, v17
	v_mov_b32_e32 v7, v17
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 938 32                        ; attention.py:938:32
	s_add_i32 s2, s28, s31
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v24, v17
	.loc	1 938 32                        ; attention.py:938:32
	s_mul_i32 s2, s2, s10
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v21, v17 :: v_dual_add_nc_u32 v86, 0, v68
	.loc	1 939 32                        ; attention.py:939:32
	v_add_lshl_u32 v18, s2, v61, 1
	.loc	1 974 36                        ; attention.py:974:36
	s_lshr_b32 s2, s28, 1
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v22, v17
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v19, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_dual_mov_b32 v23, v17 :: v_dual_mov_b32 v112, v67
	.loc	1 977 30                        ; attention.py:977:30
	v_add_nc_u32_e32 v67, s2, v76
	.loc	1 1001 53                       ; attention.py:1001:53
	s_lshr_b32 s3, s28, 4
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[57:60], v18, s[16:19], 0 offen
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v105, 0, v70
	v_dual_mov_b32 v95, v24 :: v_dual_mov_b32 v92, v21
	v_dual_mov_b32 v94, v23 :: v_dual_add_nc_u32 v87, v69, v63
	.loc	1 1001 25                       ; attention.py:1001:25
	s_add_i32 s3, s3, s33
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v93, v22 :: v_dual_mov_b32 v90, v19
	v_dual_mov_b32 v91, v20 :: v_dual_mov_b32 v88, v17
	v_mov_b32_e32 v89, v18
	.loc	1 977 30                        ; attention.py:977:30
	v_mad_u64_u32 v[18:19], null, v67, s11, v[62:63]
	.loc	1 1001 25                       ; attention.py:1001:25
	s_mul_i32 s3, s3, s11
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt lgkmcnt(0)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_add_lshl_u32 v20, s3, v62, 1
	.loc	1 939 32                        ; attention.py:939:32
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v104.l, 0
	.loc	1 970 25                        ; attention.py:970:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v85
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v19, 0x80000000, v20, s1
	.loc	1 990 39                        ; attention.py:990:39
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v109.l, v104.l
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v24.h, v104.l
	v_mov_b16_e32 v107.h, v104.l
	v_mov_b16_e32 v113.h, v104.l
	v_mov_b16_e32 v106.h, v104.l
	v_mov_b16_e32 v110.h, v104.l
	v_mov_b16_e32 v108.h, v104.l
	v_mov_b16_e32 v111.h, v104.l
	v_mov_b16_e32 v114.h, v104.l
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v71, v[57:60]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v57, v18, s[20:23], 0 offen
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[22:23], v19, s[24:27], 0 offen
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[96:99], v86
	ds_load_b128 v[100:103], v77
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[88:95], v[96:103], v[25:32], v[88:95]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[96:99], v78
	ds_load_b128 v[100:103], v79
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[88:95], v[96:103], v[33:40], v[88:95]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[96:99], v80
	ds_load_b128 v[100:103], v81
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[88:95], v[96:103], v[41:48], v[88:95]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[96:99], v82
	ds_load_b128 v[100:103], v83
	.loc	1 1018 23                       ; attention.py:1018:23
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_wmma_f32_16x16x16_bf16 v[88:95], v[96:103], v[49:56], v[88:95]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v18, s30, v88 :: v_dual_mul_f32 v19, s30, v89
	v_dual_mul_f32 v20, s30, v90 :: v_dual_mul_f32 v59, s30, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v21, s30, v91 :: v_dual_mul_f32 v58, s30, v92
	v_dual_mul_f32 v67, s30, v95 :: v_dual_mul_f32 v60, s30, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v18, 0xff800000, v18, s0
	v_cndmask_b32_e64 v19, 0xff800000, v19, s0
	v_cndmask_b32_e64 v20, 0xff800000, v20, s0
	v_cndmask_b32_e64 v21, 0xff800000, v21, s0
	v_cndmask_b32_e64 v58, 0xff800000, v58, s0
	v_cndmask_b32_e64 v59, 0xff800000, v59, s0
	v_cndmask_b32_e64 v60, 0xff800000, v60, s0
	v_cndmask_b32_e64 v67, 0xff800000, v67, s0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v86, v18, v19, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v88, v21, v58, v59
	v_max_f32_e32 v89, v60, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v86, v86, v88, v89
.Ltmp2:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v88, v86, s29, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v86, v85, v86, v88
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v67, v67, v86
	.loc	1 970 74                        ; attention.py:970:74
	v_sub_f32_e32 v88, v85, v86
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v58, v58, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v67, v67
	.loc	1 970 61 is_stmt 1              ; attention.py:970:61
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v67, 0, v67, s0
	.loc	1 970 25                        ; attention.py:970:25
	v_cndmask_b32_e64 v115, 0, v88, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v95, v67, 16, 1
	.loc	1 1018 23                       ; attention.py:1018:23
	ds_store_b32 v72, v115
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v85, v87
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v20, v20, v86
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s9, v67, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v9, v9, v85
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v20, v20
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v16, v16, v85
	v_mul_f32_e32 v2, v2, v85
	v_mul_f32_e32 v4, v4, v85
	v_mul_f32_e32 v6, v6, v85
	v_mul_f32_e32 v7, v7, v85
	v_mul_f32_e32 v8, v8, v85
	v_mul_f32_e32 v11, v11, v85
	v_mul_f32_e32 v15, v15, v85
	v_mul_f32_e32 v3, v3, v85
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v13, v13, v85
	v_mul_f32_e32 v5, v5, v85
	v_mul_f32_e32 v1, v1, v85
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v90, v20, 16, 1
	v_cmp_o_f32_e64 s4, v20, v20
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v109.h, v23.l
	.loc	1 971 62                        ; attention.py:971:62
	v_dual_sub_f32 v60, v60, v86 :: v_dual_and_b32 v23, 0xffff0000, v23
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v58, v58
	.loc	1 1000 41 is_stmt 1             ; attention.py:1000:41
	v_mov_b16_e32 v104.h, v22.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v60, v60
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v58, 0, v58, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v60, 0, v60, s0
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v59, v59, v86
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v92, v58, 16, 1
	v_cmp_o_f32_e64 s6, v58, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_bfe_u32 v94, v60, 16, 1
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v59, v59
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s8, v60, v60
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v59, 0, v59, s0
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_dual_sub_f32 v19, v19, v86 :: v_dual_add_f32 v98, v58, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v19, v19
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v93, v59, 16, 1
	v_add3_u32 v58, v58, v92, 0x7fff
	v_cmp_o_f32_e64 s7, v59, v59
	v_add3_u32 v59, v59, v93, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v19, 0, v19, s0
	.loc	1 971 62 is_stmt 0              ; attention.py:971:62
	v_sub_f32_e32 v21, v21, v86
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_bfe_u32 v89, v19, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v21, v21
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cmp_o_f32_e64 s3, v19, v19
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp4:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v97, v20, v21 :: v_dual_sub_f32 v18, v18, v86
.Ltmp5:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v91, v21, 16, 1
	v_add3_u32 v20, v20, v90, 0x7fff
	v_cmp_o_f32_e64 s5, v21, v21
	v_cndmask_b16 v20.l, 0x7fff, v58.h, s6
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v18, v18
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v21, v21, v91, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1019 30                       ; attention.py:1019:30
	v_bfe_u32 v88, v18, 16, 1
	v_cmp_o_f32_e64 s2, v18, v18
.Ltmp6:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v96, v18, v19
.Ltmp7:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v19, v19, v89, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v20.h, s4
	v_add3_u32 v18, v18, v88, 0x7fff
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v88, v60, v67
.Ltmp9:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_add3_u32 v60, v60, v94, 0x7fff
	v_add3_u32 v67, v67, v95, 0x7fff
	v_cndmask_b16 v20.h, 0x7fff, v59.h, s7
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s2
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s3
	v_cndmask_b16 v19.h, 0x7fff, v21.h, s5
	v_cndmask_b16 v21.l, 0x7fff, v60.h, s8
	v_cndmask_b16 v21.h, 0x7fff, v67.h, s9
	ds_store_b16 v73, v18
	ds_store_b16_d16_hi v73, v18 offset:128
	ds_store_b16 v73, v19 offset:256
	ds_store_b16_d16_hi v73, v19 offset:384
	ds_store_b16 v73, v20 offset:512
	ds_store_b16_d16_hi v73, v20 offset:640
	ds_store_b16 v73, v21 offset:768
	ds_store_b16_d16_hi v73, v21 offset:896
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.l, v57.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v20, v57, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v18.h, 4, v57.l
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v21, 8, v57
	.loc	1 1000 41                       ; attention.py:1000:41
	v_and_b32_e32 v60, 0xffff0000, v22
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s2, 7, v18.l
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v22.l, v57.h
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v19.l, v57.h, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v18.h, v18.h, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v20.l
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v20.l, 0, -16, s2
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v89, v96, v97
.Ltmp11:
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v96, v21, 0, 8
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v19.h, 4, v21.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v20.h, v21.l, 15
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v21, v22, 0, 8
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v19.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_or_b16 v24.l, v18.l, v20.l
	.loc	1 990 56 is_stmt 1              ; attention.py:990:56
	v_or_b16 v18.l, v18.h, -16
	.loc	1 978 32                        ; attention.py:978:32
	v_lshrrev_b32_e32 v67, 24, v57
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v57, 20, v57
	.loc	1 990 39                        ; attention.py:990:39
	v_mov_b16_e32 v20.l, v96.l
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v19.h, v19.h, 15
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v97.l, v18.h, v18.l, s4
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s4, 0, v21.l
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v21.l, 0, -16, s3
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v18.l, v57.l, 15
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s2, 0, v20.l
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v20.h
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v22, v67, 0, 8
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v57.l, v19.l, v21.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v21.l, v19.h, -16
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v18.h, v67.l, 15
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v20.l, 4, v67.l
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v19.l, v18.l, -16
	.loc	1 990 39 is_stmt 0              ; attention.py:990:39
	v_cmp_gt_i16_e64 s6, 0, v22.l
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v21.l, v19.h, v21.l, s2
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_cndmask_b16 v19.h, 0, -16, s3
	.loc	1 989 38 is_stmt 0              ; attention.py:989:38
	v_cmp_lt_u16_e64 s5, 7, v18.h
	.loc	1 990 30 is_stmt 1              ; attention.py:990:30
	v_cndmask_b16 v19.l, v18.l, v19.l, s4
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v67, v24, 0, 16
.Ltmp12:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v88, v98, v88
.Ltmp13:
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v22.l, v20.h, v19.h
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v19.h, v20.l, -16
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v18.l, 0, -16, s5
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v21, v21, 0, 16
	v_cvt_f32_i32_e32 v67, v67
.Ltmp14:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v58, v89, v88
.Ltmp15:
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v20.l, v20.l, v19.h, s6
	.loc	1 989 29                        ; attention.py:989:29
	v_or_b16 v18.l, v18.h, v18.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v96, v97, 0, 16
	v_bfe_i32 v22, v22, 0, 16
	v_cvt_f32_i32_e32 v21, v21
	v_bfe_i32 v20, v20, 0, 16
	v_bfe_i32 v18, v18, 0, 16
	v_mul_f32_e32 v67, v104, v67
	v_bfe_i32 v57, v57, 0, 16
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v18, v18
	v_mul_f32_e32 v21, v60, v21
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v24.l, v67.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v20, v23, v20
	v_bfe_i32 v19, v19, 0, 16
	v_cvt_f32_i32_e32 v57, v57
	v_mul_f32_e32 v22, v60, v22
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v107.l, v21.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v96, v104, v96
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v113.l, v20.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_dual_mul_f32 v18, v23, v18 :: v_dual_and_b32 v23, 1, v24
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v57, v109, v57
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s2, v67, v67
	.loc	1 1018 23 is_stmt 1             ; attention.py:1018:23
	v_mul_f32_e32 v10, v10, v85
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v23, v67, v23, 0x7fff
	v_and_b32_e32 v67, 1, v107
	v_mov_b16_e32 v106.l, v96.h
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v19, v109, v19
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.l, v57.h
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v88, v74
	ds_load_u16_d16 v89, v74 offset:128
	ds_load_u16_d16 v90, v74 offset:256
	ds_load_u16_d16 v91, v74 offset:384
	ds_load_u16_d16 v92, v74 offset:512
	ds_load_u16_d16 v93, v74 offset:640
	ds_load_u16_d16 v94, v74 offset:768
	ds_load_u16_d16 v95, v74 offset:896
	.loc	1 1017 30                       ; attention.py:1017:30
	v_and_b32_e32 v24, 1, v106
	v_mov_b16_e32 v108.l, v22.h
	v_and_b32_e32 v60, 1, v110
	v_mov_b16_e32 v111.l, v19.h
	v_and_b32_e32 v97, 1, v113
	v_mov_b16_e32 v114.l, v18.h
	v_cmp_o_f32_e64 s3, v96, v96
	v_add3_u32 v24, v96, v24, 0x7fff
	v_and_b32_e32 v96, 1, v108
	v_cmp_o_f32_e64 s4, v57, v57
	v_add3_u32 v57, v57, v60, 0x7fff
	v_and_b32_e32 v60, 1, v111
	v_and_b32_e32 v98, 1, v114
	v_cmp_o_f32_e64 s5, v21, v21
	v_cmp_o_f32_e64 s6, v22, v22
	v_add3_u32 v21, v21, v67, 0x7fff
	v_add3_u32 v22, v22, v96, 0x7fff
	v_cmp_o_f32_e64 s7, v19, v19
	v_cmp_o_f32_e64 s8, v20, v20
	v_cmp_o_f32_e64 s9, v18, v18
	v_add3_u32 v19, v19, v60, 0x7fff
	v_add3_u32 v20, v20, v97, 0x7fff
	v_add3_u32 v18, v18, v98, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v24.h, s3
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s2
	v_cndmask_b16 v21.h, 0x7fff, v21.h, s5
	v_cndmask_b16 v21.l, 0x7fff, v22.h, s6
	v_cndmask_b16 v19.l, 0x7fff, v57.h, s4
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s7
	v_cndmask_b16 v20.h, 0x7fff, v20.h, s8
	v_cndmask_b16 v20.l, 0x7fff, v18.h, s9
	.loc	1 1019 30                       ; attention.py:1019:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v88, v74 offset:64
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v89, v74 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v90, v74 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v91, v74 offset:448
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v92, v74 offset:576
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v93, v74 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v94, v74 offset:832
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v95, v74 offset:960
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_2addr_b32 v75, v24, v21 offset1:8
	ds_store_2addr_b32 v75, v19, v20 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[96:99], v105
	ds_load_b128 v[104:107], v105 offset:1024
	ds_load_b128 v[100:103], v84
	ds_load_b128 v[108:111], v84 offset:1024
.Ltmp16:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v59, v58, s29, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v12, v12, v85
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s2, s28, 16
	s_cmpk_lt_u32 s28, 0x7f0
	s_mov_b32 s28, s2
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v67, v58, v59
.Ltmp19:
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v14, v14, v85
	v_mov_b32_e32 v85, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v67, v112, v115
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[96:103], v[88:95], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[104:111], v[88:95], v[1:8]
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v72, v67
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v19, v87
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v17, 2, v63
	.loc	1 787 79                        ; attention.py:787:79
	v_lshrrev_b32_e32 v18, 1, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s13, s13, 0xffff
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v20, v17, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v21, s15, v20
	s_mov_b32 s15, 0x31027000
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s0, 0x800, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v21, null, v19, v19, v9
	v_div_scale_f32 v22, null, v19, v19, v10
	v_div_scale_f32 v23, null, v19, v19, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v25, v21
	v_div_scale_f32 v24, null, v19, v19, v12
	v_rcp_f32_e32 v26, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v23
	v_div_scale_f32 v28, vcc_lo, v9, v19, v9
	v_rcp_f32_e32 v29, v24
	v_div_scale_f32 v30, s1, v10, v19, v10
	v_fma_f32 v32, -v21, v25, 1.0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v18, 24, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v31, s2, v11, v19, v11
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v22, v26, 1.0
	v_fma_f32 v34, -v23, v27, 1.0
	v_fmac_f32_e32 v25, v32, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v24, v29, 1.0
	v_div_scale_f32 v42, null, v19, v19, v14
	v_dual_fmac_f32 v26, v33, v26 :: v_dual_fmac_f32 v27, v34, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v28, v25
	v_fmac_f32_e32 v29, v36, v29
	v_div_scale_f32 v32, null, v19, v19, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v30, v26
	v_mul_f32_e32 v36, v31, v27
	v_fma_f32 v39, -v21, v33, v28
	v_rcp_f32_e32 v37, v32
	v_div_scale_f32 v35, s3, v12, v19, v12
	v_fma_f32 v40, -v22, v34, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v39, v25
	v_fma_f32 v41, -v23, v36, v31
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v17, 32, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v40, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v21, -v21, v33, v28
	v_rcp_f32_e32 v28, v42
	v_fma_f32 v40, -v32, v37, 1.0
	v_fmac_f32_e32 v36, v41, v27
	v_fma_f32 v22, -v22, v34, v30
	v_div_fmas_f32 v21, v21, v25, v33
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v37, v40, v37
	v_fma_f32 v23, -v23, v36, v31
	v_div_fmas_f32 v22, v22, v26, v34
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v25, -v42, v28, 1.0
	v_div_fixup_f32 v9, v21, v19, v9
	v_div_fmas_f32 v23, v23, v27, v36
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v21, s1, v13, v19, v13
	v_fmac_f32_e32 v28, v25, v28
	v_div_scale_f32 v25, s2, v14, v19, v14
	v_mul_f32_e32 v38, v35, v29
	v_div_fixup_f32 v11, v23, v19, v11
	v_div_fixup_f32 v10, v22, v19, v10
	v_div_scale_f32 v22, null, v19, v19, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v24, v38, v35
	v_rcp_f32_e32 v26, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v38, v39, v29
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_add_nc_u32_e32 v39, 0, v65
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v23, -v24, v38, v35
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v23, v23, v29, v38
	v_div_scale_f32 v29, null, v19, v19, v16
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v38, s4, v7, v19, v7
	v_div_fixup_f32 v12, v23, v19, v12
	v_mul_f32_e32 v23, v25, v28
	v_rcp_f32_e32 v30, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v31, -v42, v23, v25
	v_dual_mul_f32 v24, v21, v37 :: v_dual_fmac_f32 v23, v31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v32, v24, v21
	v_div_scale_f32 v31, null, v19, v19, v1
	v_fmac_f32_e32 v24, v27, v37
	v_fma_f32 v27, -v22, v26, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v21, -v32, v24, v21
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v32, -v29, v30, 1.0
	v_div_fmas_f32 v21, v21, v37, v24
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, s1, v16, v19, v16
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v13, v21, v19, v13
	v_fma_f32 v21, -v42, v23, v25
	v_mul_f32_e32 v25, v32, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_lshrrev_b32_e32 v42, 6, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v28, v23
	v_fma_f32 v23, -v29, v25, v32
	v_div_scale_f32 v28, null, v19, v19, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v21, v19, v14
	v_fmac_f32_e32 v25, v23, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v23, v28
	v_fma_f32 v21, -v29, v25, v32
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fma_f32 v29, -v28, v23, 1.0
	v_fmac_f32_e32 v26, v27, v26
	v_div_scale_f32 v27, s3, v15, v19, v15
	s_mov_b32 vcc_lo, s3
	v_dual_fmac_f32 v23, v29, v23 :: v_dual_mul_f32 v24, v27, v26
	v_fma_f32 v33, -v22, v24, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v24, v33, v26
	v_fma_f32 v22, -v22, v24, v27
	v_fma_f32 v27, -v31, v34, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v22, v22, v26, v24
	v_div_scale_f32 v24, null, v19, v19, v3
	v_fmac_f32_e32 v34, v27, v34
	v_div_scale_f32 v26, s2, v1, v19, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v15, v22, v19, v15
	v_rcp_f32_e32 v22, v24
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v27, v26, v34
	v_div_fmas_f32 v21, v21, v30, v25
	v_div_scale_f32 v29, s1, v2, v19, v2
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v25, -v31, v27, v26
	v_div_fixup_f32 v16, v21, v19, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v30, -v24, v22, 1.0
	v_fmac_f32_e32 v22, v30, v22
	v_div_scale_f32 v30, s3, v3, v19, v3
	v_mul_f32_e32 v32, v29, v23
	v_fmac_f32_e32 v27, v25, v34
	v_div_scale_f32 v25, null, v19, v19, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v21, -v31, v27, v26
	v_rcp_f32_e32 v33, v25
	v_mul_f32_e32 v31, v30, v22
	v_fma_f32 v26, -v28, v32, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v32, v26, v23
	v_div_fmas_f32 v21, v21, v34, v27
	v_fma_f32 v26, -v24, v31, v30
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v27, -v25, v33, 1.0
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v34, null, v19, v19, v5
	v_div_fixup_f32 v21, v21, v19, v1
	v_fma_f32 v1, -v28, v32, v29
	v_fmac_f32_e32 v33, v27, v33
	v_div_scale_f32 v27, s2, v4, v19, v4
	v_fmac_f32_e32 v31, v26, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v1, v1, v23, v32
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v28, null, v19, v19, v6
	v_fma_f32 v23, -v24, v31, v30
	v_mul_f32_e32 v24, v27, v33
	v_div_fixup_f32 v2, v1, v19, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v30, v28
	v_rcp_f32_e32 v26, v34
	v_div_fmas_f32 v22, v23, v22, v31
	v_div_scale_f32 v31, null, v19, v19, v7
	v_fma_f32 v23, -v25, v24, v27
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v22, v19, v3
	v_rcp_f32_e32 v35, v31
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v32, -v28, v30, 1.0
	v_fma_f32 v29, -v34, v26, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v30, v32, v30
	v_div_scale_f32 v32, null, v19, v19, v8
	v_fma_f32 v1, -v31, v35, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v37, v32
	v_dual_fmac_f32 v35, v1, v35 :: v_dual_fmac_f32 v24, v23, v33
	v_div_scale_f32 v23, s3, v6, v19, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v25, -v25, v24, v27
	v_mul_f32_e32 v36, v23, v30
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v1, -v32, v37, 1.0
	v_div_fmas_f32 v24, v25, v33, v24
	.loc	1 1044 28                       ; attention.py:1044:28
	v_cmp_lt_f32_e32 vcc_lo, 0, v67
	.loc	1 1044 19                       ; attention.py:1044:19
	v_lshrrev_b32_e32 v33, 5, v64
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v26, v29, v26
	v_div_scale_f32 v29, s1, v5, v19, v5
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v40, 0, 1, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v1, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_add_nc_u32_e32 v33, v39, v33
	v_add_nc_u32_e32 v39, v39, v42
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v25, -v28, v36, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_mov_b16_e32 v1.l, v40.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v40, s2, v8, v19, v8
	v_mul_f32_e32 v22, v29, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v36, v25, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	ds_store_b8 v33, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v33, v40, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v34, v22, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	s_barrier
	ds_load_u8_d16 v1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v25, -v32, v33, v40
	v_div_fixup_f32 v4, v24, v19, v4
	v_dual_fmac_f32 v22, v27, v26 :: v_dual_mul_f32 v27, v38, v35
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v33, v25, v37
	v_fma_f32 v23, -v28, v36, v23
	v_fma_f32 v24, -v34, v22, v29
	v_fma_f32 v41, -v31, v27, v38
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s11, v18
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v25, -v32, v33, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v22, v24, v26, v22
	v_fmac_f32_e32 v27, v41, v35
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v23, v23, v30, v36
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v24, -v31, v27, v38
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	s_waitcnt lgkmcnt(0)
	v_and_b16 v1.l, 1, v1.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v22, v19, v5
	v_div_fmas_f32 v24, v24, v35, v27
	s_mov_b32 vcc_lo, s2
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s11, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v25, v25, v37, v33
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cmp_eq_u16_e32 vcc_lo, 1, v1.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v23, v19, v6
	v_div_fixup_f32 v6, v24, v19, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v7, v25, v19, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v8, 0, v9 :: v_dual_cndmask_b32 v9, 0, v10
	v_cndmask_b32_e32 v10, 0, v11, vcc_lo
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_or_b32_e32 v19, s14, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e32 v11, 0, v12, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_bfe_u32 v20, v8, 16, 1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_dual_cndmask_b32 v12, 0, v13 :: v_dual_cndmask_b32 v13, 0, v14
	v_dual_cndmask_b32 v14, 0, v15 :: v_dual_cndmask_b32 v5, 0, v5
	v_dual_cndmask_b32 v15, 0, v16 :: v_dual_cndmask_b32 v16, 0, v21
	v_dual_cndmask_b32 v7, 0, v7 :: v_dual_cndmask_b32 v2, 0, v2
	v_cndmask_b32_e32 v1, 0, v1, vcc_lo
	v_dual_cndmask_b32 v3, 0, v3 :: v_dual_cndmask_b32 v4, 0, v4
	v_cndmask_b32_e32 v6, 0, v6, vcc_lo
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v20, v8, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	v_bfe_u32 v8, v9, 16, 1
	v_bfe_u32 v21, v10, 16, 1
	v_bfe_u32 v22, v11, 16, 1
	v_cmp_o_f32_e64 s3, v10, v10
	v_cndmask_b16 v20.l, 0x7fff, v20.h, vcc_lo
	v_add3_u32 v8, v9, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v10, v21, 0x7fff
	v_add3_u32 v10, v11, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_bfe_u32 v11, v13, 16, 1
	v_cndmask_b16 v20.h, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v12, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v9.h, s3
	v_cndmask_b16 v9.h, 0x7fff, v10.h, s4
	v_bfe_u32 v10, v14, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v12, v12
	v_add3_u32 v8, v12, v8, 0x7fff
	v_add3_u32 v11, v13, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v13, v13
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v12, v15, 16, 1
	v_cndmask_b16 v8.h, 0x7fff, v11.h, s3
	v_bfe_u32 v11, v16, 16, 1
	v_bfe_u32 v13, v2, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_add3_u32 v12, v15, v12, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v15, v15
	v_add3_u32 v11, v16, v11, 0x7fff
	v_cmp_o_f32_e64 s3, v16, v16
	v_add3_u32 v13, v2, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v2, v2
	v_cndmask_b16 v10.h, 0x7fff, v12.h, vcc_lo
	v_bfe_u32 v2, v3, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s3
	v_bfe_u32 v12, v4, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v2, v3, v2, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v3, v3
	v_add3_u32 v3, v4, v12, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v5, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v5, v5
	v_bfe_u32 v5, v1, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s3
	v_bfe_u32 v3, v6, 16, 1
	v_add3_u32 v5, v1, v5, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v4.h, s4
	v_cmp_o_f32_e64 s3, v6, v6
	v_cmp_o_f32_e64 s5, v7, v7
	v_add3_u32 v1, v6, v3, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v5.h, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v0, 16, v0
	v_bfe_u32 v3, v7, 16, 1
	v_mov_b32_e32 v6, 0x7632
	v_cndmask_b16 v1.l, 0x7fff, v1.h, s3
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v19, s11, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_eq_u32_e64 s4, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_add3_u32 v3, v7, v3, 0x7fff
	s_mov_b32 s3, 0x76543210
	s_mov_b32 s14, 0x7ffffffe
	v_cndmask_b32_e64 v6, 0x3276, v6, s4
	v_cndmask_b32_e64 v0, 0x1054, v0, s4
	v_cndmask_b16 v1.h, 0x7fff, v3.h, s5
	v_cndmask_b32_e64 v7, v8, v20, s4
	v_cndmask_b32_e64 v5, v20, v8, s4
	v_lshl_or_b32 v3, v6, 8, v6
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b32_e64 v6, v10, v9, s4
	v_cndmask_b32_e64 v8, v9, v10, s4
	v_cndmask_b32_e64 v9, v4, v11, s4
	v_and_b32_e32 v3, 0x760076, v3
	v_and_b32_e32 v0, 0x540054, v0
	v_cndmask_b32_e64 v4, v11, v4, s4
	v_cndmask_b32_e64 v10, v1, v2, s4
	v_cndmask_b32_e64 v1, v2, v1, s4
	v_lshl_or_b32 v3, v3, 4, v3
	v_lshl_or_b32 v0, v0, 4, v0
	v_permlanex16_b32 v2, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v4, s3, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v12, 0x7060706, v3
	v_and_b32_e32 v11, 0x5040504, v0
	v_permlanex16_b32 v3, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v1, s3, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v1, v2, v7, v12
	v_perm_b32 v4, v5, v9, v11
	v_perm_b32 v5, v5, v9, v12
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v9, v19, v18, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v2, v7, v11
	v_perm_b32 v2, v3, v6, v11
	v_perm_b32 v3, v3, v6, v12
	v_perm_b32 v6, v8, v10, v11
	v_perm_b32 v7, v8, v10, v12
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v8, v19, v17, 1
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s0, s2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x1
	buffer_store_b128 v[0:3], v9, s[12:15], 0 offen
	buffer_store_b128 v[4:7], v8, s[12:15], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 116
		.amdhsa_next_free_sgpr 34
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
		.amdhsa_inst_pref_size 47
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_vgpr, 116
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5972
; TotalNumSgprs: 36
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 116
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x7d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x57 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x2a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp3-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	968                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x6b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x78:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
