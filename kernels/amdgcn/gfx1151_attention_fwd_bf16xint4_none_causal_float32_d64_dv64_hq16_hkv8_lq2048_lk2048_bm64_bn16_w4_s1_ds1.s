	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[10:11], s[0:1], 0x5c
	s_load_b64 s[16:17], s[0:1], 0x0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 787 79                        ; attention.py:787:79
	v_and_b32_e32 v3, 7, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 6
	.loc	1 786 26                        ; attention.py:786:26
	s_lshl_b32 s2, s3, 11
	s_mov_b32 s19, 0x31027000
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v1
	.loc	1 787 79                        ; attention.py:787:79
	v_lshlrev_b32_e32 v5, 3, v3
	.loc	1 787 26 is_stmt 0              ; attention.py:787:26
	s_add_i32 s14, s4, s2
	s_mov_b32 s18, 0x7ffffffe
	s_clause 0x1
	s_load_b32 s8, s[0:1], 0x84
	s_load_b64 s[12:13], s[0:1], 0x38
	.loc	1 790 23 is_stmt 1              ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v22, 4, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v77, 4, v0
	v_bfe_u32 v75, v0, 4, 1
	s_mov_b32 s28, 0
	.loc	1 787 26                        ; attention.py:787:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v4, s10, v1
	s_mul_i32 s5, s10, s14
	.loc	1 790 61                        ; attention.py:790:61
	v_cmp_gt_i32_e32 vcc_lo, s10, v5
	.loc	1 787 26                        ; attention.py:787:26
	s_lshl_b32 s6, s10, 4
	s_lshl_b32 s15, s10, 5
	.loc	1 788 26                        ; attention.py:788:26
	s_and_b32 s17, s17, 0xffff
	.loc	1 790 22                        ; attention.py:790:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 787 26                        ; attention.py:787:26
	v_add3_u32 v2, v4, v5, s5
	s_mul_i32 s5, s10, 48
	.loc	1 810 48                        ; attention.py:810:48
	s_add_i32 s9, s4, s8
	s_add_i32 s9, s9, 64
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v4, 1, v2
	v_add_lshl_u32 v5, v2, s6, 1
	v_add_lshl_u32 v6, v2, s15, 1
	v_add_lshl_u32 v2, v2, s5, 1
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s9, 1
	.loc	1 788 26                        ; attention.py:788:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v5, 0x80000000, v5, s2
	v_cndmask_b32_e64 v14, 0x80000000, v6, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[6:9], v4, s[16:19], 0 offen
	buffer_load_b128 v[10:13], v5, s[16:19], 0 offen
	buffer_load_b128 v[14:17], v14, s[16:19], 0 offen
	buffer_load_b128 v[18:21], v2, s[16:19], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v4, 0x60, v0
	.loc	1 788 26                        ; attention.py:788:26
	v_lshlrev_b32_e32 v5, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v2, 15, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshrrev_b32_e32 v23, 1, v4
	.loc	1 788 26                        ; attention.py:788:26
	v_and_b32_e32 v5, 0x70, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v76, v23, v2
	.loc	1 788 26                        ; attention.py:788:26
	v_xor_b32_e32 v22, v22, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s4, v76
	.loc	1 788 26                        ; attention.py:788:26
	v_add_nc_u32_e32 v78, 0, v22
	s_waitcnt vmcnt(3)
	ds_store_b128 v78, v[6:9]
	s_waitcnt vmcnt(2)
	ds_store_b128 v78, v[10:13] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v78, v[14:17] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[18:21] offset:6144
	.loc	1 790 23                        ; attention.py:790:23
	v_cmp_gt_i32_e64 s2, 0x800, v5
	.loc	1 788 26                        ; attention.py:788:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v11, 0x5410 :: v_dual_lshlrev_b32 v6, 4, v3
	.loc	1 755 23 is_stmt 1              ; attention.py:755:23
	s_ashr_i32 s4, s3, 31
	s_load_b32 s16, s[0:1], 0x64
	s_lshr_b32 s4, s4, 28
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v2, 7, v6
	s_add_i32 s17, s3, s4
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[20:21], s[0:1], 0x28
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s0, s17, 0xfff0
	.loc	1 810 25                        ; attention.py:810:25
	s_min_i32 s1, s9, 0x800
	.loc	1 788 26                        ; attention.py:788:26
	v_lshl_or_b32 v4, v4, 6, v79
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s0, s3, s0
	v_dual_mov_b32 v95, 0xff800000 :: v_dual_add_nc_u32 v80, s8, v5
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s3, s0, 0x10007
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, 0x70, v4, 0
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s0, s0, s3
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v7, 0x60, v4, 0
	.loc	1 811 35                        ; attention.py:811:35
	s_add_i32 s1, s1, 15
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s0, s0, 0x80000
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v8, 0x50, v4, 0
	v_xad_u32 v9, v4, 64, 0
	.loc	1 811 34                        ; attention.py:811:34
	s_ashr_i32 s3, s1, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_sext_i32_i16 s0, s0
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[36:39], v5
	ds_load_b128 v[32:35], v7
	ds_load_b128 v[44:47], v8
	ds_load_b128 v[40:43], v9
	v_xad_u32 v8, v4, 16, 0
	v_dual_mov_b32 v64, 0 :: v_dual_and_b32 v9, 16, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s17, 4
	.loc	1 758 19                        ; attention.py:758:19
	s_ashr_i32 s17, s0, 1
	.loc	1 811 34                        ; attention.py:811:34
	s_lshr_b32 s0, s3, 28
	.loc	1 788 26                        ; attention.py:788:26
	v_xad_u32 v5, v4, 48, 0
	v_xad_u32 v7, v4, 32, 0
	v_dual_mov_b32 v27, v64 :: v_dual_add_nc_u32 v4, 0, v4
	.loc	1 811 34                        ; attention.py:811:34
	s_add_i32 s1, s1, s0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshlrev_b32_e32 v3, 2, v2
	.loc	1 811 33                        ; attention.py:811:33
	s_and_b32 s29, s1, -16
	v_cmp_eq_u32_e64 s1, 0, v9
	.loc	1 788 26                        ; attention.py:788:26
	ds_load_b128 v[60:63], v8
	ds_load_b128 v[56:59], v4
	v_mov_b32_e32 v4, 0x7632
	ds_load_b128 v[52:55], v5
	ds_load_b128 v[48:51], v7
	v_dual_mov_b32 v31, v64 :: v_dual_lshlrev_b32 v16, 5, v0
	v_cndmask_b32_e64 v5, 0x1054, v11, s1
	v_cndmask_b32_e64 v4, 0x3276, v4, s1
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, v64
	v_dual_mov_b32 v25, v64 :: v_dual_and_b32 v10, 0x70, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v5, 8, v5
	v_lshl_or_b32 v4, v4, 8, v4
	v_dual_mov_b32 v28, v64 :: v_dual_lshlrev_b32 v15, 7, v0
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s1, s9, 14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v4, 0x760076, v4
	s_lshl_b32 s8, s17, 11
	v_mov_b32_e32 v19, v64
	s_add_i32 s1, s1, s8
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v4, v4, 4, v4
	s_lshl_b32 s8, s17, 10
	v_lshrrev_b32_e32 v10, 2, v10
	v_and_b32_e32 v15, 0x700, v15
	v_dual_mov_b32 v26, v64 :: v_dual_and_b32 v81, 0x5040504, v5
	v_bfe_i32 v5, v0, 0, 1
	v_dual_mov_b32 v17, v64 :: v_dual_and_b32 v82, 0x7060706, v4
	v_and_b32_e32 v4, 0x160, v16
	v_bfe_i32 v0, v0, 2, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v30, v64 :: v_dual_and_b32 v5, 0x90, v5
	v_xor_b32_e32 v7, 16, v79
	v_xor_b32_e32 v8, 32, v79
	v_and_or_b32 v83, 0x90, v0, v4
	v_or_b32_e32 v0, s1, v1
	s_lshl_b32 s1, s9, 13
	v_dual_mov_b32 v18, v64 :: v_dual_lshlrev_b32 v1, 3, v2
	s_add_i32 s1, s1, s8
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, s10, v0
	v_or_b32_e32 v2, s1, v77
	v_xor_b32_e32 v4, 16, v83
	v_xor_b32_e32 v9, 48, v79
	v_xor_b32_e32 v11, 64, v79
	v_xor_b32_e32 v12, 0x50, v79
	v_xor_b32_e32 v13, 0x60, v79
	v_xor_b32_e32 v14, 0x70, v79
	v_xor_b32_e32 v5, v5, v10
	v_mov_b32_e32 v16, 0
	v_dual_mov_b32 v21, v64 :: v_dual_add_nc_u32 v10, 0, v15
	.loc	1 937 33                        ; attention.py:937:33
	s_lshl3_add_u32 s3, s9, s17
	.loc	1 903 13                        ; attention.py:903:13
	v_mad_u64_u32 v[73:74], null, s11, v2, v[3:4]
	s_mul_i32 s3, s3, s11
	.loc	1 981 24                        ; attention.py:981:24
	v_cmp_gt_i32_e64 s0, s11, v3
	.loc	1 903 13                        ; attention.py:903:13
	v_lshl_or_b32 v84, s3, 8, v1
	v_lshl_add_u32 v85, v0, 1, v6
	v_dual_mov_b32 v23, v64 :: v_dual_add_nc_u32 v86, 0, v7
	v_dual_mov_b32 v20, v64 :: v_dual_add_nc_u32 v87, 0, v8
	v_add_nc_u32_e32 v88, 0, v9
	v_mov_b32_e32 v9, v64
	v_dual_mov_b32 v22, v64 :: v_dual_add_nc_u32 v89, 0, v11
	v_dual_mov_b32 v11, v64 :: v_dual_add_nc_u32 v90, 0, v12
	v_dual_mov_b32 v8, 0 :: v_dual_add_nc_u32 v91, 0, v13
	v_dual_mov_b32 v13, v64 :: v_dual_add_nc_u32 v92, 0, v14
	v_add_nc_u32_e32 v93, v10, v5
	v_mov_b32_e32 v10, v64
	v_dual_mov_b32 v15, v64 :: v_dual_add_nc_u32 v94, 0, v4
	v_mov_b32_e32 v12, v64
	v_mov_b32_e32 v14, v64
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, v64
	v_mov_b32_e32 v2, v64
	v_dual_mov_b32 v3, v64 :: v_dual_mov_b32 v74, 0
	v_mov_b32_e32 v4, v64
	v_mov_b32_e32 v5, v64
	v_mov_b32_e32 v6, v64
	v_mov_b32_e32 v7, v64
	.loc	1 945 31                        ; attention.py:945:31
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s30, s16, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s25, s7, 0xffff
	s_and_b32 s21, s21, 0xffff
	.loc	1 903 13                        ; attention.py:903:13
	s_lshl_b32 s10, s11, 1
	s_lshl_b32 s31, s11, 3
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s24, s6
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s33, 0x76543210
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 939 32                        ; attention.py:939:32
	v_dual_cndmask_b32 v72, 0x80000000, v85 :: v_dual_mov_b32 v65, v64
	.loc	1 944 30                        ; attention.py:944:30
	v_dual_mov_b32 v67, v64 :: v_dual_add_nc_u32 v100, 0, v79
	v_mov_b32_e32 v71, v64
	.loc	1 939 32                        ; attention.py:939:32
	buffer_load_b128 v[96:99], v72, s[16:19], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 944 30                        ; attention.py:944:30
	v_mov_b32_e32 v66, v64
	v_mov_b32_e32 v68, v64
	v_mov_b32_e32 v69, v64
	v_mov_b32_e32 v70, v64
	v_mov_b32_e32 v72, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v71, v70
	v_mov_b32_e32 v70, v69
	v_mov_b32_e32 v69, v68
	v_mov_b32_e32 v68, v67
	v_mov_b32_e32 v67, v66
	v_mov_b32_e32 v66, v65
	v_mov_b32_e32 v65, v64
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v107.l, 0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v85, s15, v85
	.loc	1 990 39                        ; attention.py:990:39
	.loc	1 939 32                        ; attention.py:939:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v78, v[96:99]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[96:99], v100
	ds_load_b128 v[100:103], v86
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[96:103], v[56:63], v[65:72]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[96:99], v87
	ds_load_b128 v[100:103], v88
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[96:103], v[48:55], v[65:72]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[96:99], v89
	ds_load_b128 v[100:103], v90
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[96:103], v[40:47], v[65:72]
	.loc	1 939 32                        ; attention.py:939:32
	ds_load_b128 v[96:99], v91
	ds_load_b128 v[100:103], v92
	.loc	1 944 30                        ; attention.py:944:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[96:103], v[32:39], v[65:72]
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v96, s28, v75
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v102.h, v107.l
	.loc	1 903 13                        ; attention.py:903:13
	s_add_i32 s28, s28, 16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 945 21                        ; attention.py:945:21
	v_mul_f32_e32 v65, s30, v65
	.loc	1 938 32                        ; attention.py:938:32
	v_add_nc_u32_e32 v97, 14, v96
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v98, 12, v96
	v_add_nc_u32_e32 v99, 10, v96
	v_add_nc_u32_e32 v100, 8, v96
	v_add_nc_u32_e32 v101, 6, v96
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s1, v97, v80
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v97, 4, v96
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s3, v96, v80
	.loc	1 904 31                        ; attention.py:904:31
	v_add_nc_u32_e32 v96, 2, v96
	.loc	1 949 30                        ; attention.py:949:30
	v_cmp_le_i32_e64 s4, v98, v80
	v_cmp_le_i32_e64 s5, v99, v80
	v_cmp_le_i32_e64 s6, v100, v80
	v_cmp_le_i32_e64 s7, v101, v80
	v_cmp_le_i32_e64 s8, v97, v80
	v_cmp_le_i32_e64 s9, v96, v80
	.loc	1 945 21                        ; attention.py:945:21
	v_dual_mul_f32 v66, s30, v66 :: v_dual_mul_f32 v67, s30, v67
	v_dual_mul_f32 v68, s30, v68 :: v_dual_mul_f32 v69, s30, v69
	v_dual_mul_f32 v70, s30, v70 :: v_dual_mul_f32 v71, s30, v71
	v_mul_f32_e32 v72, s30, v72
	.loc	1 949 21                        ; attention.py:949:21
	s_and_b32 s3, s2, s3
	s_and_b32 s1, s2, s1
	s_and_b32 s5, s2, s5
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	s_and_b32 s4, s2, s4
	s_and_b32 s9, s2, s9
	.loc	1 967 26                        ; attention.py:967:26
	v_cndmask_b32_e64 v71, 0xff800000, v71, s4
	v_cndmask_b32_e64 v72, 0xff800000, v72, s1
	v_cndmask_b32_e64 v69, 0xff800000, v69, s6
	v_cndmask_b32_e64 v70, 0xff800000, v70, s5
	v_cndmask_b32_e64 v67, 0xff800000, v67, s8
	v_cndmask_b32_e64 v68, 0xff800000, v68, s7
	v_cndmask_b32_e64 v65, 0xff800000, v65, s3
	v_cndmask_b32_e64 v66, 0xff800000, v66, s9
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max_f32_e32 v96, v71, v72
.Ltmp2:
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v99.h, v107.l
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v97, v68, v69, v70
.Ltmp4:
	.loc	1 903 13                        ; attention.py:903:13
	s_cmp_lt_i32 s28, s29
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:968:29 ] ]
	v_max3_f32 v98, v65, v66, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v96, v98, v97, v96
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:968:29 ]
	v_permlanex16_b32 v97, v96, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	1 969 24                        ; attention.py:969:24
	v_max3_f32 v96, v95, v96, v97
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v67, v67, v96
	v_sub_f32_e32 v65, v65, v96
	v_sub_f32_e32 v69, v69, v96
	v_sub_f32_e32 v71, v71, v96
	v_sub_f32_e32 v72, v72, v96
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v67, v67
	v_exp_f32_e32 v65, v65
	v_exp_f32_e32 v69, v69
	v_exp_f32_e32 v71, v71
	v_exp_f32_e32 v72, v72
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v100, 0, v67, s8
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v67.h, v107.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v66, v66, v96
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v98, 0, v65, s3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v104, 0, v71, s4
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v71.h, v107.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v70, v70, v96
	.loc	1 971 49 is_stmt 0              ; attention.py:971:49
	v_exp_f32_e32 v66, v66
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_mov_b16_e32 v99.l, v98.h
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 971 33 is_stmt 0              ; attention.py:971:33
	v_cndmask_b32_e64 v97, 0, v66, s9
	.loc	1 1019 30 is_stmt 1             ; attention.py:1019:30
	v_and_b32_e32 v66, 1, v99
	v_cmp_o_f32_e64 s9, v98, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v102.l, v97.h
	v_cmp_o_f32_e64 s3, v97, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v66, v98, v66, 0x7fff
	v_and_b32_e32 v65, 1, v102
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v102, 0, v69, s6
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v69.h, v107.l
	.loc	1 971 62                        ; attention.py:971:62
	v_sub_f32_e32 v68, v68, v96
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v99.l, 0x7fff, v66.h, s9
	v_add3_u32 v65, v97, v65, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 971 49                        ; attention.py:971:49
	v_exp_f32_e32 v68, v68
	.loc	1 1019 30                       ; attention.py:1019:30
	v_cndmask_b16 v99.h, 0x7fff, v65.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v66, v99, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v66, v99, v81
	v_perm_b32 v66, v66, v99, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v99, 0, v68, s7
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v68.h, v107.l
	v_mov_b16_e32 v68.l, v100.h
	v_cmp_o_f32_e64 s7, v100, v100
	v_mov_b16_e32 v67.l, v99.h
	v_cmp_o_f32_e64 s3, v99, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v68, 1, v68
	v_and_b32_e32 v67, 1, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v68, v100, v68, 0x7fff
	v_add3_u32 v67, v99, v67, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v101.l, 0x7fff, v68.h, s7
	v_cndmask_b16 v101.h, 0x7fff, v67.h, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v68, v101, s33, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v68, v101, v81
	v_perm_b32 v68, v68, v101, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v101, 0, v70, s5
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v70.h, v107.l
	v_mov_b16_e32 v70.l, v102.h
	v_cmp_o_f32_e64 s5, v102, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v69.l, v101.h
	v_cmp_o_f32_e64 s3, v101, v101
	v_and_b32_e32 v70, 1, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v69, 1, v69
	v_add3_u32 v70, v102, v70, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v69, v101, v69, 0x7fff
	v_cndmask_b16 v103.l, 0x7fff, v70.h, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v103.h, 0x7fff, v69.h, s3
	v_cmp_o_f32_e64 s3, v104, v104
	v_permlanex16_b32 v70, v103, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v69, v70, v103, v81
	v_perm_b32 v70, v70, v103, v82
	.loc	1 971 33                        ; attention.py:971:33
	v_cndmask_b32_e64 v103, 0, v72, s1
	.loc	1 1019 30                       ; attention.py:1019:30
	v_mov_b16_e32 v72.h, v107.l
	v_mov_b16_e32 v72.l, v104.h
	v_mov_b16_e32 v71.l, v103.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s1, v103, v103
	v_and_b32_e32 v72, 1, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v71, 1, v71
	v_add3_u32 v72, v104, v72, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v71, v103, v71, 0x7fff
	v_cndmask_b16 v105.l, 0x7fff, v72.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v105.h, 0x7fff, v71.h, s1
	v_permlanex16_b32 v72, v105, s33, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v71, v72, v105, v81
	v_perm_b32 v72, v72, v105, v82
	.loc	1 978 32                        ; attention.py:978:32
	v_cndmask_b32_e64 v105, 0x80000000, v73, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v73, s31, v73
	.loc	1 978 32                        ; attention.py:978:32
	buffer_load_b32 v108, v105, s[24:27], 0 offen
	s_waitcnt vmcnt(0)
	v_bfe_i32 v105, v108, 0, 8
	v_lshrrev_b32_e32 v106, 8, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v105.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v105.l, v108.l, 15
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v105.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b16 v105.h, 0, -16, s3
	v_or_b16 v109.l, v105.l, v105.h
	.loc	1 988 32 is_stmt 1              ; attention.py:988:32
	v_lshrrev_b16 v105.l, 4, v108.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v105.l, v105.l, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.h, v105.l, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v110.l, v105.l, v105.h, s1
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v105, v106, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v105.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v105.l, 4, v106.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v105.l, v105.l, 15
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.h, v105.l, -16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v111.l, v105.l, v105.h, s1
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v105.l, v106.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v106, v111, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v105.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v111, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v105.h, 0, -16, s1
	v_or_b16 v105.l, v105.l, v105.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v105, v105, 0, 16
	v_cvt_f32_i32_e32 v112, v105
	.loc	1 1000 41                       ; attention.py:1000:41
	v_cndmask_b32_e64 v105, 0x80000000, v84, s0
	.loc	1 903 13                        ; attention.py:903:13
	v_add_nc_u32_e32 v84, s10, v84
	.loc	1 1000 41                       ; attention.py:1000:41
	buffer_load_b64 v[105:106], v105, s[20:23], 0 offen
	.loc	1 1017 30                       ; attention.py:1017:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1000 41                       ; attention.py:1000:41
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v113, 0xffff0000, v105
	v_mov_b16_e32 v107.h, v105.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v105, v109, 0, 16
	.loc	1 1017 30 is_stmt 0             ; attention.py:1017:30
	v_mov_b16_e32 v109.h, v107.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v111, v113, v111
	v_cvt_f32_i32_e32 v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s4, v111, v111
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v105, v107, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.l, v105.h
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v112, v113, v112
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v105, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v109, 1, v109
	v_cmp_o_f32_e64 s5, v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v105, v105, v109, 0x7fff
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v109, v110, 0, 16
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v110.h, v107.l
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v109, v107, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v107.h, v107.l
	v_mov_b16_e32 v110.l, v109.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v109, v109
	v_and_b32_e32 v110, 1, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add3_u32 v109, v109, v110, 0x7fff
	v_mov_b16_e32 v110.h, v107.l
	v_mov_b16_e32 v110.l, v111.h
	v_cndmask_b16 v109.l, 0x7fff, v105.h, s1
	v_cndmask_b16 v109.h, 0x7fff, v109.h, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v110, 1, v110
	v_add3_u32 v110, v111, v110, 0x7fff
	v_mov_b16_e32 v111.h, v107.l
	v_mov_b16_e32 v111.l, v112.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v105.h, 0x7fff, v110.h, s4
	v_and_b32_e32 v111, 1, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v111, v112, v111, 0x7fff
	v_cndmask_b16 v105.l, 0x7fff, v111.h, s5
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_lshrrev_b32_e32 v111, 24, v108
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v93, v109, v105 offset1:8
	.loc	1 978 32                        ; attention.py:978:32
	v_mov_b16_e32 v105.l, v108.h
	.loc	1 1000 41                       ; attention.py:1000:41
	v_mov_b16_e32 v109.h, v106.l
	v_mov_b16_e32 v109.l, v107.l
	v_and_b32_e32 v106, 0xffff0000, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 978 32                        ; attention.py:978:32
	v_bfe_i32 v105, v105, 0, 8
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s1, 0, v105.l
	.loc	1 986 76                        ; attention.py:986:76
	v_and_b16 v105.l, v108.h, 15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s3, 7, v105.l
	.loc	1 989 29 is_stmt 0              ; attention.py:989:29
	v_cndmask_b16 v105.h, 0, -16, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v110.l, v105.l, v105.h
	.loc	1 978 32 is_stmt 1              ; attention.py:978:32
	v_bfe_i32 v105, v111, 0, 8
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v110, v110, 0, 16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 990 39                        ; attention.py:990:39
	v_cmp_gt_i16_e64 s3, 0, v105.l
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b32_e32 v105, 20, v108
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v110, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 988 32                        ; attention.py:988:32
	v_and_b16 v105.l, v105.l, 15
	.loc	1 1017 31                       ; attention.py:1017:31
	v_mul_f32_e32 v110, v109, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.h, v105.l, -16
	.loc	1 990 30 is_stmt 0              ; attention.py:990:30
	v_cndmask_b16 v108.l, v105.l, v105.h, s1
	.loc	1 986 76 is_stmt 1              ; attention.py:986:76
	v_and_b16 v105.l, v111.l, 15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v108, v108, 0, 16
	.loc	1 989 38                        ; attention.py:989:38
	v_cmp_lt_u16_e64 s1, 7, v105.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v108, v108
	.loc	1 989 29                        ; attention.py:989:29
	v_cndmask_b16 v105.h, 0, -16, s1
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s1, v110, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_mul_f32_e32 v108, v109, v108
	.loc	1 989 29 is_stmt 1              ; attention.py:989:29
	v_or_b16 v112.l, v105.l, v105.h
	.loc	1 988 32                        ; attention.py:988:32
	v_lshrrev_b16 v105.l, 4, v111.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_bfe_i32 v109, v112, 0, 16
	.loc	1 990 56                        ; attention.py:990:56
	v_or_b16 v105.h, v105.l, -16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1017 31                       ; attention.py:1017:31
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 990 30                        ; attention.py:990:30
	v_cndmask_b16 v105.l, v105.l, v105.h, s3
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cmp_o_f32_e64 s3, v108, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1017 31 is_stmt 0             ; attention.py:1017:31
	v_bfe_i32 v105, v105, 0, 16
	v_cvt_f32_i32_e32 v105, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v105, v106, v105
	v_mul_f32_e32 v106, v106, v109
	.loc	1 1017 30                       ; attention.py:1017:30
	v_mov_b16_e32 v109.h, v107.l
	v_mov_b16_e32 v109.l, v110.h
	v_cmp_o_f32_e64 s4, v105, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v109, 1, v109
	v_add3_u32 v109, v110, v109, 0x7fff
	v_mov_b16_e32 v110.h, v107.l
	v_mov_b16_e32 v110.l, v108.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v110, 1, v110
	v_add3_u32 v108, v108, v110, 0x7fff
	v_mov_b16_e32 v110.h, v107.l
	v_mov_b16_e32 v107.l, v106.h
	v_mov_b16_e32 v110.l, v105.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v107, 1, v107
	v_cmp_o_f32_e64 s5, v106, v106
	v_add3_u32 v106, v106, v107, 0x7fff
	v_cndmask_b16 v107.l, 0x7fff, v109.h, s1
	.loc	1 970 25 is_stmt 1              ; attention.py:970:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v95
	.loc	1 970 74 is_stmt 0              ; attention.py:970:74
	v_sub_f32_e32 v95, v95, v96
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_cndmask_b16 v107.h, 0x7fff, v108.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 970 61                        ; attention.py:970:61
	v_exp_f32_e32 v95, v95
	.loc	1 970 25 is_stmt 0              ; attention.py:970:25
	v_cndmask_b32_e64 v113, 0, v95, s1
	.loc	1 1017 30 is_stmt 1             ; attention.py:1017:30
	v_and_b32_e32 v110, 1, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1018 23                       ; attention.py:1018:23
	v_dual_mul_f32 v24, v24, v113 :: v_dual_add_nc_u32 v95, 0, v83
	v_mul_f32_e32 v27, v27, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	v_add3_u32 v105, v105, v110, 0x7fff
	v_cndmask_b16 v105.l, 0x7fff, v106.h, s5
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v25, v25, v113
	v_mul_f32_e32 v26, v26, v113
	v_mul_f32_e32 v28, v28, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	v_cndmask_b16 v105.h, 0x7fff, v105.h, s4
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v29, v29, v113
	v_mul_f32_e32 v30, v30, v113
	v_mul_f32_e32 v31, v31, v113
	v_mul_f32_e32 v16, v16, v113
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_store_2addr_b32 v93, v107, v105 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[109:112], v94
	ds_load_b128 v[105:108], v95
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v17, v17, v113
	v_mul_f32_e32 v18, v18, v113
	v_mul_f32_e32 v19, v19, v113
	v_mul_f32_e32 v20, v20, v113
	v_mul_f32_e32 v21, v21, v113
	v_mul_f32_e32 v22, v22, v113
	v_mul_f32_e32 v23, v23, v113
	v_mul_f32_e32 v8, v8, v113
	v_mul_f32_e32 v9, v9, v113
	v_mul_f32_e32 v10, v10, v113
	v_mul_f32_e32 v11, v11, v113
	v_mul_f32_e32 v12, v12, v113
	v_mul_f32_e32 v13, v13, v113
	v_mul_f32_e32 v14, v14, v113
	v_mul_f32_e32 v15, v15, v113
	v_mul_f32_e32 v0, v0, v113
	v_mul_f32_e32 v1, v1, v113
	v_mul_f32_e32 v2, v2, v113
	v_mul_f32_e32 v3, v3, v113
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[105:112], v[65:72], v[24:31]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[105:108], v95 offset:512
	ds_load_b128 v[109:112], v94 offset:512
	.loc	1 1018 23                       ; attention.py:1018:23
	v_mul_f32_e32 v4, v4, v113
	v_mul_f32_e32 v5, v5, v113
	v_mul_f32_e32 v6, v6, v113
	v_mul_f32_e32 v7, v7, v113
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[105:112], v[65:72], v[16:23]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[109:112], v94 offset:1024
	ds_load_b128 v[105:108], v95 offset:1024
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[105:112], v[65:72], v[8:15]
	.loc	1 1017 30                       ; attention.py:1017:30
	ds_load_b128 v[105:108], v95 offset:1536
	ds_load_b128 v[109:112], v94 offset:1536
	v_mov_b32_e32 v95, v96
	.loc	1 1019 23                       ; attention.py:1019:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[105:112], v[65:72], v[0:7]
