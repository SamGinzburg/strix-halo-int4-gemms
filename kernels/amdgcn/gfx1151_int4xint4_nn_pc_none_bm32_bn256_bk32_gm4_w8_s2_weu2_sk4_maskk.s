	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s21, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v38, 7, v0
	v_lshrrev_b32_e32 v42, 4, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v43, 3, v0
	v_dual_mov_b32 v8, 0 :: v_dual_lshlrev_b32 v9, 1, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v33, 1, v38
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v10, v0, 6, 1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_lshlrev_b32_e32 v40, 4, v0
	v_mov_b32_e32 v6, v8
	v_bfe_i32 v36, v0, 3, 1
	v_lshrrev_b32_e32 v37, 1, v0
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s16, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s14, s4, 2
	v_mov_b32_e32 v17, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s14
	v_mov_b32_e32 v32, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_readfirstlane_b32 s5, v1
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v9, 0x17e, v9
	v_mov_b32_e32 v7, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v10, 0x88, v10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_u32_f32 s5, s5
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v39, v10, v9
	v_mov_b32_e32 v10, v8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_i32 s8, s8, s5
	v_mov_b32_e32 v9, v8
	s_mul_hi_u32 s8, s5, s8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v39, 0, v39
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s14
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s15, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s16, s15, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s15, s15, s14
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s16
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s15
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s19, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s19
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s20, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s6, 0, s19
	s_mov_b32 s7, 0x31027000
	s_mul_i32 s6, s6, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s20, s6
	s_add_i32 s20, s20, s6
	s_xor_b32 s6, s2, s18
	s_mul_hi_u32 s15, s14, s20
	s_ashr_i32 s22, s6, 31
	s_mul_i32 s20, s15, s19
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s14, s14, s20
	s_add_i32 s20, s15, 1
	s_sub_i32 s23, s14, s19
	s_cmp_ge_u32 s14, s19
	s_cselect_b32 s15, s20, s15
	s_cselect_b32 s14, s23, s14
	s_add_i32 s20, s15, 1
	s_cmp_ge_u32 s14, s19
	s_cselect_b32 s14, s20, s15
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s15, s21, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s24, s14, s22
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s25, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s21, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s15, s24, s22
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s23, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s15, s18
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s25, v33
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s15, 8
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s25, v42
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s23, v4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s16, s2, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s21, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s15, s16, s23
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s20, -1, 0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s14, s17, s25
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v35, 15, v0
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s23, v5
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s13, s13, 0xffff
	s_load_b64 s[18:19], s[0:1], 0x20
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v34, 4, v35
	v_mov_b32_e32 v4, v8
	v_dual_mov_b32 v5, v8 :: v_dual_add_nc_u32 v40, 0, v40
	s_mov_b64 s[0:1], s[10:11]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[1:2], null, s17, v42, v[34:35]
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[2:3], null, s23, v43, v[33:34]
	v_mov_b32_e32 v3, v8
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v1, s14, s3, v1
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 113 30 is_stmt 1              ; generate_amdgcn.py:113:30
	v_add3_u32 v2, s25, s15, v2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s15, s7
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s20, s2
	s_cmpk_lt_i32 s21, 0x82
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u16 v41, v2, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[44:47], v1, s[12:15], 0 offen
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_dual_mov_b32 v23, v8 :: v_dual_lshlrev_b32 v38, 4, v38
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v39, v41 offset:4096
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[44:47]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s2, s25, 64
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, 0, v35
	v_add_nc_u32_e32 v1, s2, v42
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s10, s23, 63
	v_and_or_b32 v3, 0x88, v36, v38
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s10, s10, 6
	v_mov_b32_e32 v10, v9
