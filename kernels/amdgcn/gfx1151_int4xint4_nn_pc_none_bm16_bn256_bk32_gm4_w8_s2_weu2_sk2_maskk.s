	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v17, 15, v0
	v_lshrrev_b32_e32 v19, 4, v0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v6, v0, 7, 1
	v_and_b32_e32 v7, 0x7f, v0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_lshlrev_b32_e32 v27, 4, v0
	v_and_b32_e32 v21, 8, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v6, 0x88, v6
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v23, 0, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v6, v6, v7
	v_add_nc_u32_e32 v22, 0, v6
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s21, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s20, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[16:17], s[14:15]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_mov_b32 s15, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s19, s15
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s27, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s9, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s5, s10, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s28, s4, s27
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s4, s10, s5
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s5, s28, s27
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s30, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s29, s4, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s5, s7
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v4, s30, v17
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s24, s5, 8
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v3, s30, v19
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s2, 4
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s29, v4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s10, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s2, s20, s29
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s25, -1, 0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s3, s21, s30
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s25, vcc_lo
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v18, 4, v17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s17, s17, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 117 30 is_stmt 0              ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[1:2], null, s21, v19, v[18:19]
	.loc	1 113 30 is_stmt 1              ; generate_amdgcn.py:113:30
	v_mul_lo_u32 v2, s29, v19
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add3_u32 v26, s3, s24, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v25, v2, v17, s2
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s29, v3
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v2, s30, v25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 0              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s25, s2
	s_mov_b32 s2, 0
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v26, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v5, v1, s[12:15], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[1:4], v2, s[16:19], 0 offen
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmpk_gt_i32 s10, 0x41
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v22, v5 offset:4096
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v23, v[1:4]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v24, 8, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr24
.LBB0_3:                                ; %Flow183
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[22:23], s[0:1], 0x20
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_lshrrev_b32_e32 v20, 1, v0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	.loc	1 105 9 is_stmt 1               ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v24, s29, v17
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s0, s30, 32
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_lshl_b32 s26, s21, 5
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, s0, v25
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v25, s29, v19
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v24
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	v_bfe_i32 v3, v0, 3, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s31, s29, 31
.Ltmp13:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v25
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_mov_b32 s0, 0
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s31, s31, 5
.Ltmp15:
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s1, s0
	s_mov_b32 s2, s0
	s_mov_b32 s3, s0
	s_mov_b32 s4, s0
	s_mov_b32 s5, s0
	s_mov_b32 s6, s0
	s_mov_b32 s7, s0
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_add_nc_u32_e32 v2, s26, v26
	v_and_b32_e32 v4, 0x70, v20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 117 22 is_stmt 0              ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v45, v1, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v1, 0, v17
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[29:32], v2, s[16:19], 0 offen
	v_and_b32_e32 v2, 0x70, v27
	v_add_nc_u32_e32 v26, v1, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v2, 0x88, v3, v2
	v_xor_b32_e32 v1, 8, v2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v27, 0, v2
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v28, 0, v1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v8, s7 :: v_dual_mov_b32 v1, s0
	ds_load_u8 v9, v26 offset:2304
	ds_load_u8 v10, v26 offset:2048
	ds_load_u8 v11, v26 offset:2816
	ds_load_u8 v12, v26 offset:2560
	ds_load_u8 v13, v26 offset:1280
	ds_load_u8 v14, v26 offset:1024
	ds_load_u8 v15, v26 offset:1792
	ds_load_u8 v16, v26 offset:1536
	ds_load_u8 v37, v26 offset:1920
	ds_load_u8 v38, v26 offset:1664
	ds_load_u8 v39, v26 offset:1408
	ds_load_u8 v40, v26 offset:1152
	ds_load_u8 v41, v26 offset:256
	ds_load_u8 v42, v26
	ds_load_u8 v43, v26 offset:768
	ds_load_u8 v44, v26 offset:512
	ds_load_u8 v46, v26 offset:896
	ds_load_u8 v47, v26 offset:640
	ds_load_u8 v48, v26 offset:384
	ds_load_u8 v49, v26 offset:128
	ds_load_u8 v50, v26 offset:3328
	ds_load_u8 v51, v26 offset:3072
	ds_load_u8 v52, v26 offset:3840
	ds_load_u8 v53, v26 offset:3584
	ds_load_u8 v54, v26 offset:3968
	ds_load_u8 v55, v26 offset:3712
	ds_load_u8 v56, v26 offset:3456
	ds_load_u8 v57, v26 offset:3200
	ds_load_u8 v58, v26 offset:2944
	ds_load_u8 v59, v26 offset:2688
	ds_load_u8 v60, v26 offset:2432
	ds_load_u8 v61, v26 offset:2176
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[33:34], v27 offset:4096
	ds_load_b64 v[35:36], v28 offset:4096
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v13, v14, v13, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v14, v16, v15, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v15, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(18)
	v_perm_b32 v16, v44, v43, 0xc0c0004
	v_perm_b32 v9, v10, v9, 0xc0c0004
	v_perm_b32 v10, v12, v11, 0xc0c0004
	v_perm_b32 v11, v40, v39, 0xc0c0004
	v_perm_b32 v12, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v41, v51, v50, 0xc0c0004
	v_perm_b32 v43, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v53, v52, 0xc0c0004
	v_perm_b32 v44, v47, v46, 0xc0c0004
	v_dual_mov_b32 v7, s6 :: v_dual_mov_b32 v6, s5
	v_dual_mov_b32 v5, s4 :: v_dual_mov_b32 v4, s3
	v_dual_mov_b32 v3, s2 :: v_dual_mov_b32 v2, s1
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v46, v57, v56, 0xc0c0004
	v_perm_b32 v47, v55, v54, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v48, v61, v60, 0xc0c0004
	v_perm_b32 v49, v59, v58, 0xc0c0004
	v_lshl_or_b32 v38, v14, 16, v13
	v_lshl_or_b32 v37, v16, 16, v15
	v_lshl_or_b32 v40, v42, 16, v41
	v_lshl_or_b32 v42, v12, 16, v11
	v_lshl_or_b32 v41, v44, 16, v43
	v_lshl_or_b32 v39, v10, 16, v9
	v_lshl_or_b32 v44, v47, 16, v46
	v_lshl_or_b32 v43, v49, 16, v48
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[33:34], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s1, s31, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s1, 2
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[35:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v22, v45 offset:4096
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v23, v[29:32]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.peel.next
	s_add_i32 s0, s30, 64
	s_lshl_b32 s2, s28, 8
	v_add_nc_u32_e32 v29, s0, v19
	v_add_nc_u32_e32 v19, s20, v19
	s_add_i32 s1, s1, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_lo_u32 v29, s21, v29
	v_add3_u32 v29, v29, s2, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_mad_u64_u32 v[18:19], null, s29, v19, v[17:18]
	s_lshl_b32 s2, s27, 8
	v_subrev_nc_u32_e32 v19, s2, v29
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v25
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v29, s0, v18
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s1, s1, -1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_cndmask_b32_e32 v30, 0x80000000, v19, vcc_lo
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v24
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v19, s26, v19
	s_add_i32 s0, s0, 32
	s_cmp_lg_u32 s1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v29, 0x80000000, v29, vcc_lo
	buffer_load_u8 v45, v29, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b128 v[29:32], v30, s[16:19], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v37, v26 offset:3328
	ds_load_u8 v38, v26 offset:3072
	ds_load_u8 v39, v26 offset:3840
	ds_load_u8 v40, v26 offset:3584
	ds_load_u8 v41, v26 offset:2304
	ds_load_u8 v42, v26 offset:2048
	ds_load_u8 v43, v26 offset:2816
	ds_load_u8 v44, v26 offset:2560
	ds_load_u8 v46, v26 offset:1280
	ds_load_u8 v47, v26 offset:1024
	ds_load_u8 v48, v26 offset:1792
	ds_load_u8 v49, v26 offset:1536
	ds_load_u8 v50, v26 offset:1920
	ds_load_u8 v51, v26 offset:1664
	ds_load_u8 v52, v26 offset:1408
	ds_load_u8 v53, v26 offset:1152
	ds_load_u8 v54, v26 offset:256
	ds_load_u8 v55, v26
	ds_load_u8 v56, v26 offset:768
	ds_load_u8 v57, v26 offset:512
	ds_load_u8 v58, v26 offset:896
	ds_load_u8 v59, v26 offset:640
	ds_load_u8 v60, v26 offset:384
	ds_load_u8 v61, v26 offset:128
	ds_load_u8 v62, v26 offset:3968
	ds_load_u8 v63, v26 offset:3712
	ds_load_u8 v64, v26 offset:3456
	ds_load_u8 v65, v26 offset:3200
	ds_load_u8 v66, v26 offset:2944
	ds_load_u8 v67, v26 offset:2688
	ds_load_u8 v68, v26 offset:2432
	ds_load_u8 v69, v26 offset:2176
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[33:34], v27 offset:4096
	ds_load_b64 v[35:36], v28 offset:4096
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v47, v49, v48, 0xc0c0004
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v48, v55, v54, 0xc0c0004
	v_perm_b32 v55, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v49, v57, v56, 0xc0c0004
	v_perm_b32 v41, v53, v52, 0xc0c0004
	v_perm_b32 v42, v51, v50, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v50, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v44, v61, v60, 0xc0c0004
	v_perm_b32 v54, v38, v37, 0xc0c0004
	v_perm_b32 v39, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v52, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v51, v65, v64, 0xc0c0004
	v_lshl_or_b32 v38, v47, 16, v46
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v56, v67, v66, 0xc0c0004
	v_lshl_or_b32 v37, v49, 16, v48
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v53, v69, v68, 0xc0c0004
	v_lshl_or_b32 v42, v42, 16, v41
	v_lshl_or_b32 v41, v50, 16, v44
	v_lshl_or_b32 v40, v39, 16, v54
	v_lshl_or_b32 v39, v43, 16, v55
	v_lshl_or_b32 v44, v52, 16, v51
	v_lshl_or_b32 v43, v56, 16, v53
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[37:38], v[33:34], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[41:42], v[33:34], v[1:8] neg_lo:[1,1,0]
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v22, v45 offset:4096
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v23, v[29:32]
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[35:36], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[35:36], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %Flow182
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v24, v21
.LBB0_8:                                ; %._crit_edge
	v_and_b32_e32 v19, 0xf0, v0
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_and_b32_e32 v18, 7, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s0, 0, v24
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s25
	s_mov_b32 s1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_and_b32_e32 v20, 0x70, v20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v21, 0x88, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v22, 0, v20, v17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshl_or_b32 v20, v18, 4, v21
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v23, v22 offset:1280
	ds_load_u8 v24, v22 offset:1024
	ds_load_u8 v25, v22 offset:1792
	ds_load_u8 v26, v22 offset:1536
	ds_load_u8 v27, v22 offset:256
	ds_load_u8 v28, v22
	ds_load_u8 v29, v22 offset:768
	ds_load_u8 v30, v22 offset:512
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xad_u32 v31, v20, 8, 0
	v_add_nc_u32_e32 v20, 0, v20
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v32, v22 offset:3328
	ds_load_u8 v33, v22 offset:3072
	ds_load_u8 v34, v22 offset:1920
	ds_load_u8 v35, v22 offset:1664
	ds_load_u8 v36, v22 offset:1408
	ds_load_u8 v37, v22 offset:1152
	ds_load_u8 v38, v22 offset:896
	ds_load_u8 v39, v22 offset:640
	ds_load_u8 v40, v22 offset:384
	ds_load_u8 v41, v22 offset:128
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[20:21], v20 offset:4096
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v24, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v25, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v26, v30, v29, 0xc0c0004
	ds_load_u8 v27, v22 offset:2304
	ds_load_u8 v28, v22 offset:2048
	ds_load_u8 v29, v22 offset:2816
	ds_load_u8 v30, v22 offset:2560
	ds_load_u8 v42, v22 offset:3840
	ds_load_u8 v43, v22 offset:3584
	ds_load_u8 v44, v22 offset:3968
	ds_load_u8 v45, v22 offset:3712
	ds_load_u8 v46, v22 offset:3456
	ds_load_u8 v47, v22 offset:3200
	ds_load_u8 v48, v22 offset:2944
	ds_load_u8 v49, v22 offset:2688
	ds_load_u8 v50, v22 offset:2432
	ds_load_u8 v51, v22 offset:2176
	v_lshl_or_b32 v23, v24, 16, v23
	v_lshl_or_b32 v22, v26, 16, v25
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[24:25], v31 offset:4096
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v26, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v31, v41, v40, 0xc0c0004
	v_perm_b32 v32, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[22:23], v[20:21], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v22, v37, v36, 0xc0c0004
	v_perm_b32 v23, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v43, v42, 0xc0c0004
	v_perm_b32 v28, v28, v27, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	v_lshl_or_b32 v23, v23, 16, v22
	v_lshl_or_b32 v22, v32, 16, v31
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v30, v47, v46, 0xc0c0004
	v_perm_b32 v31, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v32, v51, v50, 0xc0c0004
	v_perm_b32 v34, v49, v48, 0xc0c0004
	v_lshl_or_b32 v27, v33, 16, v26
	v_lshl_or_b32 v26, v29, 16, v28
	v_wmma_i32_16x16x16_iu4 v[1:8], v[22:23], v[20:21], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v21, v31, 16, v30
	v_lshl_or_b32 v20, v34, 16, v32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[26:27], v[24:25], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[20:21], v[24:25], v[1:8] neg_lo:[1,1,0]
.LBB0_10:                               ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v20, s20, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v22, v9
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_lshlrev_b32_e32 v20, 1, v20
	s_mov_b32 s4, s8
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	v_or_b32_e32 v17, s24, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v35, v7
	v_cvt_f32_i32_e32 v23, v10
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v26, v13
	v_cvt_f32_i32_e32 v30, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v1, 1, v0
	v_lshlrev_b32_e32 v0, 5, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v31, v2
	v_cvt_f32_i32_e32 v32, v3
	v_cvt_f32_i32_e32 v28, v15
	v_cvt_f32_i32_e32 v33, v4
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_and_b32_e32 v0, 32, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v34, v5
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_cndmask_b32_e64 v4, 0x2040, 0, s0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v37, v8
	v_cvt_f32_i32_e32 v29, v16
	v_cvt_f32_i32_e32 v24, v11
	v_cvt_f32_i32_e32 v25, v12
	v_cvt_f32_i32_e32 v27, v14
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v21, 1, v17
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v2, 2, v19
	v_and_b32_e32 v1, 28, v1
	v_lshlrev_b32_e32 v3, 1, v19
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v19, v6
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	v_or3_b32 v36, v2, v0, v1
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_lshl_or_b32 v5, v18, 2, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add_nc_u32_e32 v15, 0, v3
	s_barrier
	.loc	1 192 23 is_stmt 1              ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s20, s21, v[17:18]
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_add_nc_u32_e32 v38, 0, v36
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_xor_b32_e32 v2, v5, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v16, v18, 10, v2
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v39, v16, 4, 0
	v_xad_u32 v40, v16, 8, 0
	v_xad_u32 v41, v16, 12, 0
	v_xad_u32 v42, v16, 16, 0
	v_xad_u32 v43, v16, 20, 0
	v_xad_u32 v44, v16, 24, 0
	v_xad_u32 v45, v16, 28, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_lshlrev_b64 v[1:2], 2, v[0:1]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v3, 16, v21
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v38, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v15
	ds_load_b128 v[7:10], v15 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v6, v6, v20
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_add_nc_u32_e32 v21, 0, v16
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v10, v10, v20
	ds_load_b128 v[11:14], v15 offset:512
	ds_load_b128 v[15:18], v15 offset:528
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v6, v6, v25
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v10, v10, v29 :: v_dual_mul_f32 v17, v17, v20
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v17, v17, v35
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v3, v3, v20
	v_mul_f32_e32 v14, v14, v20
	v_mul_f32_e32 v11, v11, v20
	v_mul_f32_e32 v4, v4, v20
	v_mul_f32_e32 v12, v12, v20
	v_mul_f32_e32 v8, v8, v20
	v_mul_f32_e32 v5, v5, v20
	v_mul_f32_e32 v16, v16, v20
	v_mul_f32_e32 v13, v13, v20
	v_mul_f32_e32 v7, v7, v20
	v_mul_f32_e32 v18, v18, v20
	v_mul_f32_e32 v15, v15, v20
	v_dual_mul_f32 v9, v9, v20 :: v_dual_mul_f32 v12, v12, v31
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v3, v3, v22 :: v_dual_mul_f32 v14, v14, v33
	v_dual_mul_f32 v11, v11, v30 :: v_dual_mul_f32 v4, v4, v23
	v_dual_mul_f32 v8, v8, v27 :: v_dual_mul_f32 v5, v5, v24
	v_dual_mul_f32 v16, v16, v19 :: v_dual_mul_f32 v13, v13, v32
	v_dual_mul_f32 v7, v7, v26 :: v_dual_mul_f32 v18, v18, v37
	v_mul_f32_e32 v15, v15, v34
	v_mul_f32_e32 v9, v9, v28
	ds_store_2addr_stride64_b32 v21, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v39, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v40, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v41, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v42, v7, v15 offset1:2
	ds_store_2addr_stride64_b32 v43, v8, v16 offset1:2
	ds_store_2addr_stride64_b32 v44, v9, v17 offset1:2
	ds_store_2addr_stride64_b32 v45, v10, v18 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 192 9 is_stmt 1               ; generate_amdgcn.py:192:9
	global_load_b32 v4, v[1:2], off
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_xad_u32 v3, 0x404, v36, 0
	v_xad_u32 v5, 0x808, v36, 0
	v_xad_u32 v6, 0xc0c, v36, 0
	v_xad_u32 v7, 0x1010, v36, 0
	v_xad_u32 v8, 0x1414, v36, 0
	v_xad_u32 v9, 0x1818, v36, 0
	v_xad_u32 v10, 0x1c1c, v36, 0
	ds_load_b32 v20, v38
	ds_load_b32 v19, v3
	ds_load_b32 v18, v5
	ds_load_b32 v17, v6
	ds_load_b32 v16, v7
	ds_load_b32 v15, v8
	ds_load_b32 v14, v9
	ds_load_b32 v13, v10
	v_xad_u32 v3, 0x2040, v36, 0
	v_xad_u32 v5, 0x2444, v36, 0
	v_xad_u32 v6, 0x2848, v36, 0
	v_xad_u32 v7, 0x2c4c, v36, 0
	v_xad_u32 v8, 0x3050, v36, 0
	v_xad_u32 v21, 0x3454, v36, 0
	v_xad_u32 v22, 0x3858, v36, 0
	v_xad_u32 v23, 0x3c5c, v36, 0
	ds_load_b32 v12, v3
	ds_load_b32 v11, v5
	ds_load_b32 v10, v6
	ds_load_b32 v9, v7
	ds_load_b32 v8, v8
	ds_load_b32 v7, v21
	ds_load_b32 v6, v22
	ds_load_b32 v5, v23
.LBB0_11:                               ; %atomicrmw.start86
                                        ; =>This Inner Loop Header: Depth=1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_waitcnt vmcnt(0) lgkmcnt(15)
	v_add_f32_e32 v3, v4, v20
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s1, vcc_lo, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s1
	s_cbranch_execnz .LBB0_11
; %bb.12:                               ; %atomicrmw.end85
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	s_ashr_i32 s1, s21, 31
	s_mov_b32 s0, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshl_b64 s[0:1], s[0:1], 2
	v_add_co_u32 v1, vcc_lo, v1, s0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s1, v2, vcc_lo
	s_mov_b32 s0, 0
	global_load_b32 v4, v[1:2], off
.LBB0_13:                               ; %atomicrmw.start80
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(14)
	v_add_f32_e32 v3, v4, v19
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_13
; %bb.14:                               ; %atomicrmw.end79
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v1, s21, 1, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_15:                               ; %atomicrmw.start74
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(13)
	v_add_f32_e32 v3, v4, v18
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_15
; %bb.16:                               ; %atomicrmw.end73
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 3, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_17:                               ; %atomicrmw.start68
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(12)
	v_add_f32_e32 v3, v4, v17
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_17
; %bb.18:                               ; %atomicrmw.end67
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v1, s21, 2, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_19:                               ; %atomicrmw.start62
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(11)
	v_add_f32_e32 v3, v4, v16
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_19
; %bb.20:                               ; %atomicrmw.end61
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 5, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_21:                               ; %atomicrmw.start56
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(10)
	v_add_f32_e32 v3, v4, v15
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_21
; %bb.22:                               ; %atomicrmw.end55
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 6, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_23:                               ; %atomicrmw.start50
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(9)
	v_add_f32_e32 v3, v4, v14
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_23
; %bb.24:                               ; %atomicrmw.end49
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 7, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_25:                               ; %atomicrmw.start44
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(8)
	v_add_f32_e32 v3, v4, v13
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_25
; %bb.26:                               ; %atomicrmw.end43
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_lshl_add_u32 v1, s21, 3, v0
	s_mov_b32 s0, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_co_u32 v1, vcc_lo, s22, v1
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_27:                               ; %atomicrmw.start38
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(7)
	v_add_f32_e32 v3, v4, v12
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_27
; %bb.28:                               ; %atomicrmw.end37
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 9, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_29:                               ; %atomicrmw.start32
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(6)
	v_add_f32_e32 v3, v4, v11
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_29
; %bb.30:                               ; %atomicrmw.end31
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 10, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_31:                               ; %atomicrmw.start26
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(5)
	v_add_f32_e32 v3, v4, v10
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_31
; %bb.32:                               ; %atomicrmw.end25
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 11, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_33:                               ; %atomicrmw.start20
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(4)
	v_add_f32_e32 v3, v4, v9
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_33
; %bb.34:                               ; %atomicrmw.end19
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 12, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_35:                               ; %atomicrmw.start14
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(3)
	v_add_f32_e32 v3, v4, v8
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_35
; %bb.36:                               ; %atomicrmw.end13
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 13, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_37:                               ; %atomicrmw.start8
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(2)
	v_add_f32_e32 v3, v4, v7
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_37
; %bb.38:                               ; %atomicrmw.end7
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[1:2], null, s21, 14, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v2, 31, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_add_co_u32 v1, vcc_lo, s22, v1
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s23, v2, vcc_lo
	global_load_b32 v4, v[1:2], off
.LBB0_39:                               ; %atomicrmw.start2
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(1)
	v_add_f32_e32 v3, v4, v6
	global_atomic_cmpswap_b32 v3, v[1:2], v[3:4], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v3, v4
	v_mov_b32_e32 v4, v3
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_39
; %bb.40:                               ; %atomicrmw.end1
	.loc	1 0 9                           ; generate_amdgcn.py:0:9
	s_or_b32 exec_lo, exec_lo, s0
	.loc	1 192 23                        ; generate_amdgcn.py:192:23
	v_mad_u64_u32 v[0:1], null, s21, 15, v[0:1]
	s_mov_b32 s0, 0
	.loc	1 192 9                         ; generate_amdgcn.py:192:9
	v_ashrrev_i32_e32 v1, 31, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	v_add_co_u32 v0, vcc_lo, s22, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s23, v1, vcc_lo
	global_load_b32 v3, v[0:1], off
.LBB0_41:                               ; %atomicrmw.start
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v2, v3, v5
	global_atomic_cmpswap_b32 v2, v[0:1], v[2:3], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc_lo, v2, v3
	v_mov_b32_e32 v3, v2
	s_or_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_not1_b32 exec_lo, exec_lo, s0
	s_cbranch_execnz .LBB0_41
; %bb.42:                               ; %atomicrmw.end
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk
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
		.amdhsa_next_free_sgpr 32
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
		.amdhsa_inst_pref_size 45
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.num_vgpr, 70
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5636
; TotalNumSgprs: 34
; NumVgprs: 70
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk2_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     70
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
