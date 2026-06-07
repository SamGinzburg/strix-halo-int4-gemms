	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_bfe_u32 v24, v0, 4, 4
	v_and_b32_e32 v17, 15, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v26, 1, v0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v4, v0, 4, 1
	s_load_b64 s[20:21], s[0:1], 0x20
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v27, 0x100, v26
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x1ff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 15
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s15, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s15
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s12, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s16, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s14, s12
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_mul_i32 s19, s19, s18
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_hi_u32 s2, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s2
	s_mul_hi_u32 s2, s14, s18
	s_xor_b32 s18, s12, s16
	s_mul_i32 s19, s2, s17
	s_ashr_i32 s28, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s18, s2, 1
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	s_cselect_b32 s2, s18, s2
	s_cselect_b32 s6, s19, s14
	s_add_i32 s14, s2, 1
	s_cmp_ge_u32 s6, s17
	s_cselect_b32 s6, s14, s2
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s14, s13, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s30, s6, s28
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s2, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s6, s30, s28
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s3, s13, s14
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s14, s6, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s29, s3, 1
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s6, 9
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s6, s12, s14
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mul_lo_u32 v3, s29, v27
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s6, s6, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s6, 4
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s12, s22, s29
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v18, 1, v0
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s6, s3, s29
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s25, s25, 0xffff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[1:2], null, s29, v24, v[17:18]
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_mul_lo_u32 v2, s29, v26
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_add3_u32 v30, s2, s12, v1
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_add_i32 s12, s6, s2
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s13, 34
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v30, vcc_lo
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v25, 3, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v28, v2, v25, s12
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v2, 0x80000000, v28, vcc_lo
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	v_add3_u32 v29, v3, v25, s12
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v3, 0x80000000, v29, vcc_lo
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v35, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[31:32], v2, s[24:27], 0 offen
	buffer_load_b64 v[33:34], v3, s[24:27], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v1, v0, 7, 1
	v_and_b32_e32 v2, 0x7f, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v1, 0x88, v1
	v_xor_b32_e32 v1, v1, v2
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v2, 16, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v22, 0, v1
	v_mov_b32_e32 v1, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_lshlrev_b32_e32 v3, 3, v0
	v_and_b32_e32 v4, 0x88, v4
	v_cmp_eq_u32_e64 s0, 0, v2
	v_dual_mov_b32 v7, v1 :: v_dual_lshlrev_b32 v20, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v6, v1 :: v_dual_and_b32 v5, 0xf78, v3
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_xor_b32_e32 v4, v4, v5
	v_bfe_i32 v5, v0, 3, 1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v12, v1 :: v_dual_add_nc_u32 v23, 0, v4
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v19, 0x88, v5
	v_and_b32_e32 v21, 0xf00, v3
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b8 v22, v35 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v23, v[31:32], v[33:34] offset1:8
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v48, v30, s[4:7], 0 offen offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[40:41], v28, s[24:27], 0 offen offset:16
	buffer_load_b64 v[42:43], v29, s[24:27], 0 offen offset:16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x70, v20
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v16, s19
	v_dual_mov_b32 v10, s13 :: v_dual_mov_b32 v11, s14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_or3_b32 v2, v1, v21, v19
	v_or_b32_e32 v1, v19, v1
	v_dual_mov_b32 v12, s15 :: v_dual_mov_b32 v13, s16
	v_mov_b32_e32 v14, s17
	v_xor_b32_e32 v3, 8, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_xor_b32_e32 v4, 8, v1
	v_add_nc_u32_e32 v28, 0, v2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v29, 0, v1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_dual_mov_b32 v15, s18 :: v_dual_add_nc_u32 v30, 0, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v31, 0, v4
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[32:35], v28 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[44:45], v29 offset:8192
	ds_load_b64 v[46:47], v31 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[36:39], v30 offset1:8
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s29, 15
.Ltmp13:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp15:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s1, s1, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(2)
	ds_store_b8 v22, v48 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v23, v[40:41], v[42:43] offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[32:33], v[44:45], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[34:35], v[44:45], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s1, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[46:47], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[46:47], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	s_lshl_b32 s12, s30, 9
	v_add_nc_u32_e32 v24, s22, v24
	v_or_b32_e32 v27, s12, v27
	v_or_b32_e32 v26, s12, v26
	s_lshl_b32 s12, s28, 9
	s_add_i32 s1, s1, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_subrev_nc_u32_e32 v32, s12, v27
	v_subrev_nc_u32_e32 v26, s12, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[32:33], null, s29, v32, s[2:3]
	v_mad_u64_u32 v[26:27], null, s29, v26, s[2:3]
	v_mad_u64_u32 v[33:34], null, s29, v24, s[2:3]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v24, v26, v25, 32
	v_add3_u32 v25, v32, v25, 32
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v26, v33, v17, 32
	s_set_inst_prefetch_distance 0x1
	.loc	1 0 9 is_stmt 0                 ; :0:9