.Ltmp13:
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v1, s17, v1
	v_sub_nc_u32_e64 v4, s10, 2 clamp
	s_lshl_b32 s10, s24, 8
	v_dual_mov_b32 v11, v9 :: v_dual_add_nc_u32 v6, s16, v43
	s_lshl_b32 s11, s22, 8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_readfirstlane_b32 s14, v4
	v_xor_b32_e32 v4, 8, v3
	v_add3_u32 v1, v1, s10, v34
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v5, 0x70, v37
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v3, 0, v3
	v_subrev_nc_u32_e32 v43, s11, v1
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v1, 0, v4
	v_sub_nc_u32_e32 v41, s23, v33
	v_mad_u64_u32 v[33:34], null, s23, v6, v[33:34]
	v_sub_nc_u32_e32 v42, s23, v42
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v34, v2, v5
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v44, 0x1000, v3
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v45, 0x1000, v1
	v_mov_b32_e32 v25, v9
	v_mov_b32_e32 v27, v9
	v_mov_b32_e32 v28, v9
	v_mov_b32_e32 v29, v9
	v_mov_b32_e32 v30, v9
	v_mov_b32_e32 v31, v9
	v_mov_b32_e32 v32, v9
	v_mov_b32_e32 v17, v9
	v_mov_b32_e32 v18, v9
	v_mov_b32_e32 v19, v9
	v_mov_b32_e32 v20, v9
	v_mov_b32_e32 v21, v9
	v_mov_b32_e32 v22, v9
	v_mov_b32_e32 v23, v9
	v_mov_b32_e32 v24, v9
	v_mov_b32_e32 v1, v9
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v9
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	v_mov_b32_e32 v8, v9
	s_add_i32 s10, s14, 1
	s_lshl_b32 s11, s17, 6
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v42
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v46, s2, v33
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s10, s10, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v47, 0x80000000, v43, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v41
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v43, s11, v43
	s_add_i32 s2, s2, 64
	s_cmp_lg_u32 s10, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	buffer_load_u16 v66, v46, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[46:49], v47, s[12:15], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v58, v34 offset:3328
	ds_load_u8 v59, v34 offset:3072
	ds_load_u8 v60, v34 offset:3840
	ds_load_u8 v61, v34 offset:3584
	ds_load_u8 v62, v34 offset:2304
	ds_load_u8 v63, v34 offset:2048
	ds_load_u8 v64, v34 offset:2816
	ds_load_u8 v65, v34 offset:2560
	ds_load_u8 v67, v34 offset:1280
	ds_load_u8 v68, v34 offset:1024
	ds_load_u8 v69, v34 offset:1792
	ds_load_u8 v70, v34 offset:1536
	ds_load_u8 v71, v34 offset:1920
	ds_load_u8 v72, v34 offset:1664
	ds_load_u8 v73, v34 offset:1408
	ds_load_u8 v74, v34 offset:1152
	ds_load_u8 v75, v34 offset:256
	ds_load_u8 v76, v34
	ds_load_u8 v77, v34 offset:768
	ds_load_u8 v78, v34 offset:512
	ds_load_u8 v79, v34 offset:896
	ds_load_u8 v80, v34 offset:640
	ds_load_u8 v81, v34 offset:384
	ds_load_u8 v82, v34 offset:128
	ds_load_u8 v83, v34 offset:3968
	ds_load_u8 v84, v34 offset:3712
	ds_load_u8 v85, v34 offset:3456
	ds_load_u8 v86, v34 offset:3200
	ds_load_u8 v87, v34 offset:2944
	ds_load_u8 v88, v34 offset:2688
	ds_load_u8 v89, v34 offset:2432
	ds_load_u8 v90, v34 offset:2176
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[50:53], v44 offset1:32
	ds_load_2addr_b64 v[54:57], v45 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v67, v68, v67, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v68, v70, v69, 0xc0c0004
	v_perm_b32 v64, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v69, v76, v75, 0xc0c0004
	v_perm_b32 v76, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v70, v78, v77, 0xc0c0004
	v_perm_b32 v62, v74, v73, 0xc0c0004
	v_perm_b32 v63, v72, v71, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v71, v80, v79, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v65, v82, v81, 0xc0c0004
	v_perm_b32 v75, v59, v58, 0xc0c0004
	v_perm_b32 v60, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v73, v84, v83, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v72, v86, v85, 0xc0c0004
	v_lshl_or_b32 v59, v68, 16, v67
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v77, v88, v87, 0xc0c0004
	v_lshl_or_b32 v58, v70, 16, v69
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v90, v89, 0xc0c0004
	v_lshl_or_b32 v63, v63, 16, v62
	v_lshl_or_b32 v62, v71, 16, v65
	v_lshl_or_b32 v61, v60, 16, v75
	v_lshl_or_b32 v60, v64, 16, v76
	v_lshl_or_b32 v65, v73, 16, v72
	v_lshl_or_b32 v64, v77, 16, v74
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[58:59], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[62:63], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[58:59], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[62:63], v[52:53], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[60:61], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[64:65], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[60:61], v[56:57], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[64:65], v[56:57], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v39, v66 offset:4096
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v40, v[46:49]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow295
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v33, 0xf0, v0
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_and_b32_e32 v34, 0x70, v37
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_or_b32 v36, 0x88, v36, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v34, 0, v34, v35
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v37, v36, 8, 0
	v_add_nc_u32_e32 v36, 0, v36
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v40, v34 offset:1280
	ds_load_u8 v41, v34 offset:1024
	ds_load_u8 v42, v34 offset:1792
	ds_load_u8 v43, v34 offset:1536
	ds_load_u8 v44, v34 offset:256
	ds_load_u8 v45, v34
	ds_load_u8 v46, v34 offset:768
	ds_load_u8 v47, v34 offset:512
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v48, 0x1000, v37
	v_add_nc_u32_e32 v36, 0x1000, v36
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v49, v34 offset:3328
	ds_load_u8 v50, v34 offset:3072
	ds_load_u8 v51, v34 offset:1920
	ds_load_u8 v52, v34 offset:1664
	ds_load_u8 v53, v34 offset:1408
	ds_load_u8 v54, v34 offset:1152
	ds_load_u8 v55, v34 offset:896
	ds_load_u8 v56, v34 offset:640
	ds_load_u8 v57, v34 offset:384
	ds_load_u8 v58, v34 offset:128
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[36:39], v36 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v42, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v47, v46, 0xc0c0004
	ds_load_u8 v46, v34 offset:2304
	ds_load_u8 v47, v34 offset:2048
	ds_load_u8 v59, v34 offset:2816
	ds_load_u8 v60, v34 offset:2560
	ds_load_u8 v61, v34 offset:3840
	ds_load_u8 v62, v34 offset:3584
	ds_load_u8 v63, v34 offset:3968
	ds_load_u8 v64, v34 offset:3712
	ds_load_u8 v65, v34 offset:3456
	ds_load_u8 v66, v34 offset:3200
	ds_load_u8 v67, v34 offset:2944
	ds_load_u8 v68, v34 offset:2688
	ds_load_u8 v69, v34 offset:2432
	ds_load_u8 v34, v34 offset:2176
	v_lshl_or_b32 v45, v41, 16, v40
	v_lshl_or_b32 v44, v43, 16, v42
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[40:43], v48 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v48, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v49, v54, v53, 0xc0c0004
	v_perm_b32 v50, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v51, v58, v57, 0xc0c0004
	v_perm_b32 v52, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v54, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v53, v62, v61, 0xc0c0004
	v_perm_b32 v55, v60, v59, 0xc0c0004
	v_lshl_or_b32 v47, v50, 16, v49
	v_lshl_or_b32 v46, v52, 16, v51
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v50, v66, v65, 0xc0c0004
	v_perm_b32 v51, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v52, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v34, v69, 0xc0c0004
	v_lshl_or_b32 v49, v53, 16, v48
	v_lshl_or_b32 v48, v55, 16, v54
	v_wmma_i32_16x16x16_iu4 v[25:32], v[46:47], v[36:37], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v51, 16, v50
	v_lshl_or_b32 v36, v52, 16, v34
	v_wmma_i32_16x16x16_iu4 v[17:24], v[44:45], v[38:39], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[40:41], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[36:37], v[40:41], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[42:43], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[42:43], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v35, s16, v35
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s9, s9, 0xffff
	.loc	1 99 14 is_stmt 1               ; generate_amdgcn.py:99:14
	v_or_b32_e32 v34, s3, v0
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_lshlrev_b32_e32 v35, 1, v35
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v50, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s10
	s_mov_b32 s3, s11
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v37, v35, s[8:11], 0 offen
	v_or_b32_e32 v35, 32, v35
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v56, v4
	v_cvt_f32_i32_e32 v57, v5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_bfe_i32 v5, v0, 0, 1
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	buffer_load_u16 v38, v35, s[8:11], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v53, v1
	v_cvt_f32_i32_e32 v54, v2
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s16, s17, v[34:35]
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v2, 0x3f8, v4
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v48, v18
	v_cvt_f32_i32_e32 v49, v19
	v_cvt_f32_i32_e32 v55, v3
	v_cvt_f32_i32_e32 v58, v6
	v_cvt_f32_i32_e32 v44, v14
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v14, v33, 1, 0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v39, v9
	v_cvt_f32_i32_e32 v45, v15
	v_cvt_f32_i32_e32 v60, v7
	v_cvt_f32_i32_e32 v61, v8
	v_cvt_f32_i32_e32 v40, v10
	v_cvt_f32_i32_e32 v41, v11
	v_cvt_f32_i32_e32 v42, v12
	v_cvt_f32_i32_e32 v43, v13
	v_cvt_f32_i32_e32 v46, v16
	v_cvt_f32_i32_e32 v47, v17
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v51, v22
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v52, v24
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v37
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v36, 1, v34
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_and_b32_e32 v4, 0x840, v5
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v3, 2, v33
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	buffer_load_u16 v36, v36, s[0:3], 0 offen
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xor_b32_e32 v4, v4, v2
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[18:19], 2, v[1:2]
	v_add_co_u32 v34, vcc_lo, s18, v18
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v38
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_and_b32_e32 v59, 1, v0
	v_and_b32_e32 v0, 14, v0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_add_co_ci_u32_e64 v35, null, s19, v19, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v6, 5, v59
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_lshl_or_b32 v15, v0, 11, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add3_u32 v3, 0, v3, v6
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v63, v15, 8, 0
	v_xad_u32 v64, v15, 16, 0
	v_xad_u32 v65, v15, 24, 0
	v_xad_u32 v66, v15, 32, 0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v3, v0, 1, v3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v67, v15, 40, 0
	v_xad_u32 v68, v15, 48, 0
	v_xad_u32 v69, v15, 56, 0
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v5, 16, v36
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v3, v5
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[2:5], v14
	ds_load_b128 v[6:9], v14 offset:16
	ds_load_b128 v[10:13], v14 offset:512
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v87, v9, v18 :: v_dual_add_nc_u32 v62, 0, v15
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v73, v11, v20
	ds_load_b128 v[14:17], v14 offset:528
	v_mul_f32_e32 v19, v2, v20
	v_mul_f32_e32 v75, v13, v20
	v_mul_f32_e32 v72, v10, v20
	v_mul_f32_e32 v80, v2, v18
	v_mul_f32_e32 v81, v3, v18
	v_mul_f32_e32 v88, v10, v18
	v_mul_f32_e32 v22, v3, v20
	v_dual_mul_f32 v36, v5, v20 :: v_dual_mul_f32 v89, v11, v18
	v_mul_f32_e32 v24, v4, v20
	v_mul_f32_e32 v82, v4, v18
	v_mul_f32_e32 v84, v6, v18
	v_dual_mul_f32 v74, v12, v20 :: v_dual_mul_f32 v85, v7, v18
	v_mul_f32_e32 v86, v8, v18
	v_dual_mul_f32 v90, v12, v18 :: v_dual_mul_f32 v37, v6, v20
	v_dual_mul_f32 v38, v7, v20 :: v_dual_mul_f32 v91, v13, v18
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v77, v15, v20
	v_mul_f32_e32 v79, v17, v20
	v_dual_mul_f32 v83, v5, v18 :: v_dual_mul_f32 v76, v14, v20
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v3, v80, v47 :: v_dual_mul_f32 v92, v14, v18
	v_mul_f32_e32 v11, v84, v21
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v95, v17, v18 :: v_dual_mul_f32 v70, v8, v20
	v_mul_f32_e32 v93, v15, v18
	v_mul_f32_e32 v71, v9, v20
	v_dual_mul_f32 v78, v16, v20 :: v_dual_mul_f32 v9, v83, v50
	v_dual_mul_f32 v94, v16, v18 :: v_dual_mul_f32 v15, v86, v23
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v18, v72, v25 :: v_dual_mul_f32 v5, v81, v48
	v_dual_mul_f32 v2, v19, v39 :: v_dual_mul_f32 v19, v88, v53
	v_dual_mul_f32 v4, v22, v40 :: v_dual_mul_f32 v21, v89, v54
	v_mul_f32_e32 v20, v73, v26
	v_dual_mul_f32 v6, v24, v41 :: v_dual_mul_f32 v17, v87, v52
	v_mul_f32_e32 v7, v82, v49
	v_mul_f32_e32 v22, v74, v27
	v_dual_mul_f32 v13, v85, v51 :: v_dual_mul_f32 v8, v36, v42
	v_mul_f32_e32 v23, v90, v55
	v_dual_mul_f32 v10, v37, v43 :: v_dual_mul_f32 v25, v91, v56
	v_mul_f32_e32 v24, v75, v28
	v_dual_mul_f32 v12, v38, v44 :: v_dual_mul_f32 v27, v92, v57
	v_mul_f32_e32 v26, v76, v29
	v_mul_f32_e32 v37, v95, v61
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v14, v70, v45 :: v_dual_mul_f32 v29, v93, v58
	v_mul_f32_e32 v16, v71, v46
	v_mul_f32_e32 v28, v77, v30
	v_mul_f32_e32 v30, v78, v31
	v_mul_f32_e32 v36, v79, v32
	v_mul_f32_e32 v31, v94, v60
	ds_store_2addr_stride64_b64 v62, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v63, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v64, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v65, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v66, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v67, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v68, v[14:15], v[30:31] offset1:2
	ds_store_2addr_stride64_b64 v69, v[16:17], v[36:37] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	global_load_b32 v37, v[34:35], off
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_lshlrev_b32_e32 v2, 3, v33
	v_lshlrev_b32_e32 v0, 2, v0
	v_lshlrev_b32_e32 v3, 6, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or3_b32 v0, v2, v3, v0
	v_add_nc_u32_e32 v2, 0, v0
	v_xad_u32 v3, 0x840, v0, 0
	v_xad_u32 v4, 0x1008, v0, 0
	v_xad_u32 v5, 0x1848, v0, 0
	v_xad_u32 v6, 0x2010, v0, 0
	v_xad_u32 v7, 0x2850, v0, 0
	v_xad_u32 v8, 0x3018, v0, 0
	v_xad_u32 v9, 0x3858, v0, 0
	ds_load_b64 v[32:33], v2
	ds_load_b64 v[30:31], v3
	ds_load_b64 v[28:29], v4
	ds_load_b64 v[26:27], v5
	ds_load_b64 v[24:25], v6
	ds_load_b64 v[22:23], v7
	ds_load_b64 v[20:21], v8
	ds_load_b64 v[18:19], v9
	v_xad_u32 v2, 0x4020, v0, 0
	v_xad_u32 v3, 0x4860, v0, 0
	v_xad_u32 v4, 0x5028, v0, 0
	v_xad_u32 v5, 0x5868, v0, 0
	v_xad_u32 v6, 0x6030, v0, 0
	v_xad_u32 v7, 0x6870, v0, 0
	v_xad_u32 v36, 0x7038, v0, 0
	v_xad_u32 v0, 0x7878, v0, 0
	ds_load_b64 v[16:17], v2
	ds_load_b64 v[14:15], v3
	ds_load_b64 v[12:13], v4
	ds_load_b64 v[10:11], v5
	ds_load_b64 v[8:9], v6
	ds_load_b64 v[6:7], v7
	ds_load_b64 v[4:5], v36
	ds_load_b64 v[2:3], v0
