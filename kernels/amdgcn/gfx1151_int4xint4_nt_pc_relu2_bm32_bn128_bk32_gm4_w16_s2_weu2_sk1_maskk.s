	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s21, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v9, 15, v0
	v_lshrrev_b32_e32 v13, 4, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v11, 2, v0
	v_bfe_i32 v18, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v18, 0x88, v18
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s14, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
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
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s18, s13, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s13, s13, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s18
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s13
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s14, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s13, s2
	s_abs_i32 s19, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s19
	s_sub_i32 s17, 0, s19
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s16, v1
	s_mul_f32 s16, s16, 0x4f7ffffe
	s_cvt_u32_f32 s16, s16
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s17, s17, s16
	s_mul_hi_u32 s12, s16, s17
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s12, s16, s12
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_mul_hi_u32 s6, s13, s12
	s_xor_b32 s7, s2, s14
	s_mul_i32 s12, s6, s19
	s_ashr_i32 s22, s7, 31
	s_sub_i32 s12, s13, s12
	s_add_i32 s13, s6, 1
	s_sub_i32 s20, s12, s19
	s_cmp_ge_u32 s12, s19
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s13, s13, s6
	s_cselect_b32 s6, s20, s12
	s_add_i32 s12, s13, 1
	s_cmp_ge_u32 s6, s19
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s12, s13
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s13, s21, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s25, s12, s22
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s23, s3, 4
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s21, s13
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s12, s25, s22
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s24, s3, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s3, s12, s14
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v6, s23, v9
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s3
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s14, s12, 7
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s3, s2, s18
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s12, s14, s24
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_gt_i32_e32 vcc_lo, s24, v6
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s3, s3, 5
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s21, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s13, s3, s24
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 s20, -1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshlrev_b32_e32 v4, 2, v0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_and_b32 s17, s17, 0xffff
	v_bfe_i32 v6, v0, 5, 1
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_and_b32_e32 v10, 12, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v19, 0x88, v6
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[1:2], null, s24, v13, v[9:10]
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[2:3], null, s24, v11, v[10:11]
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	v_or_b32_e32 v5, s23, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v22, s23, s13, v1
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_gt_i32_e64 s2, s24, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v12, s23, s12, v2
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v5, v0, 7, 1
	v_cndmask_b32_e32 v1, 0x80000000, v22, vcc_lo
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_and_b32 vcc_lo, s20, s2
	s_cmp_lt_i32 s21, 34
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v2, 0x80000000, v12, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v21, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v23, v2, s[16:19], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v7, 0x17f, v0
	v_and_b32_e32 v8, 0x88, v5
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v17, 0x77c, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v14, 0xe0, v0
	v_mov_b32_e32 v4, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v20, v8, v7
	v_mov_b32_e32 v8, v1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v24, v19, v17
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v15, 0x108, v0
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v16, 4, v0
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_lshlrev_b32_e32 v17, 3, v14
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v19, 0, v20
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v20, 0, v24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v19, v21 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v20, v23
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	v_sub_nc_u32_e32 v21, s24, v9
	.loc	1 107 18                        ; generate_amdgcn.py:107:18
	s_add_i32 s0, s23, 16
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add_nc_u32_e32 v1, 16, v22
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_sub_nc_u32_e32 v22, s24, v10
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s18, s6
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v21
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add_nc_u32_e32 v2, 16, v12
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	s_mov_b32 s19, s7
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s0, v22
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s24, 15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp13:
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v12, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v1, 0x70, v16
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s0, s0, 2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v35, v2, s[16:19], 0 offen
	v_lshl_or_b32 v2, v9, 4, v15
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s0, 2
	v_or3_b32 v1, v1, v17, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_xor_b32_e32 v3, 8, v2
	v_add_nc_u32_e32 v24, 0, v1
	v_xor_b32_e32 v1, 8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v25, 0, v3
	v_add_nc_u32_e32 v26, 0, v1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v23, 0, v2
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v2, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[27:28], v23 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[29:30], v24
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v3, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[31:32], v25 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[33:34], v26
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v19, v12 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v20, v35
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[31:32], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v11, s25, 7, v11
	s_lshl_b32 s1, s22, 7
	v_add_nc_u32_e32 v12, s3, v13
	s_add_i32 s2, s0, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v11, s1, v11
	s_add_i32 s1, s23, 32
	v_mad_u64_u32 v[10:11], null, s24, v11, v[10:11]
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[11:12], null, s24, v12, v[9:10]
	s_set_inst_prefetch_distance 0x1
	.loc	1 0 9 is_stmt 0                 ; :0:9
