	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v9, 0 :: v_dual_lshlrev_b32 v20, 4, v0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v27, v0, 4, 4
	v_lshrrev_b32_e32 v28, 5, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v6, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v11, v9 :: v_dual_and_b32 v18, 0x1f0, v20
	v_dual_mov_b32 v12, v9 :: v_dual_and_b32 v21, 0x1e0, v0
	v_mov_b32_e32 v13, v9
	v_dual_mov_b32 v15, v9 :: v_dual_add_nc_u32 v22, 0, v20
	v_mov_b32_e32 v4, v9
	v_mov_b32_e32 v5, v9
	v_mov_b32_e32 v8, v9
	v_lshrrev_b32_e32 v21, 1, v21
	v_mov_b32_e32 v10, v9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s24, 15
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
	s_lshr_b32 s9, s9, 28
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
	s_ashr_i32 s7, s7, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	v_and_b32_e32 v20, 0x70, v20
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[0:1], s[0:1], 0x20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_xor_b32 s7, s2, s16
	s_mul_i32 s19, s19, s18
	s_ashr_i32 s27, s7, 31
	s_mul_hi_u32 s12, s18, s19
	s_mov_b32 s7, 0x31027000
	s_add_i32 s18, s18, s12
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s23, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s6, s14, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s6, s17
	s_sub_i32 s12, s14, s12
	s_add_i32 s14, s6, 1
	s_sub_i32 s18, s12, s17
	s_cmp_ge_u32 s12, s17
	s_cselect_b32 s14, s14, s6
	s_cselect_b32 s6, s18, s12
	s_add_i32 s12, s14, 1
	s_cmp_ge_u32 s6, s17
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s14
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s28, s12, s27
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s28, s27
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s29, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s14, s16
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s22, s6
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s12, s2, s15
	.loc	1 107 23 is_stmt 1              ; generate_amdgcn.py:107:23
	s_lshl_b32 s2, s3, 4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s24, s12, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s14, 9
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s15, s24, s29
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v17, 15, v0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s12, s25, s2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s13, 34
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[1:2], null, s29, v27, v[17:18]
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[2:3], null, s25, v28, v[18:19]
	v_bfe_i32 v19, v0, 3, 1
	v_mov_b32_e32 v3, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v24, s2, s15, v1
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v25, s12, s3, v2
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_dual_cndmask_b32 v1, 0x80000000, v24 :: v_dual_cndmask_b32 v2, 0x80000000, v25
	buffer_load_u8 v26, v1, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[29:32], v2, s[20:23], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v2, v0, 7, 1
	v_mov_b32_e32 v14, v9
	v_mov_b32_e32 v1, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v7, 0x88, v2
	v_mov_b32_e32 v2, v9
	v_xor_b32_e32 v23, v7, v6
	v_mov_b32_e32 v16, v9
	v_mov_b32_e32 v6, v9
	v_mov_b32_e32 v7, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v23, 0, v23
	s_waitcnt vmcnt(1)
	ds_store_b8 v23, v26 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[29:32]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_lshl_b32 s26, s25, 4
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add_nc_u32_e32 v1, s26, v25
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v41, v24, s[4:7], 0 offen offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[29:32], v1, s[20:23], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v1, 0, v17
	v_and_or_b32 v5, 0x88, v19, v20
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v24, v1, v21
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v1, v24 offset:2560
	ds_load_u8 v2, v24 offset:2048
	ds_load_u8 v3, v24 offset:3584
	ds_load_u8 v4, v24 offset:3072
	ds_load_u8 v6, v24 offset:512
	ds_load_u8 v7, v24
	ds_load_u8 v8, v24 offset:1536
	ds_load_u8 v9, v24 offset:1024
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v25, 0, v5
	v_xor_b32_e32 v10, 8, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_nc_u32_e32 v26, 0, v10
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	v_lshl_or_b32 v36, v2, 16, v1
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v1, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v9, v8, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v35, v2, 16, v1
	v_mov_b32_e32 v1, s12
	ds_load_u8 v39, v24 offset:3840
	ds_load_u8 v40, v24 offset:3328
	ds_load_u8 v42, v24 offset:2816
	ds_load_u8 v43, v24 offset:2304
	ds_load_u8 v44, v24 offset:1792
	ds_load_u8 v45, v24 offset:1280
	ds_load_u8 v46, v24 offset:768
	ds_load_u8 v47, v24 offset:256
	v_mov_b32_e32 v6, s17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[33:34], v25 offset:8192
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v48, v24 offset:6656
	ds_load_u8 v49, v24 offset:6144
	ds_load_u8 v50, v24 offset:4608
	ds_load_u8 v51, v24 offset:4096
	ds_load_u8 v52, v24 offset:5632
	ds_load_u8 v53, v24 offset:5120
	ds_load_u8 v54, v24 offset:7680
	ds_load_u8 v55, v24 offset:7168
	ds_load_u8 v56, v24 offset:7936
	ds_load_u8 v57, v24 offset:7424
	ds_load_u8 v58, v24 offset:6912
	ds_load_u8 v59, v24 offset:6400
	ds_load_u8 v60, v24 offset:5888
	ds_load_u8 v61, v24 offset:5376
	ds_load_u8 v62, v24 offset:4864
	ds_load_u8 v63, v24 offset:4352
	v_dual_mov_b32 v2, s13 :: v_dual_mov_b32 v3, s14
	v_dual_mov_b32 v4, s15 :: v_dual_mov_b32 v5, s16
	v_dual_mov_b32 v8, s19 :: v_dual_mov_b32 v7, s18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[37:38], v26 offset:8192
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v48, v49, v48, 0xc0c0004
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s12, s29, 15
.Ltmp13:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s12, s12, 4
.Ltmp15:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s12, s12, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v23, v41 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[29:32]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v35, v43, v42, 0xc0c0004
	v_perm_b32 v36, v40, v39, 0xc0c0004
	v_perm_b32 v39, v47, v46, 0xc0c0004
	v_perm_b32 v40, v45, v44, 0xc0c0004
	v_perm_b32 v42, v55, v54, 0xc0c0004
	v_perm_b32 v43, v51, v50, 0xc0c0004
	v_perm_b32 v44, v53, v52, 0xc0c0004
	v_lshl_or_b32 v36, v36, 16, v35
	v_lshl_or_b32 v35, v40, 16, v39
	v_perm_b32 v45, v59, v58, 0xc0c0004
	v_perm_b32 v46, v57, v56, 0xc0c0004
	v_perm_b32 v47, v63, v62, 0xc0c0004
	v_perm_b32 v49, v61, v60, 0xc0c0004
	v_lshl_or_b32 v40, v42, 16, v48
	v_lshl_or_b32 v39, v44, 16, v43
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v34, v46, 16, v45
	v_lshl_or_b32 v33, v49, 16, v47
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s12, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[37:38], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_add3_u32 v28, s2, v28, 32
	v_add_nc_u32_e32 v27, s24, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v29, s25, v28
	v_mad_u64_u32 v[27:28], null, s29, v27, s[2:3]
	s_lshl_b32 s2, s28, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v28, v29, s2, v18
	s_lshl_b32 s2, s27, 9
	v_add3_u32 v18, v27, v17, 32
	v_subrev_nc_u32_e32 v27, s2, v28
	s_add_i32 s2, s12, -2
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v44, v18, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[28:31], v27, s[20:23], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v36, v24 offset:6656
	ds_load_u8 v37, v24 offset:6144
	ds_load_u8 v38, v24 offset:7680
	ds_load_u8 v39, v24 offset:7168
	ds_load_u8 v40, v24 offset:4608
	ds_load_u8 v41, v24 offset:4096
	ds_load_u8 v42, v24 offset:5632
	ds_load_u8 v43, v24 offset:5120
	ds_load_u8 v45, v24 offset:2560
	ds_load_u8 v46, v24 offset:2048
	ds_load_u8 v47, v24 offset:3584
	ds_load_u8 v48, v24 offset:3072
	ds_load_u8 v49, v24 offset:3840
	ds_load_u8 v50, v24 offset:3328
	ds_load_u8 v51, v24 offset:2816
	ds_load_u8 v52, v24 offset:2304
	ds_load_u8 v53, v24 offset:512
	ds_load_u8 v54, v24
	ds_load_u8 v55, v24 offset:1536
	ds_load_u8 v56, v24 offset:1024
	ds_load_u8 v57, v24 offset:1792
	ds_load_u8 v58, v24 offset:1280
	ds_load_u8 v59, v24 offset:768
	ds_load_u8 v60, v24 offset:256
	ds_load_u8 v61, v24 offset:7936
	ds_load_u8 v62, v24 offset:7424
	ds_load_u8 v63, v24 offset:6912
	ds_load_u8 v64, v24 offset:6400
	ds_load_u8 v65, v24 offset:5888
	ds_load_u8 v66, v24 offset:5376
	ds_load_u8 v67, v24 offset:4864
	ds_load_u8 v68, v24 offset:4352
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[32:33], v25 offset:8192
	ds_load_b64 v[34:35], v26 offset:8192
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v46, v48, v47, 0xc0c0004
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v47, v54, v53, 0xc0c0004
	v_perm_b32 v54, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v48, v56, v55, 0xc0c0004
	v_perm_b32 v40, v52, v51, 0xc0c0004
	v_perm_b32 v41, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v49, v58, v57, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v43, v60, v59, 0xc0c0004
	v_perm_b32 v53, v37, v36, 0xc0c0004
	v_perm_b32 v38, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v51, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v50, v64, v63, 0xc0c0004
	v_lshl_or_b32 v37, v46, 16, v45
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v55, v66, v65, 0xc0c0004
	v_lshl_or_b32 v36, v48, 16, v47
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v52, v68, v67, 0xc0c0004
	v_lshl_or_b32 v41, v41, 16, v40
	v_lshl_or_b32 v40, v49, 16, v43
	v_lshl_or_b32 v39, v38, 16, v53
	v_lshl_or_b32 v38, v42, 16, v54
	v_lshl_or_b32 v43, v51, 16, v50
	v_lshl_or_b32 v42, v55, 16, v52
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[36:37], v[32:33], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[40:41], v[32:33], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v18, 16, v18
	v_add_nc_u32_e32 v27, s26, v27
	s_add_i32 s2, s2, -1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[34:35], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[34:35], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s2, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v23, v44 offset:8192
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[28:31]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v21, 0, v21, v17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_or_b32 v18, 0x88, v19, v20
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v22, v21 offset:2560
	ds_load_u8 v23, v21 offset:2048
	ds_load_u8 v24, v21 offset:3584
	ds_load_u8 v25, v21 offset:3072
	ds_load_u8 v26, v21 offset:512
	ds_load_u8 v27, v21
	ds_load_u8 v28, v21 offset:1536
	ds_load_u8 v29, v21 offset:1024
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v30, v18, 8, 0
	v_add_nc_u32_e32 v18, 0, v18
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v31, v21 offset:3840
	ds_load_u8 v32, v21 offset:3328
	ds_load_u8 v33, v21 offset:2816
	ds_load_u8 v34, v21 offset:2304
	ds_load_u8 v35, v21 offset:1792
	ds_load_u8 v36, v21 offset:1280
	ds_load_u8 v37, v21 offset:768
	ds_load_u8 v38, v21 offset:256
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[18:19], v18 offset:8192
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v20, v23, v22, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v22, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v23, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v24, v29, v28, 0xc0c0004
	ds_load_u8 v25, v21 offset:6656
	ds_load_u8 v26, v21 offset:6144
	ds_load_u8 v27, v21 offset:4608
	ds_load_u8 v28, v21 offset:4096
	ds_load_u8 v29, v21 offset:5632
	ds_load_u8 v39, v21 offset:5120
	ds_load_u8 v40, v21 offset:7680
	ds_load_u8 v41, v21 offset:7168
	ds_load_u8 v42, v21 offset:7936
	ds_load_u8 v43, v21 offset:7424
	ds_load_u8 v44, v21 offset:6912
	ds_load_u8 v45, v21 offset:6400
	ds_load_u8 v46, v21 offset:5888
	ds_load_u8 v47, v21 offset:5376
	ds_load_u8 v48, v21 offset:4864
	ds_load_u8 v49, v21 offset:4352
	v_lshl_or_b32 v21, v22, 16, v20
	v_lshl_or_b32 v20, v24, 16, v23
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[22:23], v30 offset:8192
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v24, v26, v25, 0xc0c0004
	v_perm_b32 v25, v38, v37, 0xc0c0004
	v_perm_b32 v26, v36, v35, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[20:21], v[18:19], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v20, v34, v33, 0xc0c0004
	v_perm_b32 v21, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v30, v41, v40, 0xc0c0004
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_perm_b32 v28, v39, v29, 0xc0c0004
	s_waitcnt lgkmcnt(7)
	v_perm_b32 v29, v43, v42, 0xc0c0004
	v_lshl_or_b32 v21, v21, 16, v20
	v_lshl_or_b32 v20, v26, 16, v25
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v26, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v32, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v31, v49, v48, 0xc0c0004
	v_lshl_or_b32 v25, v30, 16, v24
	v_lshl_or_b32 v24, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[1:8], v[20:21], v[18:19], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v19, v29, 16, v26
	v_lshl_or_b32 v18, v32, 16, v31
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[24:25], v[22:23], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[18:19], v[22:23], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v18, s24, v17
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v37, 0x5410 :: v_dual_lshlrev_b32 v18, 1, v18
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_or_b32_e32 v19, s3, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v38, 0x7632
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v23, v11
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v18, v18, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	v_lshlrev_b32_e32 v19, 1, v19
	s_mov_b32 s4, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v29, v1
	v_cvt_f32_i32_e32 v30, v2
	v_cvt_f32_i32_e32 v21, v9
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v31, v3
	v_cvt_f32_i32_e32 v25, v13
	v_cvt_f32_i32_e32 v32, v4
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v22, v10
	v_cvt_f32_i32_e32 v24, v12
	v_cvt_f32_i32_e32 v33, v5
	v_cvt_f32_i32_e32 v34, v6
	v_cvt_f32_i32_e32 v35, v7
	v_cvt_f32_i32_e32 v36, v8
	v_cvt_f32_i32_e32 v26, v14
	v_cvt_f32_i32_e32 v27, v15
	v_cvt_f32_i32_e32 v28, v16
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v17, s25, v17
	s_mul_i32 s24, s24, s25
	s_mov_b32 s2, 0x76543210
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s1, s1, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v17, s24, s3, v17
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s3, s7
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v18, 16, v18
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v20, 0x1f0, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v2, 5, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v3, v20, 2, 0
	v_and_b32_e32 v1, 28, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 32, v2
	v_lshl_add_u32 v13, v20, 1, 0
	v_add3_u32 v1, v3, v2, v1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v2, 16, v19
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.h, 0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v1, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v13
	ds_load_b128 v[5:8], v13 offset:16
	ds_load_b128 v[9:12], v13 offset:1024
	ds_load_b128 v[13:16], v13 offset:1040
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.h, v19.h
	v_mov_b16_e32 v40.h, v19.h
	v_mov_b16_e32 v43.h, v19.h
	v_mov_b16_e32 v41.h, v19.h
	v_mov_b16_e32 v42.h, v19.h
	v_mov_b16_e32 v44.h, v19.h
	v_mov_b16_e32 v46.h, v19.h
	v_mov_b16_e32 v45.h, v19.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(3)
	v_mul_f32_e32 v3, v3, v18
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v3, v3, v23
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v1, v1, v18
	v_mul_f32_e32 v2, v2, v18
	v_mul_f32_e32 v4, v4, v18
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v7, v7, v18 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v8, v8, v18
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v9, v9, v18 :: v_dual_mul_f32 v4, v4, v24
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v1, v1, v21 :: v_dual_mul_f32 v2, v2, v22
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v5, v5, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v10, v10, v18 :: v_dual_mul_f32 v9, v9, v29
	v_dual_mul_f32 v6, v6, v18 :: v_dual_mul_f32 v7, v7, v27
	v_dual_mul_f32 v11, v11, v18 :: v_dual_mul_f32 v8, v8, v28
	v_dual_mul_f32 v12, v12, v18 :: v_dual_max_f32 v1, 0, v1
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v9, 0, v9
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v5, v5, v25 :: v_dual_mul_f32 v10, v10, v30
	v_dual_mul_f32 v6, v6, v26 :: v_dual_max_f32 v3, 0, v3
	v_mul_f32_e32 v11, v11, v31
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v13, v13, v18 :: v_dual_mul_f32 v12, v12, v32
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_max_f32_e32 v4, 0, v4
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v10, 0, v10
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v1, v1, v1 :: v_dual_mul_f32 v14, v14, v18
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v13, v13, v33 :: v_dual_mul_f32 v16, v16, v18
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v15, v15, v18
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v19.l, v2.h
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v20, 1, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v39.l, v1.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v16, v16, v36 :: v_dual_mul_f32 v15, v15, v35
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v13, 0, v13
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v11, v11, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v40.l, v3.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v18, 1, v19
	v_mov_b16_e32 v19.l, v4.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v17, v17, v20, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v39
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v21, 1, v40
	v_mul_f32_e32 v13, v13, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v2, v2, v18, 0x7fff
	v_and_b32_e32 v18, 1, v19
	v_mov_b16_e32 v19.l, v6.h
	v_add3_u32 v1, v1, v20, 0x7fff
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v15, v15, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v3, v21, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v14, v14, v34 :: v_dual_max_f32 v7, 0, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v20, 1, v19
	v_mov_b16_e32 v19.l, v8.h
	v_mov_b16_e32 v43.l, v9.h
	v_mov_b16_e32 v2.l, v1.h
	v_add3_u32 v1, v4, v18, 0x7fff
	v_mov_b16_e32 v1.l, v3.h
	v_add3_u32 v4, v6, v20, 0x7fff
	v_and_b32_e32 v3, 1, v19
	v_mov_b16_e32 v19.l, v10.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v14, 0, v14 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v24, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v8, v3, 0x7fff
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v16, 0, v16 :: v_dual_and_b32 v3, 1, v19
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v7, v7, v7
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v41.l, v5.h
	v_add3_u32 v9, v9, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v3, v10, v3, 0x7fff
	v_mov_b16_e32 v44.l, v11.h
	v_mov_b16_e32 v42.l, v7.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v12, v12, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v3.l, v9.h
	v_and_b32_e32 v22, 1, v41
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v14, v14, v14 :: v_dual_and_b32 v25, 1, v44
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v23, 1, v42
	v_mov_b16_e32 v19.l, v12.h
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v5, v5, v22, 0x7fff
	v_mov_b16_e32 v46.l, v15.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v16, v16, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v7, v7, v23, 0x7fff
	v_cndmask_b32_e32 v6, 0x3276, v38, vcc_lo
	v_mov_b16_e32 v4.l, v5.h
	v_mov_b16_e32 v45.l, v13.h
	v_and_b32_e32 v27, 1, v46
	v_mov_b16_e32 v0.l, v7.h
	v_and_b32_e32 v7, 1, v19
	v_dual_cndmask_b32 v5, v4, v2 :: v_dual_cndmask_b32 v2, v2, v4
	v_cndmask_b32_e32 v4, 0x1054, v37, vcc_lo
	v_mov_b16_e32 v19.l, v14.h
	v_cndmask_b32_e32 v8, v0, v1, vcc_lo
	v_cndmask_b32_e32 v0, v1, v0, vcc_lo
	v_permlanex16_b32 v1, v2, s2, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v4, 8, v4
	v_lshl_or_b32 v4, v6, 8, v6
	v_add3_u32 v6, v12, v7, 0x7fff
	v_and_b32_e32 v7, 1, v19
	v_mov_b16_e32 v19.l, v16.h
	v_and_b32_e32 v26, 1, v45
	v_permlanex16_b32 v9, v0, s2, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x540054, v2
	v_and_b32_e32 v2, 0x760076, v4
	v_and_b32_e32 v4, 1, v19
	v_add3_u32 v11, v11, v25, 0x7fff
	v_add3_u32 v13, v13, v26, 0x7fff
	v_add3_u32 v15, v15, v27, 0x7fff
	v_add3_u32 v7, v14, v7, 0x7fff
	v_add3_u32 v4, v16, v4, 0x7fff
	v_mov_b16_e32 v6.l, v11.h
	v_mov_b16_e32 v7.l, v13.h
	v_lshl_or_b32 v2, v2, 4, v2
	v_mov_b16_e32 v4.l, v15.h
	v_lshl_or_b32 v0, v0, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v10, v7, v3, vcc_lo
	v_cndmask_b32_e32 v3, v3, v7, vcc_lo
	v_and_b32_e32 v11, 0x7060706, v2
	v_cndmask_b32_e32 v2, v6, v4, vcc_lo
	v_dual_cndmask_b32 v12, v4, v6 :: v_dual_and_b32 v7, 0x5040504, v0
	v_permlanex16_b32 v6, v3, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v3, v9, v8, v11
	v_permlanex16_b32 v13, v2, s2, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_perm_b32 v0, v1, v5, v7
	v_perm_b32 v1, v1, v5, v11
	v_perm_b32 v2, v9, v8, v7
	v_perm_b32 v4, v6, v10, v7
	v_perm_b32 v5, v6, v10, v11
	v_perm_b32 v6, v13, v12, v7
	v_perm_b32 v7, v13, v12, v11
	s_mov_b32 s2, s6
	s_clause 0x1
	buffer_store_b128 v[0:3], v17, s[0:3], 0 offen
	buffer_store_b128 v[4:7], v17, s[0:3], 0 offen offset:512
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 69
		.amdhsa_next_free_sgpr 30
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 69
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 30
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4216
; TotalNumSgprs: 32
; NumVgprs: 69
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 32
; NumVGPRsForWavesPerEU: 69
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     69
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