.LBB0_6:                                ; %atomicrmw.start182
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v36, v37, v32
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_6
; %bb.7:                                ; %atomicrmw.end181
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_add_nc_u32_e32 v34, s17, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s18, v34
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_8:                                ; %atomicrmw.start176
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v36, v37, v30
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_8
; %bb.9:                                ; %atomicrmw.end175
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v34, s17, 1, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s18, v34
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_10:                               ; %atomicrmw.start170
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v36, v37, v28
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_10
; %bb.11:                               ; %atomicrmw.end169
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[34:35], null, s17, 3, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_12:                               ; %atomicrmw.start164
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v26
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_12
; %bb.13:                               ; %atomicrmw.end163
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v34, s17, 2, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s18, v34
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_14:                               ; %atomicrmw.start158
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v24
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_14
; %bb.15:                               ; %atomicrmw.end157
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 5, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_16:                               ; %atomicrmw.start152
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v22
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_16
; %bb.17:                               ; %atomicrmw.end151
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 6, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_18:                               ; %atomicrmw.start146
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v20
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_18
; %bb.19:                               ; %atomicrmw.end145
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 7, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_20:                               ; %atomicrmw.start140
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v18
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_20
; %bb.21:                               ; %atomicrmw.end139
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v34, s17, 3, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s18, v34
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_22:                               ; %atomicrmw.start134
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v16
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_22
; %bb.23:                               ; %atomicrmw.end133
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 9, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_24:                               ; %atomicrmw.start128
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v14
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_24
; %bb.25:                               ; %atomicrmw.end127
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 10, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_26:                               ; %atomicrmw.start122
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v12
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_26
; %bb.27:                               ; %atomicrmw.end121
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 11, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_28:                               ; %atomicrmw.start116
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v10
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_28
; %bb.29:                               ; %atomicrmw.end115
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 12, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_30:                               ; %atomicrmw.start110
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v8
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_30
; %bb.31:                               ; %atomicrmw.end109
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 13, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_32:                               ; %atomicrmw.start104
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v6
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_32
; %bb.33:                               ; %atomicrmw.end103
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 14, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_34:                               ; %atomicrmw.start98
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v4
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_34
; %bb.35:                               ; %atomicrmw.end97
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[34:35], null, s17, 15, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	v_add_co_u32 v34, vcc_lo, s18, v34
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_36:                               ; %atomicrmw.start92
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v2
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_36
; %bb.37:                               ; %atomicrmw.end91
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v34, s17, 4, v1
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v35, 31, v34
	v_lshlrev_b64 v[34:35], 2, v[34:35]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v34, vcc_lo, s18, v34
	v_add_co_ci_u32_e64 v35, null, s19, v35, vcc_lo
	global_load_b32 v37, v[34:35], off