.Ltmp8:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_dual_add_f32 v65, v98, v97 :: v_dual_add_f32 v66, v100, v99
	v_dual_add_f32 v67, v102, v101 :: v_dual_add_f32 v68, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_add_f32 v65, v65, v66 :: v_dual_add_f32 v66, v67, v68
	v_mov_b32_e32 v67, v74
	v_add_f32_e32 v65, v65, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:972:24 ]
	v_permlanex16_b32 v66, v65, s33, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:972:24 ] ]
	v_add_f32_e32 v74, v65, v66
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp11:
	.loc	1 1020 23                       ; attention.py:1020:23
	v_fmac_f32_e32 v74, v67, v113
	.loc	1 903 13                        ; attention.py:903:13
	s_cbranch_scc1 .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
	v_mov_b32_e32 v74, v7
.LBB0_4:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 1             ; attention.py:1044:48
	v_div_scale_f32 v36, null, v74, v74, v24
	v_div_scale_f32 v37, null, v74, v74, v25
	v_div_scale_f32 v40, null, v74, v74, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v38, v36
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v42, null, v74, v74, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v41, vcc_lo, v24, v74, v24
	v_rcp_f32_e32 v45, v42
	v_div_scale_f32 v44, s0, v25, v74, v25
	v_fma_f32 v34, -v36, v38, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v35, -v37, v39, 1.0
	v_div_scale_f32 v50, s1, v26, v74, v26
	v_fma_f32 v47, -v40, v43, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v38, v34, v38 :: v_dual_fmac_f32 v39, v35, v39
	v_fma_f32 v51, -v42, v45, 1.0
	v_div_scale_f32 v52, null, v74, v74, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v46, v41, v38 :: v_dual_fmac_f32 v43, v47, v43
	v_dual_mul_f32 v48, v44, v39 :: v_dual_fmac_f32 v45, v51, v45
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v36, v46, v41
	s_mov_b32 s15, 0x31027000
	v_fma_f32 v47, -v37, v48, v44
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v35, 16, v75
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v51, v50, v43 :: v_dual_fmac_f32 v46, v49, v38
	v_div_scale_f32 v49, s3, v27, v74, v27
	v_fmac_f32_e32 v48, v47, v39
	v_div_scale_f32 v47, null, v74, v74, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v36, v46, v41
	v_div_scale_f32 v41, null, v74, v74, v28
	v_fma_f32 v37, -v37, v48, v44
	v_fma_f32 v44, -v40, v51, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v36, v36, v38, v46
	v_rcp_f32_e32 v38, v41
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v46, v49, v45 :: v_dual_fmac_f32 v51, v44, v43
	v_div_fixup_f32 v24, v36, v74, v24
	v_div_fmas_f32 v36, v37, v39, v48
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v39, -v42, v46, v49
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, s1, v29, v74, v29
	v_fma_f32 v44, -v41, v38, 1.0
	v_div_fixup_f32 v25, v36, v74, v25
	v_fma_f32 v36, -v40, v51, v50
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v74
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v34, 32, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v38
	v_fmac_f32_e32 v46, v39, v45
	v_fma_f32 v40, -v47, v37, 1.0
	v_div_scale_f32 v44, null, v74, v74, v30
	v_div_fmas_f32 v36, v36, v43, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v42, v46, v49
	v_fmac_f32_e32 v37, v40, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v40, v44
	v_div_scale_f32 v49, null, v74, v74, v31
	v_div_scale_f32 v39, s4, v28, v74, v28
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v51, v49
	v_div_fmas_f32 v42, v42, v45, v46
	v_div_fixup_f32 v26, v36, v74, v26
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v50, -v44, v40, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v42, v74, v27
	v_mul_f32_e32 v46, v48, v37
	v_div_scale_f32 v42, s3, v30, v74, v30
	v_fmac_f32_e32 v40, v50, v40
	v_fma_f32 v50, -v49, v51, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v36, -v47, v46, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s0
	v_cndmask_b32_e64 v26, 0, v26, s0
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v50, v51
	v_mul_f32_e32 v43, v39, v38
	v_div_scale_f32 v50, s5, v31, v74, v31
	v_fmac_f32_e32 v46, v36, v37
	.loc	1 787 79 is_stmt 1              ; attention.py:787:79
	v_or_b32_e32 v33, 48, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v41, v43, v39
	.loc	1 787 79                        ; attention.py:787:79
	v_or_b32_e32 v32, 62, v77
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v45, v38
	v_div_scale_f32 v45, null, v74, v74, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v41, v43, v39
	v_rcp_f32_e32 v41, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v38, v39, v38, v43
	v_fma_f32 v39, -v47, v46, v48
	v_mul_f32_e32 v47, v50, v51
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v28, v38, v74, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v45, v41, 1.0
	v_div_fmas_f32 v37, v39, v37, v46
	v_rcp_f32_e32 v39, v52
	v_div_scale_f32 v46, s1, v16, v74, v16
	v_dual_fmac_f32 v41, v48, v41 :: v_dual_mul_f32 v36, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v29, v37, v74, v29
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v48, null, v74, v74, v19
	v_fma_f32 v43, -v44, v36, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v43, v40
	v_fma_f32 v43, -v49, v47, v50
	v_fma_f32 v37, -v44, v36, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v43, v51
	v_fma_f32 v42, -v52, v39, 1.0
	v_div_scale_f32 v44, s3, v17, v74, v17
	v_div_scale_f32 v43, null, v74, v74, v18
	v_fmac_f32_e32 v39, v42, v39
	v_mul_f32_e32 v38, v46, v41
	v_div_fmas_f32 v36, v37, v40, v36
	v_fma_f32 v37, -v49, v47, v50
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v30, v36, v74, v30
	v_div_fmas_f32 v37, v37, v51, v47
	v_mul_f32_e32 v47, v44, v39
	v_fma_f32 v40, -v45, v38, v46
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v31, v37, v74, v31
	v_fma_f32 v37, -v52, v47, v44
	v_fmac_f32_e32 v38, v40, v41
	v_rcp_f32_e32 v40, v48
	v_fma_f32 v49, -v43, v42, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v47, v37, v39
	v_fma_f32 v36, -v45, v38, v46
	v_div_scale_f32 v45, s4, v18, v74, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v36, v36, v41, v38
	v_fma_f32 v46, -v48, v40, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, s1, v19, v74, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v16, v36, v74, v16
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, null, v74, v74, v21
	v_fma_f32 v36, -v52, v47, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v36, v36, v39, v47
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v17, v36, v74, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v46, v51, 1.0
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, null, v74, v74, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v51, v47, v51
	v_rcp_f32_e32 v38, v49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v52, -v49, v38, 1.0
	v_fmac_f32_e32 v38, v52, v38
	v_mul_f32_e32 v50, v41, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v48, v50, v41
	v_dual_mul_f32 v37, v45, v42 :: v_dual_fmac_f32 v50, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v43, v37, v45
	v_fmac_f32_e32 v37, v44, v42
	v_div_scale_f32 v44, s3, v20, v74, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v43, v37, v45
	v_div_scale_f32 v43, s5, v21, v74, v21
	v_div_scale_f32 v45, null, v74, v74, v22
	v_div_fmas_f32 v36, v36, v42, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v47, v43, v51
	v_mul_f32_e32 v39, v44, v38
	v_fma_f32 v37, -v48, v50, v41
	v_rcp_f32_e32 v42, v45
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v48, null, v74, v74, v23
	v_fma_f32 v41, -v49, v39, v44
	v_div_fmas_f32 v37, v37, v40, v50
	v_div_fixup_f32 v18, v36, v74, v18
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v40, v48
	v_fmac_f32_e32 v39, v41, v38
	v_fma_f32 v41, -v46, v47, v43
	v_fma_f32 v50, -v45, v42, 1.0
	v_div_fixup_f32 v19, v37, v74, v19
	v_div_scale_f32 v37, s1, v22, v74, v22
	v_fma_f32 v36, -v49, v39, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v47, v41, v51 :: v_dual_fmac_f32 v42, v50, v42
	v_div_scale_f32 v49, null, v74, v74, v9
	v_div_fmas_f32 v36, v36, v38, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v38, -v46, v47, v43
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v41, -v48, v40, 1.0
	v_div_scale_f32 v43, s3, v23, v74, v23
	v_div_fmas_f32 v38, v38, v51, v47
	v_div_fixup_f32 v20, v36, v74, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, null, v74, v74, v8
	v_div_fixup_f32 v21, v38, v74, v21
	v_rcp_f32_e32 v38, v49
	v_div_scale_f32 v51, null, v74, v74, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v44, v41
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v50, -v49, v38, 1.0
	v_dual_mul_f32 v47, v43, v40 :: v_dual_fmac_f32 v38, v50, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v36, -v48, v47, v43
	v_fmac_f32_e32 v47, v36, v40
	v_div_scale_f32 v36, s4, v8, v74, v8
	v_mul_f32_e32 v39, v37, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v45, v39, v37
	v_fmac_f32_e32 v39, v46, v42
	v_fma_f32 v46, -v41, v44, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v45, v39, v37
	v_div_scale_f32 v45, null, v74, v74, v10
	v_fmac_f32_e32 v44, v46, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v37, v42, v39
	v_rcp_f32_e32 v46, v45
	v_fma_f32 v39, -v48, v47, v43
	v_div_scale_f32 v43, s1, v9, v74, v9
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v36, v44
	v_div_fixup_f32 v22, v37, v74, v22
	v_mul_f32_e32 v52, v43, v38
	v_div_fmas_f32 v39, v39, v40, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v48, -v45, v46, 1.0
	v_fma_f32 v50, -v41, v42, v36
	v_fma_f32 v40, -v49, v52, v43
	v_div_fixup_f32 v23, v39, v74, v23
	v_fma_f32 v39, -v51, v53, 1.0
	v_fmac_f32_e32 v46, v48, v46
	v_div_scale_f32 v48, s5, v10, v74, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v52, v40, v38 :: v_dual_fmac_f32 v53, v39, v53
	v_dual_fmac_f32 v42, v50, v44 :: v_dual_mul_f32 v47, v48, v46
	v_div_scale_f32 v40, null, v74, v74, v12
	v_div_scale_f32 v39, s3, v11, v74, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v37, -v45, v47, v48
	v_fma_f32 v36, -v41, v42, v36
	v_fma_f32 v41, -v49, v52, v43
	v_div_scale_f32 v43, null, v74, v74, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v47, v37, v46
	v_rcp_f32_e32 v37, v40
	v_div_fmas_f32 v36, v36, v44, v42
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v42, v39, v53
	v_div_fmas_f32 v38, v41, v38, v52
	v_fma_f32 v41, -v45, v47, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v36, v74, v8
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v9, v38, v74, v9
	v_fma_f32 v44, -v40, v37, 1.0
	v_div_fmas_f32 v41, v41, v46, v47
	v_fma_f32 v46, -v51, v42, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v12, v74, v12
	v_div_fixup_f32 v10, v41, v74, v10
	v_div_scale_f32 v41, null, v74, v74, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v36, v44, v37
	v_fma_f32 v38, -v43, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v41
	v_fmac_f32_e32 v42, v46, v53
	v_fma_f32 v46, -v40, v36, v44
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, s4, v13, v74, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v51, v42, v39
	v_fmac_f32_e32 v36, v46, v37
	v_div_scale_f32 v46, null, v74, v74, v15
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v53, v42
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v48, v46
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v39, v74, v11
	v_fma_f32 v39, -v40, v36, v44
	v_fma_f32 v44, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v39, v37, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v44, v47
	v_div_scale_f32 v44, null, v74, v74, v1
	v_div_scale_f32 v37, null, v74, v74, v0
	v_div_fixup_f32 v12, v36, v74, v12
	v_fma_f32 v36, -v46, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	v_div_scale_f32 v39, s1, v14, v74, v14
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v48, v36, v48
	v_div_scale_f32 v36, s3, v15, v74, v15
	v_mul_f32_e32 v42, v38, v45
	v_div_scale_f32 v51, s4, v0, v74, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v44, v50, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v43, v42, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v50, v52, v50
	v_div_scale_f32 v52, s5, v1, v74, v1
	v_fmac_f32_e32 v42, v40, v45
	v_rcp_f32_e32 v40, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v38, -v43, v42, v38
	v_mul_f32_e32 v43, v39, v47
	v_div_fmas_f32 v38, v38, v45, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v49, -v37, v40, 1.0
	v_fma_f32 v42, -v41, v43, v39
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v13, v38, v74, v13
	v_fmac_f32_e32 v40, v49, v40
	v_div_scale_f32 v49, null, v74, v74, v2
	v_fmac_f32_e32 v43, v42, v47
	v_mul_f32_e32 v45, v36, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v53, v49
	v_fma_f32 v38, -v41, v43, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v46, v45, v36
	v_div_fmas_f32 v38, v38, v47, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v42, v48
	v_mul_f32_e32 v41, v52, v50
	v_fma_f32 v42, -v49, v53, 1.0
	v_mul_f32_e32 v54, v51, v40
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v46, v45, v36
	v_div_scale_f32 v43, null, v74, v74, v3
	v_fmac_f32_e32 v53, v42, v53
	v_fma_f32 v39, -v37, v54, v51
	v_div_scale_f32 v42, s1, v2, v74, v2
	v_div_fmas_f32 v36, v36, v48, v45
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v54, v39, v40
	v_fma_f32 v39, -v44, v41, v52
	v_rcp_f32_e32 v45, v43
	v_div_fixup_f32 v15, v36, v74, v15
	v_div_fixup_f32 v14, v38, v74, v14
	v_div_scale_f32 v47, null, v74, v74, v7
	v_fmac_f32_e32 v41, v39, v50
	v_mul_f32_e32 v39, v42, v53
	v_fma_f32 v37, -v37, v54, v51
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v38, -v43, v45, 1.0
	v_div_fmas_f32 v37, v37, v40, v54
	v_fma_f32 v40, -v44, v41, v52
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v44, -v49, v39, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v0, v37, v74, v0
	v_div_fmas_f32 v40, v40, v50, v41
	v_div_scale_f32 v37, null, v74, v74, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v44, v53
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v1, v40, v74, v1
	v_div_scale_f32 v40, null, v74, v74, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v51, -v40, v44, 1.0
	v_fmac_f32_e32 v44, v51, v44
	v_fma_f32 v36, -v49, v39, v42
	v_div_scale_f32 v51, s4, v6, v74, v6
	v_rcp_f32_e32 v49, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v36, v53, v39
	v_rcp_f32_e32 v39, v37
	v_div_scale_f32 v41, vcc_lo, v3, v74, v3
	v_mul_f32_e32 v55, v51, v44
	v_div_fixup_f32 v2, v36, v74, v2
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v53, -v47, v49, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v37, v39, 1.0
	v_fmac_f32_e32 v49, v53, v49
	v_div_scale_f32 v53, s5, v7, v74, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s1, v4, v74, v4
	v_fmac_f32_e32 v45, v38, v45
	v_div_scale_f32 v38, null, v74, v74, v5
	v_mul_f32_e32 v52, v36, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v46, v41, v45
	v_rcp_f32_e32 v42, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v50, -v43, v46, v41
	v_fmac_f32_e32 v46, v50, v45
	v_fma_f32 v50, -v37, v52, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v38, v42, 1.0
	v_fma_f32 v41, -v43, v46, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v52, v50, v39
	v_fmac_f32_e32 v42, v48, v42
	v_div_scale_f32 v48, s3, v5, v74, v5
	v_fma_f32 v50, -v40, v55, v51
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v36, -v37, v52, v36
	v_div_fmas_f32 v41, v41, v45, v46
	v_mul_f32_e32 v54, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v55, v50, v44
	v_div_fmas_f32 v36, v36, v39, v52
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v43, -v38, v54, v48
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_mul_i32 s1, s11, s14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v3, v41, v74, v3
	v_div_fixup_f32 v4, v36, v74, v4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v36, s11, v76
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v56, v53, v49
	v_fmac_f32_e32 v54, v43, v42
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v47, v56, v53
	v_fma_f32 v38, -v38, v54, v48
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s3, s11, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v56, v37, v49
	v_fma_f32 v37, -v40, v55, v51
	v_div_fmas_f32 v38, v38, v42, v54
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v47, v56, v53
	v_div_fmas_f32 v37, v37, v44, v55
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v38, v74, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v49, v56
	v_div_fixup_f32 v6, v37, v74, v6
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v37, v36, v75
	v_add_nc_u32_e32 v36, s1, v36
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s11, v75
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v39, v74, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_add_lshl_u32 v37, v37, s1, 2
	v_add_lshl_u32 v38, v36, v75, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s11, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s11, v34
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v24, v41, s[12:15], 0 offen
	buffer_store_b32 v25, v39, s[12:15], 0 offen
	buffer_store_b32 v26, v40, s[12:15], 0 offen
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v24, 24, v38
	v_add_nc_u32_e32 v25, 32, v38
	v_add_nc_u32_e32 v26, 40, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_add_nc_u32 v38, 56, v38
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_cndmask_b32_e32 v38, 0x80000000, v38, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[12:15], 0 offen
	buffer_store_b32 v28, v25, s[12:15], 0 offen
	buffer_store_b32 v29, v26, s[12:15], 0 offen
	buffer_store_b32 v30, v39, s[12:15], 0 offen
	buffer_store_b32 v31, v38, s[12:15], 0 offen
	v_add_lshl_u32 v24, v36, v35, 2
	v_add_nc_u32_e32 v25, 0x48, v37
	v_add_nc_u32_e32 v26, 0x50, v37
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v37
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[12:15], 0 offen
	buffer_store_b32 v17, v25, s[12:15], 0 offen
	buffer_store_b32 v18, v26, s[12:15], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v37
	v_add_nc_u32_e32 v18, 0x70, v37
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[12:15], 0 offen
	v_add_nc_u32_e32 v19, 0x78, v37
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[12:15], 0 offen
	v_add_lshl_u32 v16, v36, v34, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[12:15], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v37
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[12:15], 0 offen
	buffer_store_b32 v23, v19, s[12:15], 0 offen
	buffer_store_b32 v8, v16, s[12:15], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v37
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v37
	v_add_nc_u32_e32 v18, 0xa0, v37
	v_add_nc_u32_e32 v19, 0xa8, v37
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[12:15], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[12:15], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v37
	s_clause 0x2
	buffer_store_b32 v11, v9, s[12:15], 0 offen
	buffer_store_b32 v12, v16, s[12:15], 0 offen
	buffer_store_b32 v13, v17, s[12:15], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v37
	v_add_lshl_u32 v10, v36, v33, 2
	v_add_nc_u32_e32 v11, 0xc8, v37
	v_add_nc_u32_e32 v12, 0xd0, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[12:15], 0 offen
	buffer_store_b32 v15, v9, s[12:15], 0 offen
	buffer_store_b32 v0, v10, s[12:15], 0 offen
	buffer_store_b32 v1, v11, s[12:15], 0 offen
	buffer_store_b32 v2, v12, s[12:15], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v37
	v_add_nc_u32_e32 v1, 0xe0, v37
	v_add_nc_u32_e32 v2, 0xe8, v37
	v_add_nc_u32_e32 v8, 0xf0, v37
	v_add_lshl_u32 v9, v36, v32, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[12:15], 0 offen
	buffer_store_b32 v4, v1, s[12:15], 0 offen
	buffer_store_b32 v5, v2, s[12:15], 0 offen
	buffer_store_b32 v6, v8, s[12:15], 0 offen
	buffer_store_b32 v7, v9, s[12:15], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp12:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 114
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_vgpr, 114
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.numbered_sgpr, 34
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7996
; TotalNumSgprs: 36
; NumVgprs: 114
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 36
; NumVGPRsForWavesPerEU: 114
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
	.byte	1                               ; Abbrev [1] 0xb:0x75 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x4f DW_TAG_subprogram
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
	.byte	6                               ; Abbrev [6] 0x5b:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp8                          ; DW_AT_low_pc
	.long	.Ltmp11-.Ltmp8                  ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	972                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     36
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_none_causal_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     114
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
