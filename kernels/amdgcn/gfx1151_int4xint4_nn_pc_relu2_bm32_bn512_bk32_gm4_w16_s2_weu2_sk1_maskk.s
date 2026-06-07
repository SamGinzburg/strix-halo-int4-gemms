	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x30
	s_load_b32 s19, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v33, 15, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v35, 4, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v42, 5, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v10, v0, 7, 1
	v_and_b32_e32 v9, 0x17f, v0
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v38, 0x1e0, v0
	v_bfe_i32 v36, v0, 3, 1
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s17, 0x1ff
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
	s_lshr_b32 s5, s5, 23
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
	s_ashr_i32 s4, s4, 9
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s14, s4, 2
	v_mov_b32_e32 v30, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s14
	v_mov_b32_e32 v29, v8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_rcp_iflag_f32_e32 v1, s5
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v7, v8
	v_readfirstlane_b32 s5, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v10, 0x88, v10
	v_mov_b32_e32 v6, v8
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
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
	s_abs_i32 s21, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s12, s21
	s_load_b64 s[0:1], s[0:1], 0x20
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s12
	v_readfirstlane_b32 s12, v1
	s_mul_f32 s12, s12, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3)
	s_cvt_u32_f32 s20, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_sub_i32 s6, 0, s21
	s_mov_b32 s7, 0x31027000
	s_mul_i32 s6, s6, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s20, s6
	s_add_i32 s20, s20, s6
	s_xor_b32 s6, s2, s18
	s_mul_hi_u32 s15, s14, s20
	s_ashr_i32 s20, s6, 31
	s_mul_i32 s22, s15, s21
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s14, s14, s22
	s_add_i32 s22, s15, 1
	s_sub_i32 s23, s14, s21
	s_cmp_ge_u32 s14, s21
	s_cselect_b32 s15, s22, s15
	s_cselect_b32 s14, s23, s14
	s_add_i32 s22, s15, 1
	s_cmp_ge_u32 s14, s21
	s_cselect_b32 s14, s22, s15
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s15, s19, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s22, s14, s20
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s23, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s19, s15
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s15, s22, s20
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s21, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s15, s18
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s23, v33
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s15, 9
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s16
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s23, v42
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s21, v5
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s16, s2, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s19, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s15, s16, s21
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s18, -1, 0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s14, s17, s23
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s18, vcc_lo
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v37, 4, v0
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s21, v4
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s13, s13, 0xffff
	v_mov_b32_e32 v4, v8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v34, 0x1f0, v37
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v40, v10, v9
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[1:2], null, s17, v42, v[34:35]
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[2:3], null, s21, v35, v[33:34]
	v_mov_b32_e32 v3, v8
	v_lshrrev_b32_e32 v38, 1, v38
	.loc	1 113 22 is_stmt 0              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v40, 0, v40
	.loc	1 117 30 is_stmt 1              ; generate_amdgcn.py:117:30
	v_add3_u32 v1, s14, s3, v1
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	.loc	1 113 30 is_stmt 1              ; generate_amdgcn.py:113:30
	v_add3_u32 v2, s23, s15, v2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s15, s7
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s18, s2
	v_dual_mov_b32 v24, v8 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v41, v2, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[43:46], v1, s[12:15], 0 offen
	v_dual_mov_b32 v2, v8 :: v_dual_add_nc_u32 v39, 0, v37
	v_mov_b32_e32 v1, v8
	v_and_b32_e32 v37, 0x70, v37
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s19, 34
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v40, v41 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[43:46]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s2, s23, 16
	v_dual_mov_b32 v9, 0 :: v_dual_add_nc_u32 v2, 0, v33
	v_add_nc_u32_e32 v1, s2, v42
	v_and_or_b32 v3, 0x88, v36, v37
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s14, s21, 15
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v12, v9 :: v_dual_add_nc_u32 v5, s16, v35
	v_mov_b32_e32 v10, v9
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v1, s17, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s14, s14, 4
	v_xor_b32_e32 v6, 8, v3
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e64 v4, s14, 2 clamp
	s_lshl_b32 s14, s22, 9
	v_dual_mov_b32 v14, v9 :: v_dual_add_nc_u32 v3, 0, v3
	s_lshl_b32 s15, s20, 9
	s_delay_alu instid0(VALU_DEP_2)
	v_readfirstlane_b32 s19, v4
	v_add3_u32 v1, v1, s14, v34
	v_dual_mov_b32 v11, v9 :: v_dual_add_nc_u32 v4, 0, v6
	v_mad_u64_u32 v[34:35], null, s21, v5, v[33:34]
	v_sub_nc_u32_e32 v41, s21, v33
	v_sub_nc_u32_e32 v42, s21, v42
	v_subrev_nc_u32_e32 v43, s15, v1
	v_dual_mov_b32 v16, v9 :: v_dual_add_nc_u32 v35, v2, v38
	v_dual_mov_b32 v13, v9 :: v_dual_add_nc_u32 v44, 0x2000, v3
	v_dual_mov_b32 v26, v9 :: v_dual_add_nc_u32 v45, 0x2000, v4
	v_mov_b32_e32 v15, v9
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
	s_add_i32 s19, s19, 1
	s_lshl_b32 s20, s17, 4
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v42
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v46, s2, v34
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s19, s19, -1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v47, 0x80000000, v43, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v41
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v43, s20, v43
	s_add_i32 s2, s2, 16
	s_cmp_lg_u32 s19, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v46, 0x80000000, v46, vcc_lo
	buffer_load_u8 v66, v46, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[46:49], v47, s[12:15], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v58, v35 offset:6656
	ds_load_u8 v59, v35 offset:6144
	ds_load_u8 v60, v35 offset:7680
	ds_load_u8 v61, v35 offset:7168
	ds_load_u8 v62, v35 offset:4608
	ds_load_u8 v63, v35 offset:4096
	ds_load_u8 v64, v35 offset:5632
	ds_load_u8 v65, v35 offset:5120
	ds_load_u8 v67, v35 offset:2560
	ds_load_u8 v68, v35 offset:2048
	ds_load_u8 v69, v35 offset:3584
	ds_load_u8 v70, v35 offset:3072
	ds_load_u8 v71, v35 offset:3840
	ds_load_u8 v72, v35 offset:3328
	ds_load_u8 v73, v35 offset:2816
	ds_load_u8 v74, v35 offset:2304
	ds_load_u8 v75, v35 offset:512
	ds_load_u8 v76, v35
	ds_load_u8 v77, v35 offset:1536
	ds_load_u8 v78, v35 offset:1024
	ds_load_u8 v79, v35 offset:1792
	ds_load_u8 v80, v35 offset:1280
	ds_load_u8 v81, v35 offset:768
	ds_load_u8 v82, v35 offset:256
	ds_load_u8 v83, v35 offset:7936
	ds_load_u8 v84, v35 offset:7424
	ds_load_u8 v85, v35 offset:6912
	ds_load_u8 v86, v35 offset:6400
	ds_load_u8 v87, v35 offset:5888
	ds_load_u8 v88, v35 offset:5376
	ds_load_u8 v89, v35 offset:4864
	ds_load_u8 v90, v35 offset:4352
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
	ds_store_b8 v40, v66 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[46:49]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %Flow109
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_and_b32_e32 v35, 0x1f0, v0
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v34, 0, v38, v33
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_or_b32 v36, 0x88, v36, v37
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v40, v34 offset:2560
	ds_load_u8 v41, v34 offset:2048
	ds_load_u8 v42, v34 offset:3584
	ds_load_u8 v43, v34 offset:3072
	ds_load_u8 v44, v34 offset:512
	ds_load_u8 v45, v34
	ds_load_u8 v46, v34 offset:1536
	ds_load_u8 v47, v34 offset:1024
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v37, v36, 8, 0
	v_add_nc_u32_e32 v36, 0, v36
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v48, v34 offset:3840
	ds_load_u8 v49, v34 offset:3328
	ds_load_u8 v50, v34 offset:2816
	ds_load_u8 v51, v34 offset:2304
	ds_load_u8 v52, v34 offset:1792
	ds_load_u8 v53, v34 offset:1280
	ds_load_u8 v54, v34 offset:768
	ds_load_u8 v55, v34 offset:256
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v56, 0x2000, v37
	v_add_nc_u32_e32 v36, 0x2000, v36
	ds_load_2addr_b64 v[36:39], v36 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v42, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v43, v47, v46, 0xc0c0004
	ds_load_u8 v46, v34 offset:6656
	ds_load_u8 v47, v34 offset:6144
	ds_load_u8 v57, v34 offset:4608
	ds_load_u8 v58, v34 offset:4096
	ds_load_u8 v59, v34 offset:5632
	ds_load_u8 v60, v34 offset:5120
	ds_load_u8 v61, v34 offset:7680
	ds_load_u8 v62, v34 offset:7168
	ds_load_u8 v63, v34 offset:7936
	ds_load_u8 v64, v34 offset:7424
	ds_load_u8 v65, v34 offset:6912
	ds_load_u8 v66, v34 offset:6400
	ds_load_u8 v67, v34 offset:5888
	ds_load_u8 v68, v34 offset:5376
	ds_load_u8 v69, v34 offset:4864
	ds_load_u8 v34, v34 offset:4352
	v_lshl_or_b32 v45, v41, 16, v40
	v_lshl_or_b32 v44, v43, 16, v42
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_2addr_b64 v[40:43], v56 offset1:32
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v56, v47, v46, 0xc0c0004
	v_perm_b32 v46, v51, v50, 0xc0c0004
	v_perm_b32 v47, v49, v48, 0xc0c0004
	v_perm_b32 v48, v55, v54, 0xc0c0004
	v_perm_b32 v49, v53, v52, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v51, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v50, v62, v61, 0xc0c0004
	v_perm_b32 v52, v60, v59, 0xc0c0004
	v_lshl_or_b32 v47, v47, 16, v46
	v_lshl_or_b32 v46, v49, 16, v48
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v53, v66, v65, 0xc0c0004
	v_perm_b32 v54, v64, v63, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v55, v68, v67, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[36:37], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v34, v34, v69, 0xc0c0004
	v_lshl_or_b32 v49, v50, 16, v56
	v_lshl_or_b32 v48, v52, 16, v51
	v_wmma_i32_16x16x16_iu4 v[25:32], v[46:47], v[36:37], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v37, v54, 16, v53
	v_lshl_or_b32 v36, v55, 16, v34
	v_wmma_i32_16x16x16_iu4 v[17:24], v[44:45], v[38:39], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[46:47], v[38:39], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[48:49], v[40:41], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[36:37], v[40:41], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[48:49], v[42:43], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[42:43], v[1:8] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v34, s16, v33
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v53, 0x5410 :: v_dual_lshlrev_b32 v34, 1, v34
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v36, s3, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v54, 0x7632 :: v_dual_lshlrev_b32 v39, 5, v0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_or_b32_e32 v37, 32, v34
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshl_add_u32 v40, v35, 2, 0
	v_lshl_add_u32 v47, v35, 1, 0
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s16, s16, s17
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v51, v34, s[4:7], 0 offen
	buffer_load_u16 v52, v37, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v37, 1, v35
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v33, s17, v33
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v55, s16, s3, v37
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_lshl_add_u32 v70, s17, 4, v33
	v_add_lshl_u32 v33, v55, v33, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v55, v55, v70, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v34, v1
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.h, 0
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v56.h, v1.h
	v_mov_b16_e32 v69.h, v1.h
	v_mov_b16_e32 v57.h, v1.h
	v_mov_b16_e32 v60.h, v1.h
	v_mov_b16_e32 v63.h, v1.h
	v_mov_b16_e32 v71.h, v1.h
	v_mov_b16_e32 v59.h, v1.h
	v_mov_b16_e32 v62.h, v1.h
	v_mov_b16_e32 v65.h, v1.h
	v_mov_b16_e32 v67.h, v1.h
	v_mov_b16_e32 v72.h, v1.h
	v_mov_b16_e32 v58.h, v1.h
	v_mov_b16_e32 v61.h, v1.h
	v_mov_b16_e32 v68.h, v1.h
	v_mov_b16_e32 v64.h, v1.h
	v_mov_b16_e32 v66.h, v1.h
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v52, 16, v52
	v_lshlrev_b32_e32 v51, 16, v51
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v38, 1, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_and_b32_e32 v35, 28, v38
	v_and_b32_e32 v38, 32, v39
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s4, 0x76543210
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v35, v40, v38, v35
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v35, v36
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[35:38], v47
	ds_load_b128 v[39:42], v47 offset:16
	ds_load_b128 v[43:46], v47 offset:1024
	ds_load_b128 v[47:50], v47 offset:1040
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v73, v36, v51
	v_mul_f32_e32 v36, v36, v52
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v81, v44, v51
	v_mul_f32_e32 v70, v35, v51
	v_mul_f32_e32 v74, v37, v51
	v_dual_mul_f32 v77, v40, v51 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v75, v38, v51
	v_mul_f32_e32 v76, v39, v51
	v_dual_mul_f32 v78, v41, v51 :: v_dual_mul_f32 v39, v39, v52
	v_mul_f32_e32 v79, v42, v51
	v_mul_f32_e32 v80, v43, v51
	v_dual_mul_f32 v82, v45, v51 :: v_dual_mul_f32 v43, v43, v52
	v_dual_mul_f32 v83, v46, v51 :: v_dual_mul_f32 v40, v40, v52
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v84, v47, v51
	v_dual_mul_f32 v85, v48, v51 :: v_dual_mul_f32 v38, v38, v52
	v_dual_mul_f32 v86, v49, v51 :: v_dual_mul_f32 v47, v47, v52
	v_dual_mul_f32 v51, v50, v51 :: v_dual_mul_f32 v44, v44, v52
	v_mul_f32_e32 v35, v35, v52
	v_mul_f32_e32 v37, v37, v52
	v_mul_f32_e32 v41, v41, v52
	v_dual_mul_f32 v42, v42, v52 :: v_dual_mul_f32 v13, v76, v13
	v_mul_f32_e32 v45, v45, v52
	v_dual_mul_f32 v48, v48, v52 :: v_dual_mul_f32 v9, v70, v9
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v10, v73, v10 :: v_dual_mul_f32 v11, v74, v11
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v46, v46, v52 :: v_dual_mul_f32 v25, v80, v25
	v_mul_f32_e32 v49, v49, v52
	v_dual_mul_f32 v50, v50, v52 :: v_dual_mul_f32 v29, v84, v29
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v12, v75, v12 :: v_dual_mul_f32 v15, v78, v15
	v_dual_mul_f32 v14, v77, v14 :: v_dual_mul_f32 v27, v82, v27
	v_dual_mul_f32 v16, v79, v16 :: v_dual_mul_f32 v31, v86, v31
	v_dual_mul_f32 v26, v81, v26 :: v_dual_mul_f32 v17, v35, v17
	v_dual_mul_f32 v28, v83, v28 :: v_dual_mul_f32 v19, v37, v19
	v_dual_mul_f32 v30, v85, v30 :: v_dual_mul_f32 v21, v39, v21
	v_dual_mul_f32 v32, v51, v32 :: v_dual_mul_f32 v23, v41, v23
	v_dual_mul_f32 v18, v36, v18 :: v_dual_mul_f32 v3, v45, v3
	v_dual_mul_f32 v20, v38, v20 :: v_dual_mul_f32 v5, v47, v5
	v_dual_mul_f32 v24, v42, v24 :: v_dual_max_f32 v9, 0, v9
	v_dual_mul_f32 v2, v44, v2 :: v_dual_max_f32 v13, 0, v13
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v29, 0, v29
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v22, v40, v22 :: v_dual_mul_f32 v7, v49, v7
	v_dual_mul_f32 v34, v43, v34 :: v_dual_max_f32 v11, 0, v11
	v_dual_mul_f32 v6, v48, v6 :: v_dual_max_f32 v25, 0, v25
	v_dual_mul_f32 v8, v50, v8 :: v_dual_max_f32 v27, 0, v27
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v31, 0, v31
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v30, 0, v30 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v32, 0, v32 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v20, 0, v20 :: v_dual_mul_f32 v9, v9, v9
	v_dual_max_f32 v2, 0, v2 :: v_dual_mul_f32 v25, v25, v25
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_mul_f32 v17, v17, v17
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v4, v46, v4 :: v_dual_max_f32 v15, 0, v15
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v22, 0, v22 :: v_dual_mul_f32 v11, v11, v11
	v_dual_max_f32 v6, 0, v6 :: v_dual_mul_f32 v29, v29, v29
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v31, v31, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v12, v12, v12 :: v_dual_mul_f32 v19, v19, v19
	v_mul_f32_e32 v26, v26, v26
	v_dual_mul_f32 v28, v28, v28 :: v_dual_mul_f32 v35, v2, v2
	v_dual_mul_f32 v2, v3, v3 :: v_dual_mul_f32 v3, v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.l, v10.h
	v_mov_b16_e32 v56.l, v9.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v7, 0, v7
	v_dual_max_f32 v34, 0, v34 :: v_dual_mul_f32 v15, v15, v15
	v_dual_max_f32 v4, 0, v4 :: v_dual_mul_f32 v27, v27, v27
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v16, v16, v16 :: v_dual_mul_f32 v23, v23, v23
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v57.l, v11.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v24, 0, v24 :: v_dual_mul_f32 v13, v13, v13
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v30, v30, v30 :: v_dual_and_b32 v5, 1, v1
	v_dual_mul_f32 v32, v32, v32 :: v_dual_mul_f32 v37, v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v60.l, v25.h
	v_mov_b16_e32 v63.l, v31.h
	v_mov_b16_e32 v71.l, v3.h
	v_mov_b16_e32 v1.l, v12.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v6, 1, v56
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v14, v14, v14 :: v_dual_mul_f32 v21, v21, v21
	v_mul_f32_e32 v18, v18, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v59.l, v15.h
	v_mov_b16_e32 v62.l, v29.h
	v_mov_b16_e32 v65.l, v19.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v34, v34, v34
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v67.l, v23.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v36, v4, v4
	v_mul_f32_e32 v4, v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v69.l, v2.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v24, v24, v24 :: v_dual_and_b32 v7, 1, v57
	v_dual_mul_f32 v38, v8, v8 :: v_dual_and_b32 v43, 1, v63
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v40, 1, v60
	v_and_b32_e32 v50, 1, v71
	v_add3_u32 v6, v9, v6, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v20, v20, v20 :: v_dual_and_b32 v9, 1, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v39, 1, v59
	v_mov_b16_e32 v58.l, v13.h
	v_mov_b16_e32 v61.l, v27.h
	v_mov_b16_e32 v72.l, v4.h
	v_and_b32_e32 v42, 1, v62
	v_and_b32_e32 v45, 1, v65
	v_mov_b16_e32 v68.l, v34.h
	v_and_b32_e32 v49, 1, v69
	v_add3_u32 v7, v11, v7, 0x7fff
	v_mov_b16_e32 v1.l, v14.h
	v_add3_u32 v11, v25, v40, 0x7fff
	v_add3_u32 v25, v31, v43, 0x7fff
	v_add3_u32 v31, v3, v50, 0x7fff
	v_add3_u32 v3, v12, v9, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v22, v22, v22 :: v_dual_and_b32 v41, 1, v61
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v48, 1, v68
	v_and_b32_e32 v51, 1, v72
	v_add3_u32 v5, v10, v5, 0x7fff
	v_add3_u32 v10, v15, v39, 0x7fff
	v_add3_u32 v15, v29, v42, 0x7fff
	v_add3_u32 v29, v2, v49, 0x7fff
	v_and_b32_e32 v2, 1, v1
	v_mov_b16_e32 v1.l, v16.h
	v_mov_b16_e32 v3.l, v7.h
	v_and_b32_e32 v8, 1, v58
	v_mov_b16_e32 v5.l, v6.h
	v_add3_u32 v2, v14, v2, 0x7fff
	v_cndmask_b32_e32 v7, 0x3276, v54, vcc_lo
	v_mov_b16_e32 v64.l, v17.h
	v_add3_u32 v8, v13, v8, 0x7fff
	v_add3_u32 v13, v27, v41, 0x7fff
	v_add3_u32 v27, v34, v48, 0x7fff
	v_add3_u32 v34, v4, v51, 0x7fff
	v_and_b32_e32 v4, 1, v1
	v_mov_b16_e32 v1.l, v26.h
	v_mov_b16_e32 v2.l, v8.h
	v_mov_b16_e32 v66.l, v21.h
	v_and_b32_e32 v47, 1, v67
	v_add3_u32 v0, v16, v4, 0x7fff
	v_and_b32_e32 v4, 1, v1
	v_mov_b16_e32 v1.l, v28.h
	v_mov_b16_e32 v0.l, v10.h
	v_cndmask_b32_e32 v6, v2, v5, vcc_lo
	v_dual_cndmask_b32 v2, v5, v2 :: v_dual_cndmask_b32 v5, 0x1054, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 1, v1
	v_mov_b16_e32 v1.l, v30.h
	v_dual_cndmask_b32 v9, v0, v3 :: v_dual_cndmask_b32 v0, v3, v0
	v_permlanex16_b32 v3, v2, s4, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v5, 8, v5
	v_lshl_or_b32 v5, v7, 8, v7
	v_add3_u32 v7, v28, v8, 0x7fff
	v_and_b32_e32 v8, 1, v1
	v_mov_b16_e32 v1.l, v32.h
	v_add3_u32 v4, v26, v4, 0x7fff
	v_mov_b16_e32 v4.l, v11.h
	v_and_b32_e32 v5, 0x760076, v5
	v_add3_u32 v8, v30, v8, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v18.h
	v_mov_b16_e32 v8.l, v15.h
	v_and_b32_e32 v2, 0x540054, v2
	v_lshl_or_b32 v5, v5, 4, v5
	v_add3_u32 v10, v32, v10, 0x7fff
	v_and_b32_e32 v11, 1, v1
	v_mov_b16_e32 v1.l, v20.h
	v_cndmask_b32_e32 v12, v8, v4, vcc_lo
	v_cndmask_b32_e32 v4, v4, v8, vcc_lo
	v_mov_b16_e32 v7.l, v13.h
	v_lshl_or_b32 v2, v2, 4, v2
	v_and_b32_e32 v8, 1, v1
	v_mov_b16_e32 v1.l, v22.h
	v_mov_b16_e32 v10.l, v25.h
	v_and_b32_e32 v44, 1, v64
	v_permlanex16_b32 v0, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v16, 0x5040504, v2
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v24.h
	v_and_b32_e32 v25, 0x7060706, v5
	v_cndmask_b32_e32 v13, v10, v7, vcc_lo
	v_cndmask_b32_e32 v7, v7, v10, vcc_lo
	v_add3_u32 v17, v17, v44, 0x7fff
	v_and_b32_e32 v15, 1, v1
	v_permlanex16_b32 v10, v4, s4, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v11, v18, v11, 0x7fff
	v_perm_b32 v2, v3, v6, v16
	v_mov_b16_e32 v11.l, v17.h
	v_perm_b32 v3, v3, v6, v25
	v_perm_b32 v4, v0, v9, v16
	v_perm_b32 v5, v0, v9, v25
	v_mov_b16_e32 v1.l, v35.h
	v_permlanex16_b32 v9, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v6, v10, v12, v16
	v_perm_b32 v7, v10, v12, v25
	v_add3_u32 v12, v22, v14, 0x7fff
	v_and_b32_e32 v46, 1, v66
	v_add3_u32 v19, v19, v45, 0x7fff
	v_add3_u32 v23, v23, v47, 0x7fff
	v_and_b32_e32 v10, 1, v1
	v_mov_b16_e32 v1.l, v36.h
	v_add3_u32 v21, v21, v46, 0x7fff
	v_add3_u32 v0, v20, v8, 0x7fff
	v_add3_u32 v14, v24, v15, 0x7fff
	v_mov_b16_e32 v0.l, v19.h
	v_perm_b32 v8, v9, v13, v16
	v_mov_b16_e32 v12.l, v21.h
	v_perm_b32 v9, v9, v13, v25
	v_mov_b16_e32 v14.l, v23.h
	v_and_b32_e32 v13, 1, v1
	v_mov_b16_e32 v1.l, v37.h
	v_cndmask_b32_e32 v15, v12, v11, vcc_lo
	v_cndmask_b32_e32 v11, v11, v12, vcc_lo
	v_add3_u32 v17, v35, v10, 0x7fff
	v_cndmask_b32_e32 v10, v0, v14, vcc_lo
	v_and_b32_e32 v12, 1, v1
	v_mov_b16_e32 v1.l, v38.h
	v_add3_u32 v13, v36, v13, 0x7fff
	v_cndmask_b32_e32 v0, v14, v0, vcc_lo
	v_mov_b16_e32 v17.l, v27.h
	v_add3_u32 v12, v37, v12, 0x7fff
	v_and_b32_e32 v1, 1, v1
	v_mov_b16_e32 v13.l, v29.h
	v_mov_b16_e32 v12.l, v31.h
	v_permlanex16_b32 v11, v11, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v14, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v1, v38, v1, 0x7fff
	v_mov_b16_e32 v1.l, v34.h
	v_cndmask_b32_e32 v18, v17, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b32_e32 v19, v13, v1, vcc_lo
	v_cndmask_b32_e32 v1, v1, v13, vcc_lo
	v_perm_b32 v10, v11, v15, v16
	v_perm_b32 v11, v11, v15, v25
	v_cndmask_b32_e32 v15, v12, v17, vcc_lo
	v_permlanex16_b32 v17, v18, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v19, s4, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v14, v0, v16
	v_perm_b32 v13, v14, v0, v25
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v14, v17, v15, v16
	v_perm_b32 v15, v17, v15, v25
	v_perm_b32 v16, v18, v1, v16
	v_perm_b32 v17, v18, v1, v25
	s_clause 0x3
	buffer_store_b128 v[2:5], v33, s[0:3], 0 offen
	buffer_store_b128 v[6:9], v33, s[0:3], 0 offen offset:512
	buffer_store_b128 v[10:13], v55, s[0:3], 0 offen
	buffer_store_b128 v[14:17], v55, s[0:3], 0 offen offset:512
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 91
		.amdhsa_next_free_sgpr 24
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
		.amdhsa_inst_pref_size 37
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 91
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 24
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4684
; TotalNumSgprs: 26
; NumVgprs: 91
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 11
; NumSGPRsForWavesPerEU: 26
; NumVGPRsForWavesPerEU: 91
; Occupancy: 16
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
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
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
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
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     26
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm32_bn512_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     91
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