.LBB0_38:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v36, v37, v33
	global_atomic_cmpswap_b32 v0, v[34:35], v[36:37], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v37
	v_mov_b32_e32 v37, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_38
; %bb.39:                               ; %atomicrmw.end85
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[32:33], null, s17, 17, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v33, 31, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[32:33], 2, v[32:33]
	v_add_co_u32 v32, vcc_lo, s18, v32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v33, null, s19, v33, vcc_lo
	global_load_b32 v35, v[32:33], off
.LBB0_40:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v34, v35, v31
	global_atomic_cmpswap_b32 v0, v[32:33], v[34:35], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v35
	v_mov_b32_e32 v35, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_40
; %bb.41:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[30:31], null, s17, 18, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v31, 31, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[30:31], 2, v[30:31]
	v_add_co_u32 v30, vcc_lo, s18, v30
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v31, null, s19, v31, vcc_lo
	global_load_b32 v33, v[30:31], off
.LBB0_42:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v32, v33, v29
	global_atomic_cmpswap_b32 v0, v[30:31], v[32:33], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v33
	v_mov_b32_e32 v33, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_42
; %bb.43:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[28:29], null, s17, 19, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v29, 31, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[28:29], 2, v[28:29]
	v_add_co_u32 v28, vcc_lo, s18, v28
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v29, null, s19, v29, vcc_lo
	global_load_b32 v31, v[28:29], off