.Ltmp16:
	.p2align	6
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v27, v26, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_clause 0x1
	buffer_load_b64 v[40:41], v24, s[24:27], 0 offen
	buffer_load_b64 v[42:43], v25, s[24:27], 0 offen
	ds_load_2addr_stride64_b64 v[32:35], v28 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[44:45], v29 offset:8192
	ds_load_b64 v[46:47], v31 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[36:39], v30 offset1:8
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v24, 16, v24
	v_add_nc_u32_e32 v25, 16, v25
	v_add_nc_u32_e32 v26, 16, v26
	s_add_i32 s1, s1, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	s_waitcnt vmcnt(2)
	ds_store_b8 v22, v27 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v23, v[40:41], v[42:43] offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[32:33], v[44:45], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[34:35], v[44:45], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[36:37], v[46:47], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[38:39], v[46:47], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_set_inst_prefetch_distance 0x2
	.loc	1 118 23 is_stmt 1              ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v20, 0x70, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_or3_b32 v21, v20, v21, v19
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_or_b32_e32 v19, v19, v20
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v20, 0, v21
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v23, 0, v19
	v_xad_u32 v24, v19, 8, 0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xad_u32 v25, v21, 8, 0
	ds_load_2addr_stride64_b64 v[19:22], v20 offset1:8
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[27:28], v23 offset:8192
	ds_load_b64 v[29:30], v24 offset:8192
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_stride64_b64 v[23:26], v25 offset1:8
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[27:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[27:28], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[29:30], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v19, s22, v17
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	v_lshlrev_b32_e32 v19, 1, v19
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or_b32_e32 v20, s3, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v23, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v2, 0x5410
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v24, v3
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v3, 0x7632 :: v_dual_lshlrev_b32 v20, 1, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v22, v1
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v25, v4
	v_cvt_f32_i32_e32 v34, v13
	v_cvt_f32_i32_e32 v26, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v5, 0x3276, v3, s0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v27, v6
	v_cvt_f32_i32_e32 v28, v7
	v_cvt_f32_i32_e32 v29, v8
	v_cvt_f32_i32_e32 v35, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v14, v5, 8, v5
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v33, v12
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v12, s23, v17
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v30, v9
	v_cvt_f32_i32_e32 v31, v10
	v_cvt_f32_i32_e32 v32, v11
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s22, s22, s23
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v36, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.h, 0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v44, s22, s3, v12
	s_mov_b32 s1, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s6
	v_mov_b16_e32 v37.h, v17.h
	v_mov_b16_e32 v38.h, v17.h
	v_mov_b16_e32 v39.h, v17.h
	v_mov_b16_e32 v40.h, v17.h
	v_mov_b16_e32 v43.h, v17.h
	v_mov_b16_e32 v45.h, v17.h
	s_mov_b32 s23, s7
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v21, 0x1f0, v0
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_lshlrev_b32_e32 v0, 1, v0
	v_lshlrev_b32_e32 v1, 5, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_add_u32 v4, v21, 2, 0
	v_and_b32_e32 v0, 28, v0
	v_lshl_add_u32 v13, v21, 1, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v0, v4, v1, v0
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v1, 16, v20
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e64 v4, 0x1054, v2, s0
	v_mov_b16_e32 v20.h, v17.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v8, v4, 8, v4
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	ds_load_b128 v[4:7], v13 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v0, v0, v19
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v18, 1, v21
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.h, v17.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v0, v0, v22 :: v_dual_and_b32 v41, 0x540054, v8
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v6, v6, v19
	ds_load_b128 v[8:11], v13 offset:1024
	v_dual_mul_f32 v5, v5, v19 :: v_dual_and_b32 v42, 0x760076, v14
	ds_load_b128 v[12:15], v13 offset:1040
	v_mul_f32_e32 v1, v1, v19
	v_mul_f32_e32 v3, v3, v19
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_lshl_or_b32 v41, v41, 4, v41
	v_lshl_or_b32 v42, v42, 4, v42
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v4, v4, v19
	v_mul_f32_e32 v2, v2, v19
	v_mul_f32_e32 v7, v7, v19
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v3, v3, v25
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_and_b32_e32 v41, 0x5040504, v41
	v_and_b32_e32 v42, 0x7060706, v42
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v4, v4, v26
	v_mul_f32_e32 v2, v2, v24
	v_dual_mul_f32 v6, v6, v28 :: v_dual_mul_f32 v7, v7, v29
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v10, v10, v19
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v1, v1, v23
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v8, v8, v19
	v_mul_f32_e32 v11, v11, v19
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v15, v15, v19 :: v_dual_mul_f32 v10, v10, v32
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_max_f32_e32 v1, 0, v1
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v9, v9, v19
	v_mul_f32_e32 v12, v12, v19
	v_mul_f32_e32 v13, v13, v19
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v5, v5, v27 :: v_dual_mul_f32 v8, v8, v30
	v_dual_mul_f32 v15, v15, v16 :: v_dual_max_f32 v2, 0, v2
	.loc	1 138 19 is_stmt 1              ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v1, v1, v1 :: v_dual_mul_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v12, v12, v34 :: v_dual_mul_f32 v13, v13, v35
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v0, 0, v0 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v8, 0, v8
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v15, 0, v15
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v3, v3, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v17.l, v1.h
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v14, v14, v19 :: v_dual_mul_f32 v11, v11, v33
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v9, v9, v31
	.loc	1 137 19 is_stmt 1              ; generate_amdgcn.py:137:19
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v0, v0, v0
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v5, v5, v5 :: v_dual_mul_f32 v8, v8, v8
	v_dual_mul_f32 v6, v6, v6 :: v_dual_mul_f32 v15, v15, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v16, 1, v17
	v_mov_b16_e32 v17.l, v3.h
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v14, v14, v36 :: v_dual_max_f32 v9, 0, v9
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v7, v7, v7
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_mul_f32_e32 v10, v10, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v21.l, v0.h
	v_and_b32_e32 v25, 1, v17
	v_mov_b16_e32 v17.l, v5.h
	v_mov_b16_e32 v37.l, v2.h
	.loc	1 137 19                        ; generate_amdgcn.py:137:19
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v14, 0, v14
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v9, v9, v9 :: v_dual_mul_f32 v12, v12, v12
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v38.l, v4.h
	v_and_b32_e32 v19, 1, v21
	v_add3_u32 v1, v1, v16, 0x7fff
	v_and_b32_e32 v16, 1, v17
	v_mov_b16_e32 v17.l, v7.h
	v_and_b32_e32 v21, 1, v37
	.loc	1 138 19                        ; generate_amdgcn.py:138:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_mul_f32 v14, v14, v14
	v_dual_mul_f32 v13, v13, v13 :: v_dual_and_b32 v22, 1, v38
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v20.l, v6.h
	v_add3_u32 v0, v0, v19, 0x7fff
	v_and_b32_e32 v19, 1, v17
	v_mov_b16_e32 v17.l, v9.h
	v_add3_u32 v2, v2, v21, 0x7fff
	v_mov_b16_e32 v39.l, v8.h
	v_and_b32_e32 v20, 1, v20
	v_add3_u32 v4, v4, v22, 0x7fff
	v_mov_b16_e32 v1.l, v0.h
	v_and_b32_e32 v0, 1, v17
	v_mov_b16_e32 v17.l, v11.h
	v_add3_u32 v3, v3, v25, 0x7fff
	v_mov_b16_e32 v3.l, v2.h
	v_add3_u32 v2, v5, v16, 0x7fff
	v_and_b32_e32 v23, 1, v39
	v_add3_u32 v6, v6, v20, 0x7fff
	v_mov_b16_e32 v2.l, v4.h
	v_and_b32_e32 v4, 1, v17
	v_mov_b16_e32 v17.l, v13.h
	v_mov_b16_e32 v40.l, v10.h
	v_mov_b16_e32 v43.l, v12.h
	v_mov_b16_e32 v45.l, v14.h
	v_add3_u32 v5, v7, v19, 0x7fff
	v_add3_u32 v8, v8, v23, 0x7fff
	v_mov_b16_e32 v5.l, v6.h
	v_cndmask_b32_e64 v6, v2, v1, s0
	v_cndmask_b32_e64 v1, v1, v2, s0
	v_and_b32_e32 v2, 1, v17
	v_mov_b16_e32 v17.l, v15.h
	v_and_b32_e32 v24, 1, v40
	v_and_b32_e32 v26, 1, v43
	v_and_b32_e32 v27, 1, v45
	v_add3_u32 v7, v9, v0, 0x7fff
	v_mov_b16_e32 v7.l, v8.h
	v_and_b32_e32 v8, 1, v17
	v_add3_u32 v10, v10, v24, 0x7fff
	v_add3_u32 v12, v12, v26, 0x7fff
	v_add3_u32 v14, v14, v27, 0x7fff
	v_add3_u32 v4, v11, v4, 0x7fff
	v_add3_u32 v2, v13, v2, 0x7fff
	v_add3_u32 v8, v15, v8, 0x7fff
	v_mov_b16_e32 v4.l, v10.h
	v_mov_b16_e32 v2.l, v12.h
	v_mov_b16_e32 v8.l, v14.h
	v_cndmask_b32_e64 v0, v3, v5, s0
	v_permlanex16_b32 v1, v1, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v3, v5, v3, s0
	v_cndmask_b32_e64 v9, v7, v2, s0
	v_cndmask_b32_e64 v10, v4, v8, s0
	v_permlanex16_b32 v5, v0, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v6, v41
	v_perm_b32 v1, v1, v6, v42
	v_cndmask_b32_e64 v6, v2, v7, s0
	v_permlanex16_b32 v7, v9, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b32_e64 v8, v8, v4, s0
	v_permlanex16_b32 v9, v10, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v18, v44, v18, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v2, v5, v3, v41
	v_perm_b32 v3, v5, v3, v42
	v_perm_b32 v4, v7, v6, v41
	v_perm_b32 v5, v7, v6, v42
	v_perm_b32 v6, v9, v8, v41
	v_perm_b32 v7, v9, v8, v42
	s_clause 0x1
	buffer_store_b128 v[0:3], v18, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v18, s[20:23], 0 offen offset:512
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp17:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 49
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
		.amdhsa_inst_pref_size 23
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 49
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 2824
; TotalNumSgprs: 33
; NumVgprs: 49
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 6
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 49
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_relu2_bm16_bn512_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     49
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
