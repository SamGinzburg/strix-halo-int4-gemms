	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
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
	v_lshlrev_b32_e32 v10, 2, v0
	v_bfe_u32 v73, v0, 4, 4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v74, 2, v0
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_bfe_i32 v11, v0, 7, 1
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_bfe_i32 v12, v0, 5, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v14, 0x88, v11
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v16, 0x88, v12
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
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
	s_lshr_b32 s5, s5, 25
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
	s_ashr_i32 s4, s4, 7
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
	s_load_b256 s[4:11], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s18, v1
	s_mul_f32 s18, s18, 0x4f7ffffe
	s_cvt_u32_f32 s18, s18
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	s_xor_b32 s7, s2, s16
	s_mul_i32 s19, s19, s18
	s_ashr_i32 s28, s7, 31
	s_mul_hi_u32 s12, s18, s19
	s_mov_b32 s7, 0x31027000
	s_add_i32 s18, s18, s12
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s27, s7
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
	s_xor_b32 s30, s12, s28
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s13, s14
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s14, s30, s28
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s29, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s14, s16
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s12, s2, s15
	.loc	1 107 23 is_stmt 1              ; generate_amdgcn.py:107:23
	s_lshl_b32 s2, s3, 4
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s22, s12, 4
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s3, s14, 7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s13, 1
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	s_mul_i32 s12, s22, s29
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v65, 15, v0
	v_and_b32_e32 v66, 12, v10
	.loc	1 115 30                        ; generate_amdgcn.py:115:30
	s_mul_i32 s14, s3, s29
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_and_b32 s25, s25, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s13, 34
	.loc	1 113 30                        ; generate_amdgcn.py:113:30
	v_mad_u64_u32 v[1:2], null, s29, v73, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v72, s2, s12, v1
	s_mov_b32 s12, 0
	.loc	1 113 22 is_stmt 0              ; generate_amdgcn.py:113:22
	v_cndmask_b32_e32 v1, 0x80000000, v72, vcc_lo
	.loc	1 115 30 is_stmt 1              ; generate_amdgcn.py:115:30
	v_mad_u64_u32 v[2:3], null, s29, v74, v[66:67]
	v_bfe_i32 v67, v0, 3, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v71, s2, s14, v2
	.loc	1 115 22 is_stmt 0              ; generate_amdgcn.py:115:22
	v_cndmask_b32_e32 v2, 0x80000000, v71, vcc_lo
	.loc	1 113 22 is_stmt 1              ; generate_amdgcn.py:113:22
	buffer_load_u8 v75, v1, s[4:7], 0 offen
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v76, v2, s[24:27], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v13, 0x7f, v0
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_and_b32_e32 v15, 0x77c, v10
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v1 :: v_dual_lshlrev_b32 v68, 4, v0
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v2, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_xor_b32_e32 v69, v14, v13
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_xor_b32_e32 v16, v16, v15
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_add_nc_u32_e32 v69, 0, v69
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v70, 0, v16
	v_mov_b32_e32 v16, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v69, v75 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v70, v76
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v95, v72, s[4:7], 0 offen offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v96, v71, s[24:27], 0 offen offset:16
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_and_b32_e32 v1, 0x70, v68
	v_dual_mov_b32 v9, s12 :: v_dual_mov_b32 v14, s17
	v_mov_b32_e32 v10, s13
	v_mov_b32_e32 v12, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_and_or_b32 v1, 0x88, v67, v1
	v_mov_b32_e32 v11, s14
	v_dual_mov_b32 v13, s16 :: v_dual_mov_b32 v16, s19
	v_mov_b32_e32 v15, s18
	v_add_nc_u32_e32 v71, 0, v1
	v_xor_b32_e32 v2, 8, v1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[91:92], v71 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[23:26], v71 offset1:32
	v_add_nc_u32_e32 v72, 0, v2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[93:94], v72 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[39:42], v71 offset0:64 offset1:96
	ds_load_2addr_b64 v[55:58], v71 offset0:128 offset1:160
	ds_load_2addr_b64 v[33:36], v72 offset1:32
	ds_load_2addr_b64 v[75:78], v72 offset0:64 offset1:96
	ds_load_2addr_b64 v[79:82], v71 offset0:192 offset1:224
	ds_load_2addr_b64 v[83:86], v72 offset0:128 offset1:160
	ds_load_2addr_b64 v[87:90], v72 offset0:192 offset1:224
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s0, s29, 15
.Ltmp13:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s0, s0, 4
.Ltmp15:
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_max_u32 s0, s0, 2
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v69, v95 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v70, v96
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[39:40], v[91:92], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[93:94], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[55:56], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[79:80], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[81:82], v[91:92], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[75:76], v[93:94], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[77:78], v[93:94], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[93:94], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[93:94], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[93:94], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[89:90], v[93:94], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_eq_u32 s0, 2
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_lshl_or_b32 v74, s30, 7, v74
	s_lshl_b32 s1, s28, 7
	v_add_nc_u32_e32 v75, s22, v73
	s_add_i32 s0, s0, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v74, s1, v74
	v_mad_u64_u32 v[73:74], null, s29, v74, s[2:3]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[74:75], null, s29, v75, s[2:3]
	v_add3_u32 v66, v73, v66, 32
	s_delay_alu instid0(VALU_DEP_2)
	v_add3_u32 v73, v74, v65, 32
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	buffer_load_u8 v110, v73, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	buffer_load_b32 v111, v66, s[24:27], 0 offen
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[106:107], v71 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[74:77], v71 offset1:32
	ds_load_2addr_b64 v[78:81], v71 offset0:64 offset1:96
	ds_load_2addr_b64 v[82:85], v71 offset0:128 offset1:160
	ds_load_2addr_b64 v[86:89], v71 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[108:109], v72 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[90:93], v72 offset1:32
	ds_load_2addr_b64 v[94:97], v72 offset0:64 offset1:96
	ds_load_2addr_b64 v[98:101], v72 offset0:128 offset1:160
	ds_load_2addr_b64 v[102:105], v72 offset0:192 offset1:224
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v66, 16, v66
	v_add_nc_u32_e32 v73, 16, v73
	s_add_i32 s0, s0, -1
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_waitcnt lgkmcnt(0)
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s0, 0
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v69, v110 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v70, v111
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[74:75], v[106:107], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[106:107], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[106:107], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[80:81], v[106:107], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[82:83], v[106:107], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[84:85], v[106:107], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[86:87], v[106:107], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[88:89], v[106:107], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[90:91], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[92:93], v[108:109], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[94:95], v[108:109], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[108:109], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[108:109], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[100:101], v[108:109], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[102:103], v[108:109], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[104:105], v[108:109], v[9:16] neg_lo:[1,1,0]
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
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	v_and_b32_e32 v66, 0x70, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_or_b32 v70, 0x88, v67, v66
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	v_add_nc_u32_e32 v78, 0, v70
	v_xad_u32 v94, v70, 8, 0
	ds_load_2addr_b64 v[66:69], v78 offset1:32
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[98:99], v78 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[70:73], v78 offset0:64 offset1:96
	ds_load_2addr_b64 v[74:77], v78 offset0:128 offset1:160
	ds_load_2addr_b64 v[78:81], v78 offset0:192 offset1:224
	.loc	1 113 22                        ; generate_amdgcn.py:113:22
	ds_load_b64 v[100:101], v94 offset:2048
	.loc	1 115 22                        ; generate_amdgcn.py:115:22
	ds_load_2addr_b64 v[82:85], v94 offset1:32
	ds_load_2addr_b64 v[86:89], v94 offset0:64 offset1:96
	ds_load_2addr_b64 v[90:93], v94 offset0:128 offset1:160
	ds_load_2addr_b64 v[94:97], v94 offset0:192 offset1:224
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_waitcnt lgkmcnt(8)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[66:67], v[98:99], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[98:99], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[70:71], v[98:99], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[72:73], v[98:99], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[74:75], v[98:99], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[98:99], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[98:99], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[80:81], v[98:99], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[82:83], v[100:101], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[84:85], v[100:101], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[86:87], v[100:101], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[88:89], v[100:101], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[90:91], v[100:101], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[92:93], v[100:101], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[94:95], v[100:101], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[96:97], v[100:101], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v67, s22, v65
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v2, v2
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_lshlrev_b32_e32 v67, 1, v67
	s_mov_b32 s4, s8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v66, 4, v0
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v1, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	buffer_load_u16 v67, v67, s[4:7], 0 offen
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s5, s11, 0xffff
	.loc	1 129 22 is_stmt 0              ; generate_amdgcn.py:129:22
	v_and_or_b32 v66, v66, 1, s3
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_mov_b32 s4, s10
	.loc	1 127 15 is_stmt 1              ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v63, v63
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v14, v14
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	s_mul_i32 s22, s22, s23
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	.loc	1 128 14 is_stmt 1              ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v67, 16, v67
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v66, 1, v66
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 129 14 is_stmt 0              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v68, 4, v66
	v_or_b32_e32 v69, 8, v66
	v_or_b32_e32 v70, 12, v66
	v_or_b32_e32 v71, 16, v66
	v_or_b32_e32 v72, 20, v66
	v_or_b32_e32 v73, 24, v66
	v_or_b32_e32 v99, 28, v66
	s_clause 0x7
	buffer_load_u16 v68, v68, s[4:7], 0 offen
	buffer_load_u16 v69, v69, s[4:7], 0 offen
	buffer_load_u16 v70, v70, s[4:7], 0 offen
	buffer_load_u16 v71, v71, s[4:7], 0 offen
	buffer_load_u16 v72, v72, s[4:7], 0 offen
	buffer_load_u16 v73, v73, s[4:7], 0 offen
	buffer_load_u16 v99, v99, s[4:7], 0 offen
	buffer_load_u16 v100, v66, s[4:7], 0 offen
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v99, 16, v99
	v_lshlrev_b32_e32 v70, 16, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 130 16 is_stmt 1              ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v70, v67, v70 :: v_dual_lshlrev_b32 v73, 16, v73
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v4, v70, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v73, v67, v73 :: v_dual_lshlrev_b32 v68, 16, v68
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v71, 16, v71
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s2, v4, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v68, v67, v68
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v71, v67, v71 :: v_dual_lshlrev_b32 v100, 16, v100
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v69, 16, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v7, v73, v7 :: v_dual_mul_f32 v68, v68, v2
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v100, v67, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v5, v71, v5
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v69, v67, v69
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_or_b32_e32 v124, 0xe0, v66
	v_or_b32_e32 v125, 0xe4, v66
	v_or_b32_e32 v126, 0xe8, v66
	v_or_b32_e32 v127, 0xec, v66
	v_or_b32_e32 v74, 32, v66
	v_or_b32_e32 v75, 36, v66
	v_or_b32_e32 v76, 40, v66
	v_or_b32_e32 v77, 44, v66
	v_or_b32_e32 v78, 48, v66
	v_or_b32_e32 v79, 52, v66
	v_or_b32_e32 v80, 56, v66
	v_or_b32_e32 v81, 60, v66
	v_or_b32_e32 v82, 64, v66
	v_or_b32_e32 v83, 0x44, v66
	v_or_b32_e32 v84, 0x48, v66
	v_or_b32_e32 v85, 0x4c, v66
	v_or_b32_e32 v86, 0x50, v66
	v_or_b32_e32 v87, 0x54, v66
	v_or_b32_e32 v88, 0x58, v66
	v_or_b32_e32 v89, 0x5c, v66
	v_or_b32_e32 v90, 0x60, v66
	v_or_b32_e32 v91, 0x64, v66
	v_or_b32_e32 v92, 0x68, v66
	v_or_b32_e32 v93, 0x6c, v66
	v_or_b32_e32 v94, 0x70, v66
	v_or_b32_e32 v95, 0x74, v66
	v_or_b32_e32 v96, 0x78, v66
	v_or_b32_e32 v97, 0x7c, v66
	v_or_b32_e32 v98, 0x80, v66
	v_or_b32_e32 v101, 0x84, v66
	v_or_b32_e32 v102, 0x88, v66
	v_or_b32_e32 v103, 0x8c, v66
	v_or_b32_e32 v104, 0x90, v66
	v_or_b32_e32 v105, 0x94, v66
	v_or_b32_e32 v106, 0x98, v66
	v_or_b32_e32 v107, 0x9c, v66
	v_or_b32_e32 v108, 0xa0, v66
	v_or_b32_e32 v109, 0xa4, v66
	v_or_b32_e32 v110, 0xa8, v66
	v_or_b32_e32 v111, 0xac, v66
	v_or_b32_e32 v112, 0xb0, v66
	v_or_b32_e32 v113, 0xb4, v66
	v_or_b32_e32 v114, 0xb8, v66
	v_or_b32_e32 v115, 0xbc, v66
	v_or_b32_e32 v116, 0xc0, v66
	v_or_b32_e32 v117, 0xc4, v66
	v_or_b32_e32 v118, 0xc8, v66
	v_or_b32_e32 v119, 0xcc, v66
	v_or_b32_e32 v120, 0xd0, v66
	v_or_b32_e32 v121, 0xd4, v66
	v_or_b32_e32 v122, 0xd8, v66
	v_or_b32_e32 v123, 0xdc, v66
	v_or_b32_e32 v128, 0xf0, v66
	v_or_b32_e32 v129, 0xf4, v66
	v_or_b32_e32 v130, 0xf8, v66
	v_or_b32_e32 v66, 0xfc, v66
	s_clause 0x1f
	buffer_load_u16 v124, v124, s[4:7], 0 offen
	buffer_load_u16 v125, v125, s[4:7], 0 offen
	buffer_load_u16 v126, v126, s[4:7], 0 offen
	buffer_load_u16 v127, v127, s[4:7], 0 offen
	buffer_load_u16 v128, v128, s[4:7], 0 offen
	buffer_load_u16 v129, v129, s[4:7], 0 offen
	buffer_load_u16 v130, v130, s[4:7], 0 offen
	buffer_load_u16 v66, v66, s[4:7], 0 offen
	buffer_load_u16 v116, v116, s[4:7], 0 offen
	buffer_load_u16 v117, v117, s[4:7], 0 offen
	buffer_load_u16 v118, v118, s[4:7], 0 offen
	buffer_load_u16 v119, v119, s[4:7], 0 offen
	buffer_load_u16 v120, v120, s[4:7], 0 offen
	buffer_load_u16 v121, v121, s[4:7], 0 offen
	buffer_load_u16 v122, v122, s[4:7], 0 offen
	buffer_load_u16 v123, v123, s[4:7], 0 offen
	buffer_load_u16 v108, v108, s[4:7], 0 offen
	buffer_load_u16 v109, v109, s[4:7], 0 offen
	buffer_load_u16 v110, v110, s[4:7], 0 offen
	buffer_load_u16 v111, v111, s[4:7], 0 offen
	buffer_load_u16 v112, v112, s[4:7], 0 offen
	buffer_load_u16 v113, v113, s[4:7], 0 offen
	buffer_load_u16 v114, v114, s[4:7], 0 offen
	buffer_load_u16 v115, v115, s[4:7], 0 offen
	buffer_load_u16 v98, v98, s[4:7], 0 offen
	buffer_load_u16 v101, v101, s[4:7], 0 offen
	buffer_load_u16 v102, v102, s[4:7], 0 offen
	buffer_load_u16 v103, v103, s[4:7], 0 offen
	buffer_load_u16 v104, v104, s[4:7], 0 offen
	buffer_load_u16 v105, v105, s[4:7], 0 offen
	buffer_load_u16 v106, v106, s[4:7], 0 offen
	buffer_load_u16 v107, v107, s[4:7], 0 offen
	s_clause 0x17
	buffer_load_u16 v90, v90, s[4:7], 0 offen
	buffer_load_u16 v91, v91, s[4:7], 0 offen
	buffer_load_u16 v92, v92, s[4:7], 0 offen
	buffer_load_u16 v93, v93, s[4:7], 0 offen
	buffer_load_u16 v94, v94, s[4:7], 0 offen
	buffer_load_u16 v95, v95, s[4:7], 0 offen
	buffer_load_u16 v96, v96, s[4:7], 0 offen
	buffer_load_u16 v97, v97, s[4:7], 0 offen
	buffer_load_u16 v82, v82, s[4:7], 0 offen
	buffer_load_u16 v83, v83, s[4:7], 0 offen
	buffer_load_u16 v84, v84, s[4:7], 0 offen
	buffer_load_u16 v85, v85, s[4:7], 0 offen
	buffer_load_u16 v86, v86, s[4:7], 0 offen
	buffer_load_u16 v87, v87, s[4:7], 0 offen
	buffer_load_u16 v88, v88, s[4:7], 0 offen
	buffer_load_u16 v89, v89, s[4:7], 0 offen
	buffer_load_u16 v74, v74, s[4:7], 0 offen
	buffer_load_u16 v75, v75, s[4:7], 0 offen
	buffer_load_u16 v76, v76, s[4:7], 0 offen
	buffer_load_u16 v77, v77, s[4:7], 0 offen
	buffer_load_u16 v78, v78, s[4:7], 0 offen
	buffer_load_u16 v79, v79, s[4:7], 0 offen
	buffer_load_u16 v80, v80, s[4:7], 0 offen
	buffer_load_u16 v81, v81, s[4:7], 0 offen
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v69, v69, v3
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v2, s23, v65
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s0, v68, v68
	s_mov_b32 s23, s7
	.loc	1 99 32 is_stmt 1               ; generate_amdgcn.py:99:32
	v_and_b32_e32 v3, 16, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v70, v69, 16, 1
	v_cmp_o_f32_e64 s1, v69, v69
	v_and_b32_e32 v0, 0x1e0, v0
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add3_u32 v2, s22, s3, v2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s22, s6
	v_cmp_eq_u32_e64 s3, 0, v3
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	s_waitcnt vmcnt(51)
	v_lshlrev_b32_e32 v128, 16, v128
	s_waitcnt vmcnt(50)
	v_lshlrev_b32_e32 v129, 16, v129
	s_waitcnt vmcnt(49)
	v_lshlrev_b32_e32 v130, 16, v130
	s_waitcnt vmcnt(48)
	v_lshlrev_b32_e32 v66, 16, v66
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v128, v67, v128
	v_dual_mul_f32 v129, v67, v129 :: v_dual_lshlrev_b32 v126, 16, v126
	v_dual_mul_f32 v130, v67, v130 :: v_dual_lshlrev_b32 v127, 16, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v13, v128, v13 :: v_dual_mul_f32 v126, v67, v126
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v127, v67, v127 :: v_dual_lshlrev_b32 v124, 16, v124
	.loc	1 129 14 is_stmt 1              ; generate_amdgcn.py:129:14
	v_lshlrev_b32_e32 v125, 16, v125
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v15, v130, v15
	v_dual_mul_f32 v11, v126, v11 :: v_dual_mul_f32 v124, v67, v124
	.loc	1 130 16 is_stmt 0              ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(41)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v125, v67, v125 :: v_dual_lshlrev_b32 v122, 16, v122
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(40)
	v_dual_mul_f32 v12, v127, v12 :: v_dual_lshlrev_b32 v123, 16, v123
	v_dual_mul_f32 v9, v124, v9 :: v_dual_mul_f32 v122, v67, v122
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v123, v67, v123 :: v_dual_lshlrev_b32 v120, 16, v120
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v10, v125, v10 :: v_dual_lshlrev_b32 v121, 16, v121
	v_dual_mul_f32 v63, v122, v63 :: v_dual_mul_f32 v120, v67, v120
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v121, v67, v121 :: v_dual_lshlrev_b32 v118, 16, v118
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v64, v123, v64 :: v_dual_lshlrev_b32 v119, 16, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v61, v120, v61 :: v_dual_mul_f32 v118, v67, v118
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v119, v67, v119 :: v_dual_lshlrev_b32 v116, 16, v116
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v62, v121, v62 :: v_dual_lshlrev_b32 v117, 16, v117
	v_dual_mul_f32 v59, v118, v59 :: v_dual_mul_f32 v116, v67, v116
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(33)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v117, v67, v117 :: v_dual_lshlrev_b32 v114, 16, v114
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(32)
	v_dual_mul_f32 v60, v119, v60 :: v_dual_lshlrev_b32 v115, 16, v115
	v_dual_mul_f32 v57, v116, v57 :: v_dual_mul_f32 v114, v67, v114
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v115, v67, v115 :: v_dual_lshlrev_b32 v112, 16, v112
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v58, v117, v58 :: v_dual_lshlrev_b32 v113, 16, v113
	v_dual_mul_f32 v55, v114, v55 :: v_dual_mul_f32 v112, v67, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v113, v67, v113 :: v_dual_lshlrev_b32 v110, 16, v110
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v56, v115, v56 :: v_dual_lshlrev_b32 v111, 16, v111
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v53, v112, v53 :: v_dual_mul_f32 v110, v67, v110
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v111, v67, v111 :: v_dual_lshlrev_b32 v108, 16, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v54, v113, v54 :: v_dual_lshlrev_b32 v109, 16, v109
	v_dual_mul_f32 v51, v110, v51 :: v_dual_mul_f32 v108, v67, v108
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(25)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v109, v67, v109 :: v_dual_lshlrev_b32 v106, 16, v106
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(24)
	v_dual_mul_f32 v52, v111, v52 :: v_dual_lshlrev_b32 v107, 16, v107
	v_dual_mul_f32 v49, v108, v49 :: v_dual_mul_f32 v106, v67, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v107, v67, v107 :: v_dual_lshlrev_b32 v104, 16, v104
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v50, v109, v50 :: v_dual_lshlrev_b32 v105, 16, v105
	v_dual_mul_f32 v47, v106, v47 :: v_dual_mul_f32 v104, v67, v104
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v105, v67, v105 :: v_dual_lshlrev_b32 v102, 16, v102
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v48, v107, v48 :: v_dual_lshlrev_b32 v103, 16, v103
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v45, v104, v45 :: v_dual_mul_f32 v102, v67, v102
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v103, v67, v103 :: v_dual_lshlrev_b32 v98, 16, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v46, v105, v46 :: v_dual_lshlrev_b32 v101, 16, v101
	v_dual_mul_f32 v43, v102, v43 :: v_dual_mul_f32 v98, v67, v98
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(17)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v101, v67, v101 :: v_dual_lshlrev_b32 v96, 16, v96
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(16)
	v_dual_mul_f32 v44, v103, v44 :: v_dual_lshlrev_b32 v97, 16, v97
	v_dual_mul_f32 v41, v98, v41 :: v_dual_mul_f32 v96, v67, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v97, v67, v97 :: v_dual_lshlrev_b32 v94, 16, v94
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v42, v101, v42 :: v_dual_lshlrev_b32 v95, 16, v95
	v_dual_mul_f32 v39, v96, v39 :: v_dual_mul_f32 v94, v67, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v95, v67, v95 :: v_dual_lshlrev_b32 v92, 16, v92
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v40, v97, v40 :: v_dual_lshlrev_b32 v93, 16, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v37, v94, v37 :: v_dual_mul_f32 v92, v67, v92
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v93, v67, v93 :: v_dual_lshlrev_b32 v90, 16, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v38, v95, v38 :: v_dual_lshlrev_b32 v91, 16, v91
	v_dual_mul_f32 v35, v92, v35 :: v_dual_mul_f32 v90, v67, v90
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(9)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v67, v91 :: v_dual_lshlrev_b32 v88, 16, v88
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(8)
	v_dual_mul_f32 v36, v93, v36 :: v_dual_lshlrev_b32 v89, 16, v89
	v_dual_mul_f32 v33, v90, v33 :: v_dual_mul_f32 v88, v67, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v89, v67, v89 :: v_dual_lshlrev_b32 v86, 16, v86
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v34, v91, v34 :: v_dual_lshlrev_b32 v87, 16, v87
	v_dual_mul_f32 v31, v88, v31 :: v_dual_mul_f32 v86, v67, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v87, v67, v87 :: v_dual_lshlrev_b32 v84, 16, v84
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v32, v89, v32 :: v_dual_lshlrev_b32 v85, 16, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v29, v86, v29 :: v_dual_mul_f32 v84, v67, v84
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v85, v67, v85 :: v_dual_lshlrev_b32 v82, 16, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v30, v87, v30 :: v_dual_lshlrev_b32 v83, 16, v83
	v_dual_mul_f32 v27, v84, v27 :: v_dual_mul_f32 v82, v67, v82
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v83, v67, v83 :: v_dual_lshlrev_b32 v80, 16, v80
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v28, v85, v28 :: v_dual_lshlrev_b32 v81, 16, v81
	v_dual_mul_f32 v25, v82, v25 :: v_dual_mul_f32 v80, v67, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v81, v67, v81 :: v_dual_lshlrev_b32 v78, 16, v78
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v26, v83, v26 :: v_dual_lshlrev_b32 v79, 16, v79
	v_dual_mul_f32 v23, v80, v23 :: v_dual_mul_f32 v78, v67, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v79, v67, v79 :: v_dual_lshlrev_b32 v76, 16, v76
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v24, v81, v24 :: v_dual_lshlrev_b32 v77, 16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v21, v78, v21 :: v_dual_mul_f32 v76, v67, v76
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v77, v67, v77 :: v_dual_lshlrev_b32 v74, 16, v74
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v22, v79, v22 :: v_dual_lshlrev_b32 v75, 16, v75
	v_dual_mul_f32 v19, v76, v19 :: v_dual_mul_f32 v74, v67, v74
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_dual_mul_f32 v75, v67, v75 :: v_dual_lshlrev_b32 v72, 16, v72
	v_mul_f32_e32 v66, v67, v66
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v20, v77, v20 :: v_dual_mul_f32 v17, v74, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v72, v67, v72
	v_mul_f32_e32 v99, v67, v99
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v67, v100, v1 :: v_dual_mul_f32 v16, v66, v16
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_bfe_u32 v66, v68, 16, 1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v6, v72, v6
	v_mul_f32_e32 v8, v99, v8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v65, v67, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v67, v67
	v_add3_u32 v66, v68, v66, 0x7fff
	v_add3_u32 v68, v69, v70, 0x7fff
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v18, v75, v18
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v65, v67, v65, 0x7fff
	v_bfe_u32 v67, v4, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v14, v129, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v66.l, 0x7fff, v68.h, s1
	v_bfe_u32 v68, v7, 16, 1
	v_cmp_o_f32_e64 s1, v7, v7
	v_add3_u32 v67, v4, v67, 0x7fff
	v_cndmask_b16 v4.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v5, 16, 1
	v_cndmask_b16 v4.h, 0x7fff, v66.h, s0
	v_cmp_o_f32_e32 vcc_lo, v5, v5
	v_cndmask_b16 v66.h, 0x7fff, v67.h, s2
	v_bfe_u32 v67, v6, 16, 1
	v_add3_u32 v65, v5, v65, 0x7fff
	v_bfe_u32 v5, v8, 16, 1
	v_cmp_o_f32_e64 s0, v6, v6
	v_cmp_o_f32_e64 s2, v8, v8
	v_add3_u32 v67, v6, v67, 0x7fff
	v_add3_u32 v6, v7, v68, 0x7fff
	v_add3_u32 v5, v8, v5, 0x7fff
	v_bfe_u32 v8, v17, 16, 1
	v_cndmask_b16 v7.l, 0x7fff, v65.h, vcc_lo
	v_bfe_u32 v65, v19, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v6.h, s1
	v_bfe_u32 v6, v18, 16, 1
	v_add3_u32 v8, v17, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_bfe_u32 v17, v20, 16, 1
	v_cndmask_b16 v7.h, 0x7fff, v67.h, s0
	v_add3_u32 v6, v18, v6, 0x7fff
	v_cmp_o_f32_e64 s0, v18, v18
	v_add3_u32 v18, v19, v65, 0x7fff
	v_cmp_o_f32_e64 s1, v19, v19
	v_add3_u32 v17, v20, v17, 0x7fff
	v_cndmask_b16 v5.h, 0x7fff, v5.h, s2
	v_cmp_o_f32_e64 s2, v20, v20
	v_cndmask_b16 v6.l, 0x7fff, v8.h, vcc_lo
	v_bfe_u32 v8, v21, 16, 1
	v_cndmask_b16 v17.l, 0x7fff, v18.h, s1
	v_bfe_u32 v18, v22, 16, 1
	v_bfe_u32 v20, v24, 16, 1
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v6.h, 0x7fff, v6.h, s0
	v_cndmask_b16 v17.h, 0x7fff, v17.h, s2
	v_add3_u32 v8, v21, v8, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v18, v22, v18, 0x7fff
	v_cmp_o_f32_e64 s0, v22, v22
	v_add3_u32 v20, v24, v20, 0x7fff
	v_cmp_o_f32_e64 s2, v24, v24
	v_bfe_u32 v21, v25, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s1, v23, v23
	v_cndmask_b16 v8.l, 0x7fff, v8.h, vcc_lo
	v_cndmask_b16 v8.h, 0x7fff, v18.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v20.h, s2
	v_add3_u32 v20, v25, v21, 0x7fff
	v_bfe_u32 v21, v27, 16, 1
	v_bfe_u32 v22, v28, 16, 1
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s1
	v_bfe_u32 v19, v26, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v21, v27, v21, 0x7fff
	v_cmp_o_f32_e64 s1, v27, v27
	v_add3_u32 v22, v28, v22, 0x7fff
	v_cmp_o_f32_e64 s2, v28, v28
	v_add3_u32 v19, v26, v19, 0x7fff
	v_cmp_o_f32_e64 s0, v26, v26
	v_cndmask_b16 v19.l, 0x7fff, v20.h, vcc_lo
	v_bfe_u32 v20, v29, 16, 1
	v_cndmask_b16 v21.l, 0x7fff, v21.h, s1
	v_cndmask_b16 v21.h, 0x7fff, v22.h, s2
	v_bfe_u32 v22, v30, 16, 1
	v_bfe_u32 v24, v32, 16, 1
	v_bfe_u32 v23, v31, 16, 1
	v_cndmask_b16 v19.h, 0x7fff, v19.h, s0
	v_add3_u32 v20, v29, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_add3_u32 v22, v30, v22, 0x7fff
	v_cmp_o_f32_e64 s0, v30, v30
	v_add3_u32 v24, v32, v24, 0x7fff
	v_cmp_o_f32_e64 s2, v32, v32
	v_bfe_u32 v25, v33, 16, 1
	v_add3_u32 v23, v31, v23, 0x7fff
	v_cmp_o_f32_e64 s1, v31, v31
	v_cndmask_b16 v20.l, 0x7fff, v20.h, vcc_lo
	v_cndmask_b16 v20.h, 0x7fff, v22.h, s0
	v_cndmask_b16 v22.h, 0x7fff, v24.h, s2
	v_add3_u32 v24, v33, v25, 0x7fff
	v_bfe_u32 v25, v35, 16, 1
	v_bfe_u32 v26, v36, 16, 1
	v_cndmask_b16 v22.l, 0x7fff, v23.h, s1
	v_bfe_u32 v23, v34, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v33, v33
	v_add3_u32 v25, v35, v25, 0x7fff
	v_cmp_o_f32_e64 s1, v35, v35
	v_add3_u32 v26, v36, v26, 0x7fff
	v_cmp_o_f32_e64 s2, v36, v36
	v_add3_u32 v23, v34, v23, 0x7fff
	v_cmp_o_f32_e64 s0, v34, v34
	v_cndmask_b16 v23.l, 0x7fff, v24.h, vcc_lo
	v_bfe_u32 v24, v37, 16, 1
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s1
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s2
	v_bfe_u32 v26, v38, 16, 1
	v_bfe_u32 v28, v40, 16, 1
	v_bfe_u32 v27, v39, 16, 1
	v_cndmask_b16 v23.h, 0x7fff, v23.h, s0
	v_add3_u32 v24, v37, v24, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v37, v37
	v_add3_u32 v26, v38, v26, 0x7fff
	v_cmp_o_f32_e64 s0, v38, v38
	v_add3_u32 v28, v40, v28, 0x7fff
	v_cmp_o_f32_e64 s2, v40, v40
	v_bfe_u32 v29, v41, 16, 1
	v_add3_u32 v27, v39, v27, 0x7fff
	v_cmp_o_f32_e64 s1, v39, v39
	v_cndmask_b16 v24.l, 0x7fff, v24.h, vcc_lo
	v_cndmask_b16 v24.h, 0x7fff, v26.h, s0
	v_cndmask_b16 v26.h, 0x7fff, v28.h, s2
	v_add3_u32 v28, v41, v29, 0x7fff
	v_bfe_u32 v29, v43, 16, 1
	v_bfe_u32 v30, v44, 16, 1
	v_cndmask_b16 v26.l, 0x7fff, v27.h, s1
	v_bfe_u32 v27, v42, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v41, v41
	v_add3_u32 v29, v43, v29, 0x7fff
	v_cmp_o_f32_e64 s1, v43, v43
	v_add3_u32 v30, v44, v30, 0x7fff
	v_cmp_o_f32_e64 s2, v44, v44
	v_add3_u32 v27, v42, v27, 0x7fff
	v_cmp_o_f32_e64 s0, v42, v42
	v_cndmask_b16 v27.l, 0x7fff, v28.h, vcc_lo
	v_bfe_u32 v28, v45, 16, 1
	v_cndmask_b16 v29.l, 0x7fff, v29.h, s1
	v_cndmask_b16 v29.h, 0x7fff, v30.h, s2
	v_bfe_u32 v30, v46, 16, 1
	v_bfe_u32 v32, v48, 16, 1
	v_bfe_u32 v31, v47, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v27.h, s0
	v_add3_u32 v28, v45, v28, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v45, v45
	v_add3_u32 v30, v46, v30, 0x7fff
	v_cmp_o_f32_e64 s0, v46, v46
	v_add3_u32 v32, v48, v32, 0x7fff
	v_cmp_o_f32_e64 s2, v48, v48
	v_bfe_u32 v33, v49, 16, 1
	v_add3_u32 v31, v47, v31, 0x7fff
	v_cmp_o_f32_e64 s1, v47, v47
	v_cndmask_b16 v28.l, 0x7fff, v28.h, vcc_lo
	v_cndmask_b16 v28.h, 0x7fff, v30.h, s0
	v_cndmask_b16 v30.h, 0x7fff, v32.h, s2
	v_add3_u32 v32, v49, v33, 0x7fff
	v_bfe_u32 v33, v51, 16, 1
	v_bfe_u32 v34, v52, 16, 1
	v_cndmask_b16 v30.l, 0x7fff, v31.h, s1
	v_bfe_u32 v31, v50, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v49, v49
	v_add3_u32 v33, v51, v33, 0x7fff
	v_cmp_o_f32_e64 s1, v51, v51
	v_add3_u32 v34, v52, v34, 0x7fff
	v_cmp_o_f32_e64 s2, v52, v52
	v_add3_u32 v31, v50, v31, 0x7fff
	v_cmp_o_f32_e64 s0, v50, v50
	v_cndmask_b16 v31.l, 0x7fff, v32.h, vcc_lo
	v_bfe_u32 v32, v53, 16, 1
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s1
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s2
	v_bfe_u32 v34, v54, 16, 1
	v_bfe_u32 v36, v56, 16, 1
	v_bfe_u32 v35, v55, 16, 1
	v_cndmask_b16 v31.h, 0x7fff, v31.h, s0
	v_add3_u32 v32, v53, v32, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_add3_u32 v34, v54, v34, 0x7fff
	v_cmp_o_f32_e64 s0, v54, v54
	v_add3_u32 v36, v56, v36, 0x7fff
	v_cmp_o_f32_e64 s2, v56, v56
	v_bfe_u32 v37, v57, 16, 1
	v_add3_u32 v35, v55, v35, 0x7fff
	v_cmp_o_f32_e64 s1, v55, v55
	v_cndmask_b16 v32.l, 0x7fff, v32.h, vcc_lo
	v_cndmask_b16 v32.h, 0x7fff, v34.h, s0
	v_cndmask_b16 v34.h, 0x7fff, v36.h, s2
	v_add3_u32 v36, v57, v37, 0x7fff
	v_bfe_u32 v37, v59, 16, 1
	v_bfe_u32 v38, v60, 16, 1
	v_cndmask_b16 v34.l, 0x7fff, v35.h, s1
	v_bfe_u32 v35, v58, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v57, v57
	v_add3_u32 v37, v59, v37, 0x7fff
	v_cmp_o_f32_e64 s1, v59, v59
	v_add3_u32 v38, v60, v38, 0x7fff
	v_cmp_o_f32_e64 s2, v60, v60
	v_add3_u32 v35, v58, v35, 0x7fff
	v_cmp_o_f32_e64 s0, v58, v58
	v_cndmask_b16 v35.l, 0x7fff, v36.h, vcc_lo
	v_bfe_u32 v36, v61, 16, 1
	v_cndmask_b16 v37.l, 0x7fff, v37.h, s1
	v_cndmask_b16 v37.h, 0x7fff, v38.h, s2
	v_bfe_u32 v38, v62, 16, 1
	v_bfe_u32 v39, v63, 16, 1
	v_bfe_u32 v40, v64, 16, 1
	v_cndmask_b16 v35.h, 0x7fff, v35.h, s0
	v_add3_u32 v36, v61, v36, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v61, v61
	v_add3_u32 v38, v62, v38, 0x7fff
	v_cmp_o_f32_e64 s0, v62, v62
	v_add3_u32 v39, v63, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v63, v63
	v_add3_u32 v40, v64, v40, 0x7fff
	v_cmp_o_f32_e64 s2, v64, v64
	v_bfe_u32 v41, v9, 16, 1
	v_cndmask_b16 v36.l, 0x7fff, v36.h, vcc_lo
	v_cndmask_b16 v36.h, 0x7fff, v38.h, s0
	v_cndmask_b16 v38.l, 0x7fff, v39.h, s1
	v_cndmask_b16 v38.h, 0x7fff, v40.h, s2
	v_bfe_u32 v39, v10, 16, 1
	v_add3_u32 v40, v9, v41, 0x7fff
	v_bfe_u32 v41, v11, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_bfe_u32 v9, v12, 16, 1
	v_add3_u32 v39, v10, v39, 0x7fff
	v_cmp_o_f32_e64 s0, v10, v10
	v_add3_u32 v10, v11, v41, 0x7fff
	v_cmp_o_f32_e64 s1, v11, v11
	v_add3_u32 v9, v12, v9, 0x7fff
	v_cmp_o_f32_e64 s2, v12, v12
	v_bfe_u32 v12, v13, 16, 1
	v_cndmask_b16 v11.l, 0x7fff, v40.h, vcc_lo
	v_cndmask_b16 v9.l, 0x7fff, v10.h, s1
	v_bfe_u32 v10, v14, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v39.h, s0
	v_add3_u32 v12, v13, v12, 0x7fff
	v_bfe_u32 v39, v15, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v13, v13
	v_bfe_u32 v13, v16, 16, 1
	v_add3_u32 v10, v14, v10, 0x7fff
	v_cmp_o_f32_e64 s0, v14, v14
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v1, 1, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s2
	v_add3_u32 v14, v15, v39, 0x7fff
	v_cmp_o_f32_e64 s1, v15, v15
	v_add3_u32 v13, v16, v13, 0x7fff
	v_cmp_o_f32_e64 s2, v16, v16
	v_cndmask_b16 v3.l, 0x7fff, v12.h, vcc_lo
	v_cndmask_b16 v3.h, 0x7fff, v10.h, s0
	v_cndmask_b16 v10.l, 0x7fff, v14.h, s1
	v_cndmask_b32_e64 v14, v18, v17, s3
	v_cndmask_b16 v10.h, 0x7fff, v13.h, s2
	v_cndmask_b32_e64 v13, v8, v6, s3
	v_cndmask_b32_e64 v6, v6, v8, s3
	v_cndmask_b32_e64 v8, v17, v18, s3
	v_cndmask_b32_e64 v15, v20, v19, s3
	v_cndmask_b32_e64 v16, v19, v20, s3
	v_cndmask_b32_e64 v17, v22, v21, s3
	v_cndmask_b32_e64 v18, v21, v22, s3
	v_cndmask_b32_e64 v19, v24, v23, s3
	v_cndmask_b32_e64 v20, v23, v24, s3
	v_cndmask_b32_e64 v21, v26, v25, s3
	v_cndmask_b32_e64 v22, v25, v26, s3
	v_cndmask_b32_e64 v23, v28, v27, s3
	v_cndmask_b32_e64 v24, v27, v28, s3
	v_cndmask_b32_e64 v25, v30, v29, s3
	v_cndmask_b32_e64 v26, v29, v30, s3
	v_cndmask_b32_e64 v27, v32, v31, s3
	v_cndmask_b32_e64 v28, v31, v32, s3
	v_cndmask_b32_e64 v29, v34, v33, s3
	v_cndmask_b32_e64 v30, v33, v34, s3
	v_cndmask_b32_e64 v31, v36, v35, s3
	v_cndmask_b32_e64 v32, v35, v36, s3
	v_cndmask_b32_e64 v33, v38, v37, s3
	v_cndmask_b32_e64 v34, v37, v38, s3
	v_cndmask_b32_e64 v35, v3, v11, s3
	v_cndmask_b32_e64 v3, v11, v3, s3
	v_mov_b32_e32 v11, 0x5410
	v_mov_b32_e32 v37, 0x7632
	v_cndmask_b32_e64 v12, v7, v4, s3
	v_cndmask_b32_e64 v4, v4, v7, s3
	v_cndmask_b32_e64 v7, v5, v66, s3
	v_cndmask_b32_e64 v5, v66, v5, s3
	v_cndmask_b32_e64 v36, v10, v9, s3
	v_cndmask_b32_e64 v9, v9, v10, s3
	v_cndmask_b32_e64 v10, 0x1054, v11, s3
	v_cndmask_b32_e64 v11, 0x3276, v37, s3
	s_mov_b32 s0, 0x76543210
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_add_lshl_u32 v1, v2, v1, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_permlanex16_b32 v37, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v38, v6, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v10, 8, v10
	v_lshl_or_b32 v6, v11, 8, v11
	v_permlanex16_b32 v4, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v16, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v20, v20, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v5, 0x540054, v5
	v_and_b32_e32 v6, 0x760076, v6
	v_permlanex16_b32 v24, v24, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v28, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v32, v32, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v5, v5, 4, v5
	v_lshl_or_b32 v6, v6, 4, v6
	v_permlanex16_b32 v42, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_permlanex16_b32 v39, v8, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v40, 0x5040504, v5
	v_and_b32_e32 v41, 0x7060706, v6
	v_add_nc_u32_e32 v0, 32, v1
	v_permlanex16_b32 v18, v18, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 64, v1
	v_perm_b32 v3, v4, v12, v40
	v_perm_b32 v4, v4, v12, v41
	v_perm_b32 v5, v37, v7, v40
	v_perm_b32 v6, v37, v7, v41
	v_perm_b32 v11, v16, v15, v40
	v_perm_b32 v12, v16, v15, v41
	v_perm_b32 v15, v20, v19, v40
	v_perm_b32 v16, v20, v19, v41
	v_perm_b32 v19, v24, v23, v40
	v_perm_b32 v20, v24, v23, v41
	v_perm_b32 v23, v28, v27, v40
	v_perm_b32 v24, v28, v27, v41
	v_perm_b32 v27, v32, v31, v40
	v_perm_b32 v28, v32, v31, v41
	v_perm_b32 v31, v42, v35, v40
	v_perm_b32 v32, v42, v35, v41
	v_dual_cndmask_b32 v35, 0x80000000, v1 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	v_permlanex16_b32 v43, v9, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v7, v38, v13, v40
	v_perm_b32 v8, v38, v13, v41
	v_perm_b32 v9, v39, v14, v40
	v_perm_b32 v10, v39, v14, v41
	v_perm_b32 v13, v18, v17, v40
	v_perm_b32 v14, v18, v17, v41
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_permlanex16_b32 v22, v22, s0, 0xfedcba98 op_sel:[1,0]
	s_clause 0x2
	buffer_store_b128 v[3:6], v35, s[20:23], 0 offen
	buffer_store_b128 v[7:10], v0, s[20:23], 0 offen
	buffer_store_b128 v[11:14], v2, s[20:23], 0 offen
	v_add_nc_u32_e32 v0, 0x60, v1
	v_permlanex16_b32 v26, v26, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v2, 0x80, v1
	v_permlanex16_b32 v30, v30, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v3, 0xa0, v1
	v_permlanex16_b32 v34, v34, s0, 0xfedcba98 op_sel:[1,0]
	v_add_nc_u32_e32 v4, 0xc0, v1
	v_add_nc_u32_e32 v1, 0xe0, v1
	v_perm_b32 v17, v22, v21, v40
	v_perm_b32 v18, v22, v21, v41
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	v_perm_b32 v21, v26, v25, v40
	v_perm_b32 v22, v26, v25, v41
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_perm_b32 v25, v30, v29, v40
	v_perm_b32 v26, v30, v29, v41
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	v_perm_b32 v29, v34, v33, v40
	v_perm_b32 v30, v34, v33, v41
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	v_perm_b32 v33, v43, v36, v40
	v_perm_b32 v34, v43, v36, v41
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_clause 0x4
	buffer_store_b128 v[15:18], v0, s[20:23], 0 offen
	buffer_store_b128 v[19:22], v2, s[20:23], 0 offen
	buffer_store_b128 v[23:26], v3, s[20:23], 0 offen
	buffer_store_b128 v[27:30], v4, s[20:23], 0 offen
	buffer_store_b128 v[31:34], v1, s[20:23], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 131
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
		.amdhsa_inst_pref_size 62
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 131
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 31
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 7860
; TotalNumSgprs: 33
; NumVgprs: 131
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 33
; NumVGPRsForWavesPerEU: 131
; Occupancy: 10
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm16_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     131
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