.LBB0_44:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v30, v31, v27
	global_atomic_cmpswap_b32 v0, v[28:29], v[30:31], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v31
	v_mov_b32_e32 v31, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_44
; %bb.45:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[26:27], null, s17, 20, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v27, 31, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[26:27], 2, v[26:27]
	v_add_co_u32 v26, vcc_lo, s18, v26
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v27, null, s19, v27, vcc_lo
	global_load_b32 v29, v[26:27], off
.LBB0_46:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v28, v29, v25
	global_atomic_cmpswap_b32 v0, v[26:27], v[28:29], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v29
	v_mov_b32_e32 v29, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_46
; %bb.47:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[24:25], null, s17, 21, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v25, 31, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[24:25], 2, v[24:25]
	v_add_co_u32 v24, vcc_lo, s18, v24
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v25, null, s19, v25, vcc_lo
	global_load_b32 v27, v[24:25], off
.LBB0_48:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v26, v27, v23
	global_atomic_cmpswap_b32 v0, v[24:25], v[26:27], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v27
	v_mov_b32_e32 v27, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_48
; %bb.49:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[22:23], null, s17, 22, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v23, 31, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[22:23], 2, v[22:23]
	v_add_co_u32 v22, vcc_lo, s18, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v23, null, s19, v23, vcc_lo
	global_load_b32 v25, v[22:23], off