.Ltmp14:
	.p2align	6
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v12, s1, v11
	.loc	1 108 23                        ; generate_amdgcn.py:108:23
	v_cmp_lt_i32_e64 s0, s1, v21
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v27, s1, v10
	.loc	1 109 23                        ; generate_amdgcn.py:109:23
	v_cmp_lt_i32_e32 vcc_lo, s1, v22
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_add_i32 s2, s2, -1
	s_add_i32 s1, s1, 16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e64 v12, 0x80000000, v12, s0
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s2, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v12, v12, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v35, v27, s[16:19], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[27:28], v23 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[29:30], v24
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[31:32], v25 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[33:34], v26
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v19, v12 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v20, v35
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[27:28], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[31:32], v[1:8] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_set_inst_prefetch_distance 0x2
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, s20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v10, 0x70, v16
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_lshl_or_b32 v11, v9, 4, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or3_b32 v10, v10, v17, v18
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v15, 0, v11
	v_xad_u32 v19, v11, 8, 0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v12, 0, v10
	v_xad_u32 v17, v10, 8, 0
	ds_load_b64 v[10:11], v12
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[15:16], v15 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_b64 v[17:18], v17
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[19:20], v19 offset:2048
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[10:11], v[15:16], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[19:20], v[1:8] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v21, 0x5410 :: v_dual_and_b32 v10, 16, v13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v11, v0, 4, 1
	v_lshrrev_b32_e32 v12, 1, v14
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s1, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 128 22 is_stmt 0              ; generate_amdgcn.py:128:22
	v_or3_b32 v9, v10, v9, s3
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or3_b32 v10, v11, v12, s14
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s0, s8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v22, 0x7632 :: v_dual_lshlrev_b32 v11, 1, v9
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v11, v11, s[0:3], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s1, s11, 0xffff
	s_mov_b32 s0, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.h, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v19, 1, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b16_e32 v23.h, v20.h
	v_mov_b16_e32 v24.h, v20.h
	v_mov_b16_e32 v25.h, v20.h
	v_mov_b16_e32 v26.h, v20.h
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v12, 4, v10
	v_or_b32_e32 v13, 8, v10
	v_or_b32_e32 v14, 12, v10
	v_or_b32_e32 v15, 16, v10
	v_or_b32_e32 v16, 20, v10
	v_or_b32_e32 v17, 24, v10
	v_or_b32_e32 v18, 28, v10
	s_clause 0x7
	buffer_load_u16 v10, v10, s[0:3], 0 offen
	buffer_load_u16 v12, v12, s[0:3], 0 offen
	buffer_load_u16 v13, v13, s[0:3], 0 offen
	buffer_load_u16 v14, v14, s[0:3], 0 offen
	buffer_load_u16 v15, v15, s[0:3], 0 offen
	buffer_load_u16 v16, v16, s[0:3], 0 offen
	buffer_load_u16 v17, v17, s[0:3], 0 offen
	buffer_load_u16 v18, v18, s[0:3], 0 offen
	s_mov_b32 s0, 0x76543210
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v18, 16, v18
	v_lshlrev_b32_e32 v12, 16, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v12, v11, v12 :: v_dual_lshlrev_b32 v15, 16, v15
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v2, v12, v2 :: v_dual_lshlrev_b32 v17, 16, v17
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v10, 16, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v15, v11, v15 :: v_dual_and_b32 v0, 16, v0
	v_mul_f32_e32 v17, v11, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v10, v11, v10 :: v_dual_lshlrev_b32 v13, 16, v13
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v5, v15, v5 :: v_dual_lshlrev_b32 v14, 16, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v7, v17, v7
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v13, v11, v13 :: v_dual_lshlrev_b32 v16, 16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v1, v10, v1 :: v_dual_mul_f32 v14, v11, v14
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_max_f32_e32 v7, 0, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v3, v13, v3 :: v_dual_mul_f32 v16, v11, v16
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v1, 0, v1 :: v_dual_mul_f32 v4, v14, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v6, v16, v6 :: v_dual_mul_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_max_f32_e32 v4, 0, v4
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v11, v11, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v6, 0, v6 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v23.l, v2.h
	v_mov_b16_e32 v20.l, v1.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v8, v11, v8 :: v_dual_max_f32 v5, 0, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v13, 1, v23
	v_mov_b16_e32 v24.l, v3.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v2, v2, v13, 0x7fff
	v_and_b32_e32 v10, 1, v20
	v_mov_b16_e32 v20.l, v4.h
	v_and_b32_e32 v0, 1, v24
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v6, v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v25.l, v5.h
	v_add3_u32 v1, v1, v10, 0x7fff
	v_and_b32_e32 v11, 1, v20
	v_add3_u32 v0, v3, v0, 0x7fff
	v_mov_b16_e32 v20.l, v6.h
	v_mov_b16_e32 v26.l, v7.h
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v4, v4, v11, 0x7fff
	v_mov_b16_e32 v4.l, v0.h
	v_and_b32_e32 v12, 1, v25
	v_and_b32_e32 v10, 1, v20
	v_mov_b16_e32 v2.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v5, v12, 0x7fff
	v_add3_u32 v1, v6, v10, 0x7fff
	v_cndmask_b32_e32 v10, 0x1054, v21, vcc_lo
	v_cndmask_b32_e32 v12, 0x3276, v22, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v1.l, v5.h
	v_and_b32_e32 v5, 1, v26
	v_mov_b16_e32 v20.l, v8.h
	v_cndmask_b32_e32 v6, v1, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v3, v7, v5, 0x7fff
	v_and_b32_e32 v5, 1, v20
	v_lshl_or_b32 v7, v10, 8, v10
	v_lshl_or_b32 v10, v12, 8, v12
	v_cndmask_b32_e32 v1, v2, v1, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v0, v8, v5, 0x7fff
	v_mov_b16_e32 v0.l, v3.h
	v_and_b32_e32 v5, 0x540054, v7
	v_and_b32_e32 v7, 0x760076, v10
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v8, v9, s15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s15, s3
	v_lshl_or_b32 v2, v5, 4, v5
	v_lshl_or_b32 v3, v7, 4, v7
	v_cndmask_b32_e32 v5, v4, v0, vcc_lo
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v7, 0x78, v19, s14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_mov_b32 s14, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v1, v6, v2
	v_perm_b32 v1, v1, v6, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v5, v4, v2
	v_perm_b32 v3, v5, v4, v3
	v_add_lshl_u32 v4, v7, v8, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp15:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 36
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
		.amdhsa_inst_pref_size 19
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 36
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 26
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2312
; TotalNumSgprs: 28
; NumVgprs: 36
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 28
; NumVGPRsForWavesPerEU: 36
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm32_bn128_bk32_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     36
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