.LBB0_50:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v24, v25, v21
	global_atomic_cmpswap_b32 v0, v[22:23], v[24:25], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v25
	v_mov_b32_e32 v25, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_50
; %bb.51:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[20:21], null, s17, 23, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v21, 31, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[20:21], 2, v[20:21]
	v_add_co_u32 v20, vcc_lo, s18, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v21, null, s19, v21, vcc_lo
	global_load_b32 v23, v[20:21], off
.LBB0_52:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v22, v23, v19
	global_atomic_cmpswap_b32 v0, v[20:21], v[22:23], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v23
	v_mov_b32_e32 v23, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_52
; %bb.53:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[18:19], null, s17, 24, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v19, 31, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[18:19], 2, v[18:19]
	v_add_co_u32 v18, vcc_lo, s18, v18
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v19, null, s19, v19, vcc_lo
	global_load_b32 v21, v[18:19], off
.LBB0_54:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v20, v21, v17
	global_atomic_cmpswap_b32 v0, v[18:19], v[20:21], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v21
	v_mov_b32_e32 v21, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_54
; %bb.55:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[16:17], null, s17, 25, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v17, 31, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[16:17], 2, v[16:17]
	v_add_co_u32 v16, vcc_lo, s18, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, s19, v17, vcc_lo
	global_load_b32 v19, v[16:17], off
.LBB0_56:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v18, v19, v15
	global_atomic_cmpswap_b32 v0, v[16:17], v[18:19], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v19
	v_mov_b32_e32 v19, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_56
; %bb.57:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[14:15], null, s17, 26, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v15, 31, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[14:15], 2, v[14:15]
	v_add_co_u32 v14, vcc_lo, s18, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v15, null, s19, v15, vcc_lo
	global_load_b32 v17, v[14:15], off
.LBB0_58:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v16, v17, v13
	global_atomic_cmpswap_b32 v0, v[14:15], v[16:17], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v17
	v_mov_b32_e32 v17, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_58
; %bb.59:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[12:13], null, s17, 27, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v13, 31, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[12:13], 2, v[12:13]
	v_add_co_u32 v12, vcc_lo, s18, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s19, v13, vcc_lo
	global_load_b32 v15, v[12:13], off
.LBB0_60:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v14, v15, v11
	global_atomic_cmpswap_b32 v0, v[12:13], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v15
	v_mov_b32_e32 v15, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_60
; %bb.61:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[10:11], null, s17, 28, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v11, 31, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_add_co_u32 v10, vcc_lo, s18, v10
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v11, null, s19, v11, vcc_lo
	global_load_b32 v13, v[10:11], off
.LBB0_62:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v12, v13, v9
	global_atomic_cmpswap_b32 v0, v[10:11], v[12:13], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v13
	v_mov_b32_e32 v13, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_62
; %bb.63:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[8:9], null, s17, 29, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v9, 31, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[8:9], 2, v[8:9]
	v_add_co_u32 v8, vcc_lo, s18, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, s19, v9, vcc_lo
	global_load_b32 v11, v[8:9], off
.LBB0_64:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v10, v11, v7
	global_atomic_cmpswap_b32 v0, v[8:9], v[10:11], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v11
	v_mov_b32_e32 v11, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_64
; %bb.65:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[6:7], null, s17, 30, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v7, 31, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_add_co_u32 v6, vcc_lo, s18, v6
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, s19, v7, vcc_lo
	global_load_b32 v9, v[6:7], off
.LBB0_66:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v8, v9, v5
	global_atomic_cmpswap_b32 v0, v[6:7], v[8:9], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v0, v9
	v_mov_b32_e32 v9, v0
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_66
; %bb.67:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s17, 31, v[1:2]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s18, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s19, v1, vcc_lo
	global_load_b32 v5, v[0:1], off
.LBB0_68:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v4, v5, v3
	global_atomic_cmpswap_b32 v2, v[0:1], v[4:5], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v5
	v_mov_b32_e32 v5, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_68
; %bb.69:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp14:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 241
		.amdhsa_next_free_sgpr 26
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_vgpr, 96
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.numbered_sgpr, 26
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7004
; TotalNumSgprs: 28
; NumVgprs: 96
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x64 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x3e DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
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
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     96
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
