	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[52:53], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v4, 0 :: v_dual_and_b32 v43, 15, v0
	v_lshlrev_b32_e32 v46, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_lshr_b32 s4, s4, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s3, s3, s4
	s_ashr_i32 s3, s3, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s6, s5, s6
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s8
	s_add_i32 s8, s5, 1
	s_sub_i32 s9, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s8, s5
	s_cselect_b32 s7, s9, s7
	s_add_i32 s8, s5, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s4, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s6
	s_sub_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s5, s53, s4
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s4, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s5, s5, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s12, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s6, s5
	s_abs_i32 s3, s12
	s_cvt_f32_u32 s7, s6
	s_sub_i32 s8, 0, s6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s7
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s7, s7
	s_mul_i32 s8, s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s7, s8
	s_add_i32 s7, s7, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s3, s7
	s_xor_b32 s7, s12, s5
	s_mul_i32 s8, s2, s6
	s_ashr_i32 s7, s7, 31
	s_sub_i32 s3, s3, s8
	s_add_i32 s13, s2, 1
	s_sub_i32 s14, s3, s6
	s_cmp_ge_u32 s3, s6
	s_load_b128 s[8:11], s[0:1], 0x28
	s_cselect_b32 s2, s13, s2
	s_cselect_b32 s3, s14, s3
	s_add_i32 s13, s2, 1
	s_cmp_ge_u32 s3, s6
	s_cselect_b32 s2, s13, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_xor_b32 s6, s2, s7
	s_load_b64 s[2:3], s[0:1], 0x38
	s_sub_i32 s53, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s53, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s12, s5
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s4, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s5, s4, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[4:5], s[4:5], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s6, s8, s4
	s_addc_u32 s7, s9, s5
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[50:51], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[48:49], s[2:3], 0x0
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s52, 0
	s_mov_b32 s6, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v5, s2, s34, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v6, null, s35, 0, s2
	v_add_nc_u32_e32 v17, s34, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[50:51], v[5:6]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[48:49], v[5:6]
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 4, v0
.Ltmp4:
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[24:27], s[0:1], 0x40
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v44, 0xf0, v0
	v_dual_mov_b32 v6, 0 :: v_dual_lshlrev_b32 v45, 4, v43
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v51, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v80, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_and_b32 s54, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[2:3], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	v_dual_mov_b32 v140, 0 :: v_dual_add_nc_u32 v1, s34, v43
	v_add_co_u32 v5, vcc_lo, v3, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v6, null, 0, v4, vcc_lo
	v_add_co_u32 v7, vcc_lo, v3, 32
	v_add_co_ci_u32_e64 v8, null, 0, v4, vcc_lo
	v_add_co_u32 v9, vcc_lo, v3, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v10, null, 0, v4, vcc_lo
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s2, s4
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[50:51], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[48:49], v[3:4]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v4, 16, v1
	v_lshrrev_b32_e32 v12, 2, v0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_addc_u32 s5, s3, s5
	s_clause 0x1
	s_load_b32 s55, s[0:1], 0x58
	s_load_b32 s56, s[0:1], 0x50
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[50:51], v[5:6]
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v51, v4, s52
	v_dual_mov_b32 v139, 0 :: v_dual_lshlrev_b32 v4, 1, v0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[48:49], v[5:6]
	v_dual_mov_b32 v138, 0 :: v_dual_add_nc_u32 v5, 32, v1
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v6, 48, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v12, v4, v12
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[50:51], v[7:8]
	.loc	1 1214 25 is_stmt 1             ; ragged.py:1214:25
	s_load_b32 s7, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[48:49], v[7:8]
	v_dual_mov_b32 v135, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v3, 3, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v52, v5, s52
	v_mul_lo_u32 v53, v6, s52
	v_lshrrev_b32_e32 v5, 1, v0
	v_dual_mov_b32 v137, 0 :: v_dual_lshlrev_b32 v6, 5, v43
	v_dual_mov_b32 v131, 0 :: v_dual_and_b32 v18, 0xe00, v46
	v_dual_mov_b32 v129, 0 :: v_dual_and_b32 v12, 24, v12
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v48, 3, v44
	v_dual_mov_b32 v133, 0 :: v_dual_and_b32 v8, 24, v8
	v_dual_mov_b32 v132, 0 :: v_dual_and_b32 v49, 24, v3
	v_xor3_b32 v3, v4, v5, v3
	v_and_or_b32 v5, v4, 24, v6
	v_or3_b32 v6, v18, v12, v6
	v_dual_mov_b32 v93, 0 :: v_dual_lshlrev_b32 v18, 5, v0
	v_xor_b32_e32 v8, v8, v48
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[50:51], v[9:10]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[48:49], v[9:10]
	v_dual_mov_b32 v128, 0 :: v_dual_lshlrev_b32 v19, 2, v44
	v_dual_mov_b32 v91, 0 :: v_dual_and_b32 v18, 32, v18
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s3
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s3, s53, 8
	v_lshl_or_b32 v8, v43, 9, v8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v50, v1, s52
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s3, v45
	v_lshl_add_u32 v2, v2, 5, 0
	v_dual_mov_b32 v130, 0 :: v_dual_and_b32 v3, 24, v3
	v_xor_b32_e32 v7, 8, v5
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v4, 28, v4
	v_add3_u32 v29, 0, v19, v18
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s2
	s_and_b32 s2, s4, s6
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s4, s55, s33
	v_xor_b32_e32 v9, 16, v5
	v_xor_b32_e32 v10, 24, v5
	v_xor_b32_e32 v11, 0x208, v5
	v_xor_b32_e32 v13, 0x218, v5
	v_xor_b32_e32 v14, 0x210, v5
	v_xor_b32_e32 v15, 0x410, v5
	v_xor_b32_e32 v16, 0x418, v5
	v_xor_b32_e32 v20, 0x408, v5
	v_xor_b32_e32 v21, 0x618, v5
	v_xor_b32_e32 v22, 0x610, v5
	v_xor_b32_e32 v23, 0x608, v5
	v_xor_b32_e32 v12, 0x88, v8
	v_xor_b32_e32 v24, 0x110, v8
	v_xor_b32_e32 v25, 0x198, v8
	v_xor_b32_e32 v26, 8, v6
	v_xor_b32_e32 v27, 16, v6
	v_xor_b32_e32 v28, 24, v6
	v_dual_mov_b32 v87, 0 :: v_dual_lshlrev_b32 v30, 1, v44
	s_mov_b32 s16, 0
	v_mad_u64_u32 v[18:19], null, s4, s7, v[1:2]
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_mov_b32 s23, s16
	v_dual_mov_b32 v126, 0 :: v_dual_add_nc_u32 v95, v2, v3
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v96, 0, v5
	v_dual_mov_b32 v120, 0 :: v_dual_add_nc_u32 v97, 0, v7
	v_dual_mov_b32 v94, 0 :: v_dual_add_nc_u32 v117, 0, v8
	v_dual_mov_b32 v88, 0 :: v_dual_add_nc_u32 v123, 0, v6
	v_dual_mov_b32 v75, 0 :: v_dual_add_nc_u32 v134, v29, v4
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v1, s16
	v_or_b32_e32 v84, s3, v0
	v_dual_mov_b32 v118, 0 :: v_dual_add_nc_u32 v99, 0, v9
	v_dual_mov_b32 v116, 0 :: v_dual_add_nc_u32 v101, 0, v10
	v_dual_mov_b32 v114, 0 :: v_dual_add_nc_u32 v103, 0, v11
	v_dual_mov_b32 v112, 0 :: v_dual_add_nc_u32 v105, 0, v13
	v_dual_mov_b32 v106, 0 :: v_dual_add_nc_u32 v107, 0, v14
	v_dual_mov_b32 v83, 0 :: v_dual_add_nc_u32 v108, 0, v15
	v_dual_mov_b32 v104, 0 :: v_dual_add_nc_u32 v109, 0, v16
	v_dual_mov_b32 v81, 0 :: v_dual_add_nc_u32 v110, 0, v20
	v_dual_mov_b32 v102, 0 :: v_dual_add_nc_u32 v111, 0, v21
	v_dual_mov_b32 v100, 0 :: v_dual_add_nc_u32 v113, 0, v22
	v_dual_mov_b32 v98, 0 :: v_dual_add_nc_u32 v115, 0, v23
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v119, 0, v12
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v121, 0, v24
	v_dual_mov_b32 v79, 0 :: v_dual_add_nc_u32 v122, 0, v25
	v_dual_mov_b32 v77, 0 :: v_dual_add_nc_u32 v124, 0, v26
	v_dual_mov_b32 v86, 0 :: v_dual_add_nc_u32 v125, 0, v27
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v127, 0, v28
	v_dual_mov_b32 v73, 0 :: v_dual_add_nc_u32 v136, 0, v30
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v3, s18
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v5, s20
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v7, s22
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v2, s17
	v_mov_b32_e32 v4, s19
	v_mov_b32_e32 v6, s21
	v_mov_b32_e32 v8, s23
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	s_mov_b32 s30, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	s_and_b32 s13, s13, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s5
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s57, s52, s7
	s_and_b32 s45, s15, 0xffff
	s_mov_b32 s28, s8
	s_mov_b32 s29, s9
	s_mov_b32 s36, s10
	s_mov_b32 s37, s11
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_mov_b32 s40, s12
	s_mov_b32 s41, s13
	s_mov_b32 s42, s30
	s_mov_b32 s43, s31
	s_mov_b32 s44, s14
	s_mov_b32 s46, s30
	s_mov_b32 s47, s31
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s3, s16, 5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v9, s3, v49
	v_or_b32_e32 v21, s3, v48
	v_or_b32_e32 v19, 7, v9
	v_or_b32_e32 v11, 1, v9
	v_or_b32_e32 v12, 2, v9
	v_or_b32_e32 v13, 3, v9
	v_or_b32_e32 v14, 4, v9
	v_cmp_gt_i32_e64 s10, s55, v19
	v_mad_u64_u32 v[19:20], null, v19, s56, v[17:18]
	v_or_b32_e32 v15, 5, v9
	v_or_b32_e32 v16, 6, v9
	v_cmp_gt_i32_e64 s3, s55, v9
	v_mad_u64_u32 v[9:10], null, v9, s56, v[17:18]
	v_cmp_gt_i32_e64 s4, s55, v11
	v_mad_u64_u32 v[10:11], null, v11, s56, v[17:18]
	v_cmp_gt_i32_e64 s5, s55, v12
	s_and_b32 s10, s54, s10
	v_mad_u64_u32 v[11:12], null, v12, s56, v[17:18]
	v_cndmask_b32_e64 v19, 0x80000000, v19, s10
	v_or_b32_e32 v22, 1, v21
	v_cmp_gt_i32_e64 s6, s55, v13
	v_mad_u64_u32 v[12:13], null, v13, s56, v[17:18]
	v_cmp_gt_i32_e64 s7, s55, v14
	v_mad_u64_u32 v[13:14], null, v14, s56, v[17:18]
	v_cmp_gt_i32_e64 s8, s55, v15
	s_and_b32 s3, s54, s3
	s_and_b32 s4, s54, s4
	v_mad_u64_u32 v[14:15], null, v15, s56, v[17:18]
	v_cmp_gt_i32_e64 s9, s55, v16
	s_and_b32 s5, s54, s5
	v_mad_u64_u32 v[15:16], null, v16, s56, v[17:18]
	v_cndmask_b32_e64 v16, 0x80000000, v9, s3
	v_cndmask_b32_e64 v20, 0x80000000, v10, s4
	v_mad_u64_u32 v[9:10], null, v21, s33, v[18:19]
	v_cndmask_b32_e64 v23, 0x80000000, v11, s5
	v_mad_u64_u32 v[10:11], null, v22, s33, v[18:19]
	v_cmp_gt_i32_e64 s11, s55, v21
	v_cmp_gt_i32_e64 s12, s55, v22
	s_and_b32 s6, s54, s6
	s_and_b32 s7, s54, s7
	s_and_b32 s8, s54, s8
	s_and_b32 s9, s54, s9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s6
	v_cndmask_b32_e64 v13, 0x80000000, v13, s7
	v_cndmask_b32_e64 v14, 0x80000000, v14, s8
	v_cndmask_b32_e64 v15, 0x80000000, v15, s9
	v_cndmask_b32_e64 v9, 0x80000000, v9, s11
	v_cndmask_b32_e64 v10, 0x80000000, v10, s12
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x7
	buffer_load_u8 v11, v16, s[28:31], 0 offen
	buffer_load_u8 v16, v20, s[28:31], 0 offen
	buffer_load_u8 v20, v23, s[28:31], 0 offen
	buffer_load_u8 v12, v12, s[28:31], 0 offen
	buffer_load_u8 v13, v13, s[28:31], 0 offen
	buffer_load_u8 v14, v14, s[28:31], 0 offen
	buffer_load_u8 v15, v15, s[28:31], 0 offen
	buffer_load_u8 v19, v19, s[28:31], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[142:145], v9, s[36:39], 0 offen
	buffer_load_b128 v[146:149], v10, s[36:39], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s3, s16, s57
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(2)
	v_lshlrev_b16 v9.l, 8, v19.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt vmcnt(0)
	v_perm_b32 v150, v146, v142, 0x5010400
	v_perm_b32 v151, v147, v143, 0x5010400
	v_perm_b32 v143, v147, v143, 0x7030602
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v10.h, v15.l, v9.l
	v_lshlrev_b16 v9.l, 8, v14.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_perm_b32 v147, v148, v144, 0x5010400
	v_perm_b32 v144, v148, v144, 0x7030602
	v_perm_b32 v148, v149, v145, 0x5010400
	v_perm_b32 v145, v149, v145, 0x7030602
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v10.l, v13.l, v9.l
	v_lshlrev_b16 v9.l, 8, v12.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshrrev_b32_e32 v149, 8, v150
	v_perm_b32 v146, v146, v142, 0x7030602
	v_and_b16 v142.l, 0xff, v150.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v9.h, v20.l, v9.l
	v_lshlrev_b16 v9.l, 8, v16.l
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_lshlrev_b16 v142.h, 8, v149.l
	v_lshrrev_b32_e32 v149, 8, v146
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_or_b16 v9.l, v11.l, v9.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_or_b16 v142.l, v142.l, v142.h
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_store_b64 v95, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[13:16], v96 offset1:1
	ds_load_b64 v[37:38], v97
	ds_load_b64 v[39:40], v99
	ds_load_b64 v[41:42], v101
	ds_load_b64 v[35:36], v103
	ds_load_b64 v[31:32], v105
	ds_load_b64 v[33:34], v107
	ds_load_b64 v[29:30], v108
	ds_load_b64 v[25:26], v109
	ds_load_2addr_stride64_b64 v[9:12], v96 offset0:2 offset1:3
	ds_load_b64 v[27:28], v110
	ds_load_b64 v[19:20], v111
	ds_load_b64 v[21:22], v113
	ds_load_b64 v[23:24], v115
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v117, v142
	v_lshrrev_b32_e32 v142, 24, v150
	v_and_b16 v142.h, 0xff, v150.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v142.l, 8, v142.l
	v_or_b16 v142.l, v142.h, v142.l
	v_lshlrev_b16 v142.h, 8, v149.l
	ds_store_b16 v117, v142 offset:32
	v_and_b16 v142.l, 0xff, v146.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_or_b16 v142.l, v142.l, v142.h
	ds_store_b16 v117, v142 offset:64
	v_lshrrev_b32_e32 v142, 24, v146
	v_and_b16 v142.h, 0xff, v146.h
	v_lshrrev_b32_e32 v146, 8, v151
	v_lshlrev_b16 v142.l, 8, v142.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_or_b16 v142.l, v142.h, v142.l
	v_lshlrev_b16 v142.h, 8, v146.l
	v_lshrrev_b32_e32 v146, 8, v143
	ds_store_b16 v117, v142 offset:96
	v_and_b16 v142.l, 0xff, v151.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v142.l, v142.l, v142.h
	ds_store_b16 v119, v142
	v_lshrrev_b32_e32 v142, 24, v151
	v_and_b16 v142.h, 0xff, v151.h
	v_lshlrev_b16 v142.l, 8, v142.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_or_b16 v142.l, v142.h, v142.l
	v_lshlrev_b16 v142.h, 8, v146.l
	ds_store_b16 v119, v142 offset:32
	v_and_b16 v142.l, 0xff, v143.l
	v_or_b16 v142.l, v142.l, v142.h
	ds_store_b16 v119, v142 offset:64
	v_lshrrev_b32_e32 v142, 24, v143
	v_and_b16 v142.h, 0xff, v143.h
	v_lshrrev_b32_e32 v143, 8, v147
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v142.l, 8, v142.l
	v_or_b16 v142.l, v142.h, v142.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v142.h, 8, v143.l
	v_lshrrev_b32_e32 v143, 8, v144
	ds_store_b16 v119, v142 offset:96
	v_and_b16 v142.l, 0xff, v147.l
	v_or_b16 v142.l, v142.l, v142.h
	ds_store_b16 v121, v142
	v_lshrrev_b32_e32 v142, 24, v147
	v_and_b16 v142.h, 0xff, v147.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v142.l, 8, v142.l
	v_or_b16 v142.l, v142.h, v142.l
	v_lshlrev_b16 v142.h, 8, v143.l
	v_lshrrev_b32_e32 v143, 8, v148
	ds_store_b16 v121, v142 offset:32
	v_and_b16 v142.l, 0xff, v144.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v142.l, v142.l, v142.h
	ds_store_b16 v121, v142 offset:64
	v_lshrrev_b32_e32 v142, 24, v144
	v_and_b16 v142.h, 0xff, v144.h
	v_lshlrev_b16 v142.l, 8, v142.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_or_b16 v142.l, v142.h, v142.l
	v_lshlrev_b16 v142.h, 8, v143.l
	v_lshrrev_b32_e32 v143, 8, v145
	ds_store_b16 v121, v142 offset:96
	v_and_b16 v142.l, 0xff, v148.l
	v_or_b16 v142.l, v142.l, v142.h
	ds_store_b16 v122, v142
	v_lshrrev_b32_e32 v142, 24, v148
	v_and_b16 v142.h, 0xff, v148.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v142.l, 8, v142.l
	v_or_b16 v142.l, v142.h, v142.l
	v_lshlrev_b16 v142.h, 8, v143.l
	ds_store_b16 v122, v142 offset:32
	v_and_b16 v142.l, 0xff, v145.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v142.l, v142.l, v142.h
	ds_store_b16 v122, v142 offset:64
	v_lshrrev_b32_e32 v142, 24, v145
	v_and_b16 v142.h, 0xff, v145.h
	v_lshlrev_b16 v142.l, 8, v142.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v142.l, v142.h, v142.l
	ds_store_b16 v122, v142 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[196:199], v123 offset1:8
	ds_load_2addr_stride64_b64 v[200:203], v124 offset1:8
	ds_load_2addr_stride64_b64 v[204:207], v125 offset1:8
	ds_load_2addr_stride64_b64 v[208:211], v127 offset1:8
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[198:199], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[198:199], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[196:197], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[202:203], v[37:38], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[198:199], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[202:203], v[25:26], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[200:201], v[15:16], v[158:165] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[206:207], v[39:40], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[202:203], v[15:16], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[196:197], v[13:14], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[206:207], v[9:10], v[174:181] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[150:157], v[210:211], v[41:42], v[150:157] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[204:205], v[31:32], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[206:207], v[31:32], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[200:201], v[37:38], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[174:181], v[210:211], v[27:28], v[174:181] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[196:197], v[19:20], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[158:165], v[208:209], v[33:34], v[158:165] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[166:173], v[210:211], v[33:34], v[166:173] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[31:38], v[196:197], v[29:30], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[198:199], v[19:20], v[1:8] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v19, v150
	v_cvt_f32_i32_e32 v20, v151
	v_cvt_f32_i32_e32 v150, v174
	v_cvt_f32_i32_e32 v151, v175
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v174, s16, v50, 1
	v_add_lshl_u32 v175, s16, v51, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[182:189], v[200:201], v[21:22], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[202:203], v[21:22], v[190:197] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v21, v152
	v_cvt_f32_i32_e32 v22, v153
	v_cvt_f32_i32_e32 v152, v176
	v_cvt_f32_i32_e32 v153, v177
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v174, 0x80000000, v174, vcc_lo
	v_cndmask_b32_e64 v175, 0x80000000, v175, s0
	v_add_lshl_u32 v176, s16, v52, 1
	v_add_lshl_u32 v177, s16, v53, 1
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[142:149], v[204:205], v[39:40], v[142:149] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v174, v174, s[40:43], 0 offen
	buffer_load_u16 v175, v175, s[40:43], 0 offen
	v_cndmask_b32_e64 v176, 0x80000000, v176, s1
	v_cndmask_b32_e64 v177, 0x80000000, v177, s2
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[200:201], v[25:26], v[31:38] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[142:149], v[208:209], v[41:42], v[142:149] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[182:189], v[204:205], v[23:24], v[182:189] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x1
	buffer_load_u16 v176, v176, s[40:43], 0 offen
	buffer_load_u16 v177, v177, s[40:43], 0 offen
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[204:205], v[9:10], v[31:38] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v9, v142
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[190:197], v[206:207], v[23:24], v[190:197] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v23, v154
	v_cvt_f32_i32_e32 v154, v178
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[31:38], v[208:209], v[27:28], v[31:38] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v27, v158
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[182:189], v[208:209], v[11:12], v[182:189] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[190:197], v[210:211], v[11:12], v[190:197] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v11, v144
	v_cvt_f32_i32_e32 v29, v160
	v_cvt_f32_i32_e32 v10, v143
	v_cvt_f32_i32_e32 v12, v145
	v_cvt_f32_i32_e32 v13, v146
	v_cvt_f32_i32_e32 v14, v147
	v_cvt_f32_i32_e32 v15, v148
	v_cvt_f32_i32_e32 v16, v149
	v_cvt_f32_i32_e32 v24, v155
	v_cvt_f32_i32_e32 v25, v156
	v_cvt_f32_i32_e32 v26, v157
	v_cvt_f32_i32_e32 v156, v180
	v_cvt_f32_i32_e32 v28, v159
	v_cvt_f32_i32_e32 v30, v161
	v_cvt_f32_i32_e32 v39, v162
	v_cvt_f32_i32_e32 v40, v163
	v_cvt_f32_i32_e32 v41, v164
	v_cvt_f32_i32_e32 v42, v165
	v_cvt_f32_i32_e32 v142, v166
	v_cvt_f32_i32_e32 v143, v167
	v_cvt_f32_i32_e32 v144, v168
	v_cvt_f32_i32_e32 v145, v169
	v_cvt_f32_i32_e32 v146, v170
	v_cvt_f32_i32_e32 v147, v171
	v_cvt_f32_i32_e32 v149, v173
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v155, v179
	v_cvt_f32_i32_e32 v157, v181
	v_cvt_f32_i32_e32 v158, v182
	v_cvt_f32_i32_e32 v159, v183
	v_cvt_f32_i32_e32 v160, v184
	v_cvt_f32_i32_e32 v161, v185
	v_cvt_f32_i32_e32 v162, v186
	v_cvt_f32_i32_e32 v163, v187
	v_cvt_f32_i32_e32 v164, v188
	v_cvt_f32_i32_e32 v165, v189
	v_cvt_f32_i32_e32 v166, v190
	v_cvt_f32_i32_e32 v167, v191
	v_cvt_f32_i32_e32 v168, v192
	v_cvt_f32_i32_e32 v148, v172
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v169, v193
	v_cvt_f32_i32_e32 v170, v194
	v_cvt_f32_i32_e32 v171, v195
	v_cvt_f32_i32_e32 v172, v196
	v_cvt_f32_i32_e32 v173, v197
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s16, s16, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s16, s52
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v175, 16, v175
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v27, v27, v175 :: v_dual_lshlrev_b32 v174, 16, v174
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v178, v9, v174 :: v_dual_lshlrev_b32 v177, 16, v177
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v9, v84, s3, 1
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v180, v11, v174 :: v_dual_mul_f32 v29, v29, v175
	v_dual_mul_f32 v179, v10, v174 :: v_dual_lshlrev_b32 v176, 16, v176
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v9, v9, s[44:47], 0 offen
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v181, v12, v174 :: v_dual_mul_f32 v30, v30, v175
	v_dual_mul_f32 v182, v13, v174 :: v_dual_mul_f32 v39, v39, v175
	v_dual_mul_f32 v183, v14, v174 :: v_dual_mul_f32 v28, v28, v175
	v_dual_mul_f32 v184, v15, v174 :: v_dual_mul_f32 v41, v41, v175
	v_dual_mul_f32 v185, v16, v174 :: v_dual_mul_f32 v42, v42, v175
	v_dual_mul_f32 v186, v19, v174 :: v_dual_mul_f32 v145, v145, v175
	v_dual_mul_f32 v187, v20, v174 :: v_dual_mul_f32 v142, v142, v175
	v_dual_mul_f32 v188, v21, v174 :: v_dual_mul_f32 v143, v143, v175
	v_dual_mul_f32 v189, v22, v174 :: v_dual_mul_f32 v40, v40, v175
	v_dual_mul_f32 v190, v23, v174 :: v_dual_mul_f32 v149, v149, v175
	v_dual_mul_f32 v191, v24, v174 :: v_dual_mul_f32 v146, v146, v175
	v_dual_mul_f32 v192, v25, v174 :: v_dual_mul_f32 v147, v147, v175
	v_dual_mul_f32 v174, v26, v174 :: v_dual_mul_f32 v31, v31, v176
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v144, v144, v175 :: v_dual_mul_f32 v33, v33, v176
	v_dual_mul_f32 v148, v148, v175 :: v_dual_mul_f32 v35, v35, v176
	v_dual_mul_f32 v32, v32, v176 :: v_dual_mul_f32 v159, v159, v177
	v_dual_mul_f32 v34, v34, v176 :: v_dual_mul_f32 v161, v161, v177
	v_dual_mul_f32 v36, v36, v176 :: v_dual_mul_f32 v163, v163, v177
	v_dual_mul_f32 v37, v37, v176 :: v_dual_mul_f32 v158, v158, v177
	v_dual_mul_f32 v38, v38, v176 :: v_dual_mul_f32 v165, v165, v177
	v_dual_mul_f32 v150, v150, v176 :: v_dual_mul_f32 v167, v167, v177
	v_dual_mul_f32 v151, v151, v176 :: v_dual_mul_f32 v160, v160, v177
	v_dual_mul_f32 v152, v152, v176 :: v_dual_mul_f32 v169, v169, v177
	v_dual_mul_f32 v153, v153, v176 :: v_dual_mul_f32 v162, v162, v177
	v_dual_mul_f32 v154, v154, v176 :: v_dual_mul_f32 v171, v171, v177
	v_dual_mul_f32 v155, v155, v176 :: v_dual_mul_f32 v164, v164, v177
	v_dual_mul_f32 v156, v156, v176 :: v_dual_mul_f32 v173, v173, v177
	v_dual_mul_f32 v157, v157, v176 :: v_dual_mul_f32 v166, v166, v177
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v9, 16, v9
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v134, v9
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v136
	ds_load_b128 v[13:16], v136 offset:16
	ds_load_b128 v[19:22], v136 offset:512
	ds_load_b128 v[23:26], v136 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v168, v168, v177
	v_mul_f32_e32 v170, v170, v177
	v_mul_f32_e32 v172, v172, v177
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(3)
	v_fmac_f32_e32 v47, v178, v9
	v_dual_fmac_f32 v141, v179, v10 :: v_dual_fmac_f32 v140, v180, v11
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v139, v181, v12 :: v_dual_fmac_f32 v138, v182, v13
	v_fmac_f32_e32 v135, v184, v15
	v_fmac_f32_e32 v137, v183, v14
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v133, v185, v16 :: v_dual_fmac_f32 v132, v186, v19
	v_dual_fmac_f32 v131, v187, v20 :: v_dual_fmac_f32 v130, v188, v21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v129, v189, v22 :: v_dual_fmac_f32 v128, v190, v23
	v_fmac_f32_e32 v126, v191, v24
	v_dual_fmac_f32 v120, v192, v25 :: v_dual_fmac_f32 v93, v143, v20
	v_dual_fmac_f32 v118, v174, v26 :: v_dual_fmac_f32 v89, v147, v24
	v_dual_fmac_f32 v116, v27, v9 :: v_dual_fmac_f32 v91, v145, v22
	v_dual_fmac_f32 v114, v28, v10 :: v_dual_fmac_f32 v83, v33, v11
	v_dual_fmac_f32 v112, v29, v11 :: v_dual_fmac_f32 v85, v32, v10
	v_dual_fmac_f32 v106, v30, v12 :: v_dual_fmac_f32 v87, v149, v26
	v_dual_fmac_f32 v104, v39, v13 :: v_dual_fmac_f32 v79, v37, v15
	v_dual_fmac_f32 v102, v40, v14 :: v_dual_fmac_f32 v81, v35, v13
	v_dual_fmac_f32 v100, v41, v15 :: v_dual_fmac_f32 v75, v152, v21
	v_dual_fmac_f32 v98, v42, v16 :: v_dual_fmac_f32 v71, v156, v25
	v_dual_fmac_f32 v94, v142, v19 :: v_dual_fmac_f32 v59, v168, v21
	v_dual_fmac_f32 v92, v144, v21 :: v_dual_fmac_f32 v77, v150, v19
	v_dual_fmac_f32 v90, v146, v23 :: v_dual_fmac_f32 v55, v172, v25
	v_dual_fmac_f32 v88, v148, v25 :: v_dual_fmac_f32 v73, v154, v23
	v_dual_fmac_f32 v86, v31, v9 :: v_dual_fmac_f32 v67, v160, v11
	v_dual_fmac_f32 v82, v34, v12 :: v_dual_fmac_f32 v63, v164, v15
	v_dual_fmac_f32 v80, v36, v14 :: v_dual_fmac_f32 v69, v158, v9
	v_fmac_f32_e32 v78, v38, v16
	v_dual_fmac_f32 v76, v151, v20 :: v_dual_fmac_f32 v65, v162, v13
	v_dual_fmac_f32 v74, v153, v22 :: v_dual_fmac_f32 v61, v166, v19
	v_dual_fmac_f32 v72, v155, v24 :: v_dual_fmac_f32 v57, v170, v23
	v_fmac_f32_e32 v70, v157, v26
	v_fmac_f32_e32 v68, v159, v10
	v_fmac_f32_e32 v66, v161, v12
	v_fmac_f32_e32 v64, v163, v14
	v_fmac_f32_e32 v62, v165, v16
	v_fmac_f32_e32 v60, v167, v20
	v_fmac_f32_e32 v58, v169, v22
	v_fmac_f32_e32 v56, v171, v24
	v_fmac_f32_e32 v54, v173, v26
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v36, v83, v83 :: v_dual_max_f32 v37, v82, v82
	v_dual_max_f32 v38, v81, v81 :: v_dual_max_f32 v39, v80, v80
	v_max_f32_e32 v40, v79, v79
	v_dual_max_f32 v1, v47, v47 :: v_dual_max_f32 v2, v141, v141
	v_dual_max_f32 v28, v92, v92 :: v_dual_max_f32 v29, v91, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v79, 0, v39
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v38, 0, v38
	v_max_f32_e32 v81, 0, v40
	v_dual_max_f32 v39, v78, v78 :: v_dual_max_f32 v40, v77, v77
	v_dual_max_f32 v41, v76, v76 :: v_dual_max_f32 v42, v75, v75
	v_dual_max_f32 v47, v74, v74 :: v_dual_max_f32 v82, 0, v39
	v_dual_max_f32 v26, v94, v94 :: v_dual_max_f32 v27, v93, v93
	v_max_f32_e32 v30, v90, v90
	v_dual_max_f32 v28, 0, v28 :: v_dual_max_f32 v31, v89, v89
	v_dual_max_f32 v32, v88, v88 :: v_dual_max_f32 v35, v85, v85
	v_dual_max_f32 v34, v86, v86 :: v_dual_max_f32 v83, 0, v40
	v_dual_max_f32 v84, 0, v41 :: v_dual_max_f32 v85, 0, v42
	v_dual_max_f32 v86, 0, v47 :: v_dual_max_f32 v39, v73, v73
	v_dual_max_f32 v40, v72, v72 :: v_dual_max_f32 v41, v71, v71
	v_dual_max_f32 v42, v70, v70 :: v_dual_max_f32 v47, v69, v69
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v72, 0, v39
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, 0, v30
	v_max_f32_e32 v33, v87, v87
	v_dual_max_f32 v87, 0, v40 :: v_dual_max_f32 v88, 0, v41
	v_dual_max_f32 v89, 0, v42 :: v_dual_max_f32 v90, 0, v47
	v_dual_max_f32 v39, v68, v68 :: v_dual_max_f32 v40, v67, v67
	v_dual_max_f32 v41, v66, v66 :: v_dual_max_f32 v42, v65, v65
	v_max_f32_e32 v47, v64, v64
	v_dual_max_f32 v5, v138, v138 :: v_dual_max_f32 v6, v137, v137
	v_dual_max_f32 v7, v135, v135 :: v_dual_max_f32 v8, v133, v133
	v_max_f32_e32 v9, v132, v132
	v_dual_max_f32 v15, v120, v120 :: v_dual_max_f32 v16, v118, v118
	v_dual_max_f32 v20, v112, v112 :: v_dual_max_f32 v91, 0, v39
	v_dual_max_f32 v92, 0, v40 :: v_dual_max_f32 v93, 0, v41
	v_max_f32_e32 v40, v62, v62
	v_dual_max_f32 v94, 0, v42 :: v_dual_max_f32 v95, 0, v47
	v_dual_max_f32 v42, v60, v60 :: v_dual_max_f32 v41, v61, v61
	v_max_f32_e32 v39, v63, v63
	v_max_f32_e32 v47, v59, v59
	v_dual_max_f32 v3, v140, v140 :: v_dual_max_f32 v4, v139, v139
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_max_f32_e32 v12, v129, v129
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, v131, v131
	v_max_f32_e32 v11, v130, v130
	v_dual_max_f32 v13, v128, v128 :: v_dual_max_f32 v14, v126, v126
	v_dual_max_f32 v18, v116, v116 :: v_dual_max_f32 v19, v114, v114
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v21, v106, v106 :: v_dual_max_f32 v22, v104, v104
	v_dual_max_f32 v23, v102, v102 :: v_dual_max_f32 v24, v100, v100
	v_max_f32_e32 v25, v98, v98
	v_dual_max_f32 v97, 0, v40 :: v_dual_max_f32 v98, 0, v41
	v_dual_max_f32 v96, 0, v39 :: v_dual_max_f32 v99, 0, v42
	v_max_f32_e32 v42, v55, v55
	v_max_f32_e32 v40, v57, v57
	v_dual_max_f32 v100, 0, v47 :: v_dual_max_f32 v39, v58, v58
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v41, v56, v56 :: v_dual_max_f32 v104, 0, v42
	v_dual_max_f32 v47, v54, v54 :: v_dual_mul_f32 v80, v1, v1
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v8, 0, v8
	v_max_f32_e32 v12, 0, v12
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v16, 0, v16 :: v_dual_max_f32 v19, 0, v19
	v_dual_max_f32 v18, 0, v18 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v22, 0, v22 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v26, 0, v26 :: v_dual_max_f32 v29, 0, v29
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_dual_max_f32 v33, 0, v33 :: v_dual_max_f32 v34, 0, v34
	v_dual_max_f32 v35, 0, v35 :: v_dual_max_f32 v102, 0, v40
	v_dual_max_f32 v101, 0, v39 :: v_dual_mul_f32 v56, v5, v5
	v_dual_max_f32 v103, 0, v41 :: v_dual_mul_f32 v54, v3, v3
	v_dual_max_f32 v105, 0, v47 :: v_dual_mul_f32 v64, v9, v9
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v51, v2, v2 :: v_dual_mul_f32 v60, v7, v7
	v_dual_mul_f32 v55, v4, v4 :: v_dual_mul_f32 v68, v11, v11
	v_dual_mul_f32 v57, v6, v6 :: v_dual_mul_f32 v78, v16, v16
	v_dual_mul_f32 v61, v8, v8 :: v_dual_mul_f32 v74, v14, v14
	v_dual_mul_f32 v65, v10, v10 :: v_dual_mul_f32 v70, v21, v21
	v_dual_mul_f32 v69, v12, v12 :: v_dual_mul_f32 v76, v18, v18
	v_dual_mul_f32 v73, v13, v13 :: v_dual_mul_f32 v66, v23, v23
	v_dual_mul_f32 v77, v15, v15 :: v_dual_mul_f32 v62, v25, v25
	v_dual_mul_f32 v75, v19, v19 :: v_dual_mul_f32 v52, v29, v29
	v_dual_mul_f32 v71, v20, v20 :: v_dual_mul_f32 v58, v27, v27
	v_dual_mul_f32 v67, v22, v22 :: v_dual_mul_f32 v48, v32, v32
	v_dual_mul_f32 v63, v24, v24 :: v_dual_mul_f32 v50, v30, v30
	v_dual_mul_f32 v59, v26, v26 :: v_dual_mul_f32 v40, v36, v36
	v_dual_mul_f32 v53, v28, v28 :: v_dual_mul_f32 v42, v34, v34
	v_dual_mul_f32 v49, v31, v31 :: v_dual_mul_f32 v38, v38, v38
	v_dual_mul_f32 v47, v33, v33 :: v_dual_mul_f32 v34, v83, v83
	v_dual_mul_f32 v41, v35, v35 :: v_dual_mul_f32 v36, v81, v81
	v_dual_mul_f32 v39, v37, v37 :: v_dual_mul_f32 v30, v72, v72
	v_dual_mul_f32 v37, v79, v79 :: v_dual_mul_f32 v32, v85, v85
	v_dual_mul_f32 v35, v82, v82 :: v_dual_mul_f32 v28, v88, v88
	v_dual_mul_f32 v33, v84, v84 :: v_dual_mul_f32 v26, v90, v90
	v_dual_mul_f32 v31, v86, v86 :: v_dual_mul_f32 v24, v92, v92
	v_dual_mul_f32 v29, v87, v87 :: v_dual_mul_f32 v22, v94, v94
	v_dual_mul_f32 v27, v89, v89 :: v_dual_mul_f32 v20, v96, v96
	v_dual_mul_f32 v25, v91, v91 :: v_dual_mul_f32 v18, v98, v98
	v_dual_mul_f32 v23, v93, v93 :: v_dual_mul_f32 v16, v99, v99
	v_dual_mul_f32 v21, v95, v95 :: v_dual_mul_f32 v14, v100, v100
	v_dual_mul_f32 v19, v97, v97 :: v_dual_mul_f32 v8, v102, v102
	v_dual_mul_f32 v9, v101, v101 :: v_dual_mul_f32 v6, v104, v104
	v_dual_mul_f32 v7, v103, v103 :: v_dual_mul_f32 v4, v105, v105
	v_mov_b32_e32 v1, v46
	v_mov_b32_e32 v3, v17
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v51, v51 :: v_dual_max_f32 v5, v80, v80
	v_max3_f32 v10, v55, v56, v57
	v_max3_f32 v11, v65, v68, v69
	v_max3_f32 v12, v73, v74, v77
	v_dual_max_f32 v13, v76, v76 :: v_dual_max_f32 v2, v5, v2
	v_max_f32_e32 v5, v75, v75
	v_max3_f32 v46, v58, v53, v52
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v11, v11, v12, v78
	v_max_f32_e32 v12, v42, v42
	v_max3_f32 v2, v2, v54, v10
	v_max_f32_e32 v10, v41, v41
	v_max_f32_e32 v5, v13, v5
	v_max3_f32 v13, v70, v67, v66
	v_max3_f32 v72, v50, v49, v48
	v_max3_f32 v15, v60, v61, v64
	v_max3_f32 v79, v33, v32, v31
	v_max3_f32 v81, v30, v29, v28
	v_max3_f32 v5, v5, v71, v13
	v_max3_f32 v13, v46, v72, v47
	v_max_f32_e32 v72, v25, v25
	v_max_f32_e32 v10, v12, v10
	v_max3_f32 v12, v39, v38, v37
	v_max3_f32 v17, v63, v62, v59
	v_max3_f32 v46, v36, v35, v34
	v_max3_f32 v2, v2, v15, v11
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v10, v10, v40, v12
	v_max3_f32 v12, v79, v81, v27
	v_max_f32_e32 v79, v26, v26
	v_max3_f32 v5, v5, v17, v13
	v_max3_f32 v15, v16, v14, v9
	v_max3_f32 v17, v8, v7, v6
	v_max3_f32 v10, v10, v46, v12
	v_max_f32_e32 v11, v79, v72
	v_max3_f32 v12, v23, v22, v21
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v46, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v13, v20, v19, v18
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v72, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, v15, v17, v4
	v_max3_f32 v11, v11, v24, v12
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v46, v46
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v15, v11, v13, v15
	v_max_f32_e32 v12, v12, v12
	v_dual_max_f32 v46, v72, v72 :: v_dual_max_f32 v81, v2, v17
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v2, 3, v0
	v_and_b32_e32 v17, 0x80, v0
.Ltmp15:
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v83, v10, v46 :: v_dual_max_f32 v82, v5, v12
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 5, v2
	v_permlanex16_b32 v5, v15, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v10, 4, v0
	v_lshl_add_u32 v12, v2, 9, 0
	v_and_b32_e32 v46, 8, v0
	v_and_or_b32 v1, 0x680, v1, v11
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v13, 0x60, v0
	v_lshl_add_u32 v72, v10, 2, v12
	v_lshlrev_b32_e32 v12, 1, v17
	v_lshrrev_b32_e32 v85, 3, v17
	v_lshl_add_u32 v86, v10, 6, 0
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v84, v15, v5
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v79, v11, v13
	v_lshl_add_u32 v72, v46, 4, v72
	v_xor_b32_e32 v1, v1, v13
	v_lshl_add_u32 v2, v2, 4, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v5, v72, v12, v79
	v_add3_u32 v1, v86, v85, v1
	ds_store_b128 v5, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[81:84], v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v1, v81
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v72, v81, v81 :: v_dual_mov_b32 v5, v82
	v_max_f32_e32 v79, v82, v82
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add_nc_u32_e32 v17, 0, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v1, v1 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v46, 3, v46
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_max_f32_e32 v1, v72, v1
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v15, v83
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v72, v83, v83
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v82, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v15, v15, v15 :: v_dual_max_f32 v82, v82, v82
	v_max_f32_e32 v15, v72, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v82
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v82, v1 :: v_dual_max_f32 v5, v79, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v83, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v5, v5, v83
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v84, v84
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v84, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v72, v81, v79
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v81, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v72, v72, v81 :: v_dual_max_f32 v81, v82, v82
	v_max_f32_e32 v82, v83, v83
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v84, v72 :: v_dual_max_f32 v81, v1, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v5, v82
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v84, v84 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v5, v84, v84
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v79, v15 :: v_dual_max_f32 v84, v72, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v15, v15, v79
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v79, v79
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v13
.Ltmp46:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v45, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v15, v1
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v1, 5, v10
	v_add3_u32 v5, v17, v79, v46
.Ltmp49:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v44
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v1, v2, v1, v46
	ds_store_b128 v5, v[81:84]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp51:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v46, 32, v10
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[81:84], v1
.Ltmp53:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v72, 16, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v1, v81, v81
	v_max_f32_e32 v79, v83, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	v_max_f32_e32 v79, 0x2b8cbccc, v79
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v5
	v_div_scale_f32 v83, vcc_lo, v5, 0x40e00000, v5
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v17, v15
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v85, s0, s34, v46
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v46, v82, v82
	v_rcp_f32_e32 v88, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v86, null, s35, 0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v15, v17, 1.0
	v_max_f32_e32 v46, 0x2b8cbccc, v46
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[48:49], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[50:51], v[85:86]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[48:49], v[85:86]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v17, v81, v17
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s34, v72
	v_add_co_ci_u32_e64 v82, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v89, v83, v17
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[50:51], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v2, v84, v84
	v_div_scale_f32 v72, null, 0x40e00000, 0x40e00000, v46
	v_fma_f32 v1, -v15, v89, v83
	v_fma_f32 v84, -v87, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v90, 0x2b8cbccc, v2
	v_rcp_f32_e32 v91, v72
	v_div_scale_f32 v2, s6, v79, 0x40e00000, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v89, v1, v17 :: v_dual_fmac_f32 v88, v84, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, 0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[50:51], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[48:49], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v1, -v15, v89, v83
	v_div_scale_f32 v15, null, 0x40e00000, 0x40e00000, v90
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v72, v91, 1.0
	v_div_fmas_f32 v1, v1, v17, v89
	v_mul_f32_e32 v17, v2, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v15
	v_fmac_f32_e32 v91, v84, v91
	v_div_scale_f32 v84, s7, v46, 0x40e00000, v46
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	v_fma_f32 v5, -v87, v17, v2
	s_mov_b32 vcc_lo, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v89, v84, v91
	v_fma_f32 v86, -v15, v83, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v17, v5, v88
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v85.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v72, v89, v84
	v_fmac_f32_e32 v83, v86, v83
	v_div_scale_f32 v86, s8, v90, 0x40e00000, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v5, 1, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v87, v17, v2
	v_fmac_f32_e32 v89, v81, v91
	v_mul_f32_e32 v82, v86, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v17, v2, v88, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v72, v89, v84
	v_fma_f32 v81, -v15, v82, v86
	s_mov_b32 vcc_lo, s7
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v87, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v17, v17, 0x40e00000, v79
	v_div_fmas_f32 v72, v72, v91, v89
	v_fmac_f32_e32 v82, v81, v83
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v87, v87, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v17.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fma_f32 v15, -v15, v82, v86
	v_div_fixup_f32 v46, v72, 0x40e00000, v46
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s6, s34, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v15, v15, v83, v82
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v82, null, v87, v87, v51
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s6
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v72, 1, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v79, -v81, v84, 1.0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v83, v15, 0x40e00000, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v15.l, v46.h
	v_mov_b16_e32 v15.h, v85.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v88, vcc_lo, v80, v87, v80
	v_fmac_f32_e32 v84, v79, v84
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[50:51], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[48:49], v[1:2]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v1, v17, v72, 0x7fff
	v_mov_b16_e32 v85.l, v83.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v89, v88, v84 :: v_dual_and_b32 v2, 1, v15
	v_fma_f32 v17, -v82, v86, 1.0
	v_div_scale_f32 v90, null, v87, v87, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v72, 1, v85
	v_add3_u32 v15, v46, v2, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v46, -v81, v89, v88
	v_fmac_f32_e32 v86, v17, v86
	v_rcp_f32_e32 v85, v90
	v_div_scale_f32 v91, null, v87, v87, v55
	v_div_scale_f32 v92, s8, v51, v87, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v83, v72, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v46, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v91
	v_mul_f32_e32 v93, v92, v86
	v_div_scale_f32 v94, s9, v54, v87, v54
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v90, v85, 1.0
	v_fma_f32 v81, -v81, v89, v88
	v_fma_f32 v88, -v82, v93, v92
	v_div_scale_f32 v95, null, v87, v87, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v85, v46, v85
	v_fma_f32 v46, -v91, v83, 1.0
	v_div_fmas_f32 v81, v81, v84, v89
	v_fmac_f32_e32 v93, v88, v86
	v_div_scale_f32 v96, null, v87, v87, v57
	v_mul_f32_e32 v84, v94, v85
	v_fmac_f32_e32 v83, v46, v83
	v_rcp_f32_e32 v88, v95
	v_div_scale_f32 v89, s10, v55, v87, v55
	v_div_fixup_f32 v46, v81, v87, v80
	v_fma_f32 v80, -v82, v93, v92
	v_rcp_f32_e32 v92, v96
	v_fma_f32 v81, -v90, v84, v94
	v_mul_f32_e32 v82, v89, v83
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v72, 0xffff0000, v1
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v97, -v95, v88, 1.0
	v_div_fmas_f32 v80, v80, v86, v93
	v_fmac_f32_e32 v84, v81, v85
	v_fma_f32 v81, -v91, v82, v89
	v_div_scale_f32 v86, s8, v56, v87, v56
	v_fma_f32 v93, -v96, v92, 1.0
	v_fmac_f32_e32 v88, v97, v88
	v_div_fixup_f32 v51, v80, v87, v51
	v_fma_f32 v80, -v90, v84, v94
	v_fmac_f32_e32 v82, v81, v83
	v_fmac_f32_e32 v92, v93, v92
	v_div_scale_f32 v93, null, v87, v87, v60
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v86, v88
	v_div_scale_f32 v90, s11, v57, v87, v57
	v_div_fmas_f32 v80, v80, v85, v84
	v_fma_f32 v84, -v91, v82, v89
	v_rcp_f32_e32 v89, v93
	v_div_scale_f32 v94, null, v87, v87, v61
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v85, -v95, v81, v86
	v_mul_f32_e32 v91, v90, v92
	v_div_fmas_f32 v82, v84, v83, v82
	v_rcp_f32_e32 v83, v94
	v_div_fixup_f32 v54, v80, v87, v54
	v_fmac_f32_e32 v81, v85, v88
	v_fma_f32 v84, -v96, v91, v90
	v_fma_f32 v85, -v93, v89, 1.0
	v_div_fixup_f32 v55, v82, v87, v55
	v_div_scale_f32 v82, s9, v60, v87, v60
	v_fma_f32 v80, -v95, v81, v86
	v_fmac_f32_e32 v91, v84, v92
	v_fmac_f32_e32 v89, v85, v89
	v_fma_f32 v84, -v94, v83, 1.0
	v_div_scale_f32 v85, null, v87, v87, v64
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v86, v82, v89
	v_div_fmas_f32 v80, v80, v88, v81
	v_fma_f32 v81, -v96, v91, v90
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v85
	v_div_scale_f32 v88, s8, v61, v87, v61
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v90, null, v87, v87, v65
	v_div_fmas_f32 v81, v81, v92, v91
	v_fma_f32 v91, -v93, v86, v82
	v_mul_f32_e32 v92, v88, v83
	v_div_fixup_f32 v56, v80, v87, v56
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v85, v84, 1.0
	v_rcp_f32_e32 v96, v90
	v_fmac_f32_e32 v86, v91, v89
	v_fma_f32 v80, -v94, v92, v88
	v_div_fixup_f32 v57, v81, v87, v57
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v81, s10, v64, v87, v64
	v_div_scale_f32 v91, null, v87, v87, v68
	v_fma_f32 v82, -v93, v86, v82
	v_fmac_f32_e32 v92, v80, v83
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v80, v81, v84
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v82, v82, v89, v86
	v_fma_f32 v86, -v94, v92, v88
	v_div_scale_f32 v97, null, v87, v87, v69
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v95, -v90, v96, 1.0
	v_fma_f32 v88, -v85, v80, v81
	v_div_fmas_f32 v83, v86, v83, v92
	v_rcp_f32_e32 v86, v97
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v91, v93, 1.0
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s11, v65, v87, v65
	v_dual_fmac_f32 v80, v88, v84 :: v_dual_fmac_f32 v93, v94, v93
	v_div_scale_f32 v92, s8, v68, v87, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v95, v96
	v_div_fixup_f32 v61, v83, v87, v61
	v_fma_f32 v81, -v85, v80, v81
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v83, -v97, v86, 1.0
	v_div_scale_f32 v85, null, v87, v87, v73
	v_fma_f32 v88, -v90, v89, v95
	v_div_fixup_f32 v60, v82, v87, v60
	v_mul_f32_e32 v82, v92, v93
	v_fmac_f32_e32 v86, v83, v86
	v_rcp_f32_e32 v83, v85
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v89, v88, v96
	v_div_fmas_f32 v80, v81, v84, v80
	v_fma_f32 v84, -v91, v82, v92
	v_div_scale_f32 v88, s9, v69, v87, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v90, v89, v95
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v82, v84, v93
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v83, 1.0
	v_div_fixup_f32 v64, v80, v87, v64
	v_div_fmas_f32 v81, v81, v96, v89
	v_mul_f32_e32 v89, v88, v86
	v_fma_f32 v80, -v91, v82, v92
	v_fmac_f32_e32 v83, v94, v83
	v_div_scale_f32 v94, null, v87, v87, v77
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v65, v81, v87, v65
	v_fma_f32 v81, -v97, v89, v88
	v_div_fmas_f32 v80, v80, v93, v82
	v_rcp_f32_e32 v82, v94
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v89, v81, v86
	v_div_fixup_f32 v68, v80, v87, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v80, -v97, v89, v88
	v_fma_f32 v97, -v94, v82, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v86, v89
	v_fmac_f32_e32 v82, v97, v82
	v_div_scale_f32 v90, null, v87, v87, v74
	v_div_scale_f32 v91, s10, v73, v87, v73
	v_div_scale_f32 v93, null, v87, v87, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v90
	v_mul_f32_e32 v81, v91, v83
	v_div_fixup_f32 v69, v80, v87, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v96, v93
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v88, -v85, v81, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v90, v84, 1.0
	v_fmac_f32_e32 v81, v88, v83
	v_div_scale_f32 v88, s9, v77, v87, v77
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v93, v96, 1.0
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v92, s8, v74, v87, v74
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v89, v96 :: v_dual_and_b32 v79, 0xffff0000, v15
	v_fma_f32 v80, -v85, v81, v91
	v_mul_f32_e32 v95, v92, v84
	v_mul_f32_e32 v85, v88, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v89, null, v79, v79, v76
	v_div_fmas_f32 v80, v80, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v90, v95, v92
	v_fma_f32 v83, -v94, v85, v88
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v73, v80, v87, v73
	v_fmac_f32_e32 v95, v86, v84
	v_div_scale_f32 v86, s11, v78, v87, v78
	v_fmac_f32_e32 v85, v83, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v90, v95, v92
	v_rcp_f32_e32 v90, v89
	v_div_scale_f32 v92, null, v79, v79, v75
	v_mul_f32_e32 v91, v86, v96
	v_div_fmas_f32 v81, v81, v84, v95
	v_fma_f32 v80, -v94, v85, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v83, v92
	v_div_scale_f32 v88, null, v79, v79, v71
	v_fma_f32 v84, -v93, v91, v86
	v_fma_f32 v95, -v89, v90, 1.0
	v_div_fixup_f32 v74, v81, v87, v74
	v_div_scale_f32 v81, s8, v76, v79, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v91, v84, v96 :: v_dual_fmac_f32 v90, v95, v90
	v_fma_f32 v84, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v80, v80, v82, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v82, -v93, v91, v86
	v_mul_f32_e32 v85, v81, v90
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v86, s9, v75, v79, v75
	v_div_scale_f32 v93, null, v79, v79, v70
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v94, v86, v83
	v_div_fmas_f32 v82, v82, v96, v91
	v_fma_f32 v91, -v89, v85, v81
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v88, v84, 1.0
	v_div_fixup_f32 v77, v80, v87, v77
	v_fma_f32 v80, -v92, v94, v86
	v_fmac_f32_e32 v85, v91, v90
	v_dual_fmac_f32 v84, v95, v84 :: v_dual_and_b32 v17, 0xffff0000, v2
	v_div_fixup_f32 v78, v82, v87, v78
	v_div_scale_f32 v82, s10, v71, v79, v71
	v_div_scale_f32 v87, null, v79, v79, v67
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v89, v85, v81
	v_fmac_f32_e32 v94, v80, v83
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v80, v82, v84
	v_rcp_f32_e32 v89, v87
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s11, v70, v79, v70
	v_div_fmas_f32 v81, v81, v90, v85
	v_fma_f32 v85, -v92, v94, v86
	v_div_scale_f32 v95, null, v79, v79, v66
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v88, v80, v82
	v_mul_f32_e32 v90, v91, v96
	v_div_fmas_f32 v83, v85, v83, v94
	v_rcp_f32_e32 v85, v95
	v_fma_f32 v92, -v87, v89, 1.0
	v_fmac_f32_e32 v80, v86, v84
	v_fma_f32 v86, -v93, v90, v91
	v_div_fixup_f32 v75, v83, v79, v75
	v_div_fixup_f32 v76, v81, v79, v76
	v_fmac_f32_e32 v89, v92, v89
	v_div_scale_f32 v92, s8, v67, v79, v67
	v_fmac_f32_e32 v90, v86, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v95, v85, 1.0
	v_div_scale_f32 v86, null, v79, v79, v63
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v92, v89
	v_fmac_f32_e32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v66, v79, v66
	v_div_fmas_f32 v80, v81, v84, v80
	v_fma_f32 v81, -v93, v90, v91
	v_fma_f32 v84, -v87, v82, v92
	v_div_scale_f32 v91, null, v79, v79, v62
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v86, v83, 1.0
	v_fmac_f32_e32 v82, v84, v89
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v96, v90
	v_mul_f32_e32 v90, v88, v85
	v_div_fixup_f32 v71, v80, v79, v71
	v_fma_f32 v80, -v87, v82, v92
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v79, v79, v59
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v70, v81, v79, v70
	v_fma_f32 v81, -v95, v90, v88
	v_div_scale_f32 v87, s10, v63, v79, v63
	v_fma_f32 v92, -v91, v84, 1.0
	v_div_fmas_f32 v80, v80, v89, v82
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v85 :: v_dual_mul_f32 v81, v87, v83
	v_fmac_f32_e32 v84, v92, v84
	v_div_scale_f32 v89, s8, v62, v79, v62
	v_div_scale_f32 v92, null, v79, v79, v58
	v_div_fixup_f32 v67, v80, v79, v67
	v_fma_f32 v80, -v95, v90, v88
	v_fma_f32 v88, -v86, v81, v87
	v_mul_f32_e32 v94, v89, v84
	v_rcp_f32_e32 v95, v92
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v85, v90
	v_fma_f32 v85, -v91, v94, v89
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v59, v79, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v66, v80, v79, v66
	v_fma_f32 v90, -v92, v95, 1.0
	v_fma_f32 v80, -v86, v81, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v94, v85, v84 :: v_dual_mul_f32 v85, v88, v82
	v_div_scale_f32 v87, null, v79, v79, v53
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v95, v90, v95
	v_div_scale_f32 v86, s11, v58, v79, v58
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v91, v94, v89
	v_fma_f32 v83, -v93, v85, v88
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v79, v79, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v85, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v91
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v92, v90, v86
	v_div_fixup_f32 v63, v80, v79, v63
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v80, -v93, v85, v88
	v_div_fixup_f32 v62, v81, v79, v62
	v_fmac_f32_e32 v90, v84, v95
	v_div_scale_f32 v81, s8, v53, v79, v53
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v84, -v91, v83, 1.0
	v_div_scale_f32 v88, null, v79, v79, v50
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v96, null, v79, v79, v47
	v_div_fmas_f32 v80, v80, v82, v85
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v85, v81, v89
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v86, s9, v52, v79, v52
	v_div_scale_f32 v92, null, v79, v79, v49
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v93, v86, v83
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v85, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v84, 1.0
	v_div_fixup_f32 v59, v80, v79, v59
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v85, v90, v89
	v_div_fixup_f32 v58, v82, v79, v58
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v82, s10, v50, v79, v50
	v_div_scale_f32 v90, null, v79, v79, v48
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v85, v81
	v_fmac_f32_e32 v93, v80, v83
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v80, v82, v84
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v49, v79, v49
	v_div_fmas_f32 v81, v81, v89, v85
	v_fma_f32 v85, -v91, v93, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v88, v80, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v53, v81, v79, v53
	v_div_fmas_f32 v83, v85, v83, v93
	v_rcp_f32_e32 v85, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v80, v86, v84
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v52, v83, v79, v52
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v48, v79, v48
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v85, 1.0
	v_div_scale_f32 v86, null, v72, v72, v42
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s9, v47, v79, v47
	v_div_fmas_f32 v80, v81, v84, v80
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v84, -v90, v82, v91
	v_div_scale_f32 v92, null, v72, v72, v41
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v50, v80, v79, v50
	v_fmac_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v84, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v85
	v_fma_f32 v80, -v90, v82, v91
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v72, v72, v40
	v_div_fixup_f32 v49, v81, v79, v49
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s10, v42, v72, v42
	v_fma_f32 v91, -v92, v84, 1.0
	v_div_fmas_f32 v80, v80, v87, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v85
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v81, v90, v83 :: v_dual_fmac_f32 v84, v91, v84
	v_div_scale_f32 v87, s8, v41, v72, v41
	v_div_scale_f32 v91, null, v72, v72, v39
	v_div_fixup_f32 v48, v80, v79, v48
	v_fma_f32 v80, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v84
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v85, v89
	v_fma_f32 v85, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v40, v72, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v47, v80, v79, v47
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v85, v84
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v72, v72, v38
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v85, s11, v39, v72, v39
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v72, v72, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v85, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v84, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v84, -v91, v89, v85
	v_div_fixup_f32 v42, v79, v72, v42
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v79, -v93, v80, v88
	v_div_fixup_f32 v41, v81, v72, v41
	v_fmac_f32_e32 v89, v84, v95
	v_div_scale_f32 v81, s8, v38, v72, v38
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v72, v72, v36
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v85
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s9, v37, v72, v37
	v_div_scale_f32 v91, null, v72, v72, v35
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v40, v79, v72, v40
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v72, v72, v34
	v_div_fixup_f32 v39, v80, v72, v39
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s10, v36, v72, v36
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v79, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v79, v80, v84 :: v_dual_fmac_f32 v94, v93, v94
	v_div_scale_f32 v93, s11, v35, v72, v35
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v95, null, v72, v72, v33
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v88, v79, v80
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v34, v72, v34
	v_div_fixup_f32 v38, v81, v72, v38
	v_div_fixup_f32 v37, v82, v72, v37
	v_fma_f32 v80, -v88, v79, v80
	v_fmac_f32_e32 v87, v85, v94
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v72, v72, v32
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v33, v72, v33
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v87, v93
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v72, v72, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v36, v79, v72, v36
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v79, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v35, v80, v72, v35
	v_fma_f32 v80, -v95, v87, v88
	v_div_scale_f32 v89, s10, v32, v72, v32
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v72, v72, v30
	v_div_fmas_f32 v79, v79, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v90, null, v72, v72, v29
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s8, v31, v72, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v34, v79, v72, v34
	v_fma_f32 v79, -v95, v87, v88
	v_fma_f32 v88, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v87
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v30, v72, v30
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v33, v79, v72, v33
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v72, v72, v28
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v29, v72, v29
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v72, v72, v27
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v32, v79, v72, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v31, v80, v72, v31
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s8, v28, v72, v28
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v17, v17, v25
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v17, v17, v26
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v27, v72, v27
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v30, v79, v72, v30
	v_div_fixup_f32 v29, v81, v72, v29
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v79, -v91, v90, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v17, v17, v23
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v17, v17, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v79, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v79, s10, v26, v17, v26
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v91, v90, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v86, s8, v25, v17, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v84, v85, v79
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_mul_f32_e32 v95, v86, v81
	v_fmac_f32_e32 v85, v93, v87
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v24, v17, v24
	v_div_fixup_f32 v28, v80, v72, v28
	v_div_fixup_f32 v27, v82, v72, v27
	v_fma_f32 v72, -v84, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v91, v89
	v_div_scale_f32 v82, null, v17, v17, v22
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	v_fma_f32 v79, -v88, v90, v91
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v80, s9, v23, v17, v23
	v_div_fmas_f32 v72, v72, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_div_scale_f32 v85, null, v17, v17, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v96
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v26, v72, v17, v26
	v_fma_f32 v86, -v82, v79, 1.0
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v22, v17, v22
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v72, v86, v79
	v_div_fixup_f32 v25, v81, v17, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v82, v72, v86
	v_div_fixup_f32 v24, v83, v17, v24
	v_div_scale_f32 v83, null, v17, v17, v20
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s10, v21, v17, v21
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v72, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v23, v80, v17, v23
	v_fma_f32 v80, -v82, v72, v86
	v_div_scale_f32 v88, null, v17, v17, v19
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v72, v80, v79, v72
	v_div_scale_f32 v79, null, v17, v17, v18
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s8, v20, v17, v20
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v17, v17, v16
	v_div_fixup_f32 v22, v72, v17, v22
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v72, v90
	v_div_scale_f32 v72, s9, v19, v17, v19
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v17, v17, v14
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v72, v90
	v_div_scale_f32 v93, s10, v18, v17, v18
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v72
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s11, v16, v17, v16
	v_div_fixup_f32 v21, v81, v17, v21
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v72, -v88, v87, v72
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s8, v14, v17, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	v_div_fmas_f32 v80, v80, v89, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v17, v17, v9
	v_div_fmas_f32 v72, v72, v90, v87
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v20, v80, v17, v20
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v19, v72, v17, v19
	v_div_fixup_f32 v18, v79, v17, v18
	v_div_scale_f32 v79, null, v17, v17, v8
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v17, v17, v4
	v_div_fmas_f32 v82, v82, v92, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v72, -v91, v81, v84
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v85, v87, 1.0
	v_rcp_f32_e32 v91, v89
	v_div_fixup_f32 v16, v82, v17, v16
	v_div_fmas_f32 v72, v72, v95, v81
	v_rcp_f32_e32 v81, v79
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v83, vcc_lo, v9, v17, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v14, v72, v17, v14
	v_div_scale_f32 v80, null, v17, v17, v7
	v_mul_f32_e32 v88, v83, v87
	v_div_scale_f32 v82, null, v17, v17, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v72, -v79, v81, 1.0
	v_fma_f32 v95, -v89, v91, 1.0
	v_fma_f32 v92, -v85, v88, v83
	v_rcp_f32_e32 v84, v80
	v_rcp_f32_e32 v86, v82
	v_fmac_f32_e32 v81, v72, v81
	v_div_scale_f32 v72, s8, v8, v17, v8
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v94, v72, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	v_fma_f32 v92, -v79, v94, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v94, v92, v81
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v90, v84
	v_fma_f32 v72, -v79, v94, v72
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, s9, v7, v17, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v72, v72, v81, v94
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s10, v6, v17, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v72, v17, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v74, v78
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v78, v39
	v_and_b32_e32 v39, 15, v52
	v_and_b32_e32 v52, 15, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v91, v95, v91 :: v_dual_lshlrev_b32 v40, 10, v0
	v_div_scale_f32 v95, s11, v4, v17, v4
	v_mul_f32_e32 v96, v90, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v40, 0x1800, v40
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v98, v95, v91
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v99, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v85, v84
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v9, v83, v17, v9
	v_fmac_f32_e32 v98, v79, v91
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v96, v90
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v27
	v_and_b32_e32 v27, 15, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v98, v95
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v95, v22
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v97, v93, v86 :: v_dual_and_b32 v74, 15, v99
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v82, v97, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v7, v80, v17, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v92, v86
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v82, v97, v93
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v28, v28, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v79, v17, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v81, v17, v4
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v46
	v_rndne_f32_e32 v46, v51
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v102, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v60
	v_rndne_f32_e32 v60, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v8, 15, v51
	v_and_b32_e32 v51, 15, v41
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v41, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v64
	v_rndne_f32_e32 v64, v65
	v_rndne_f32_e32 v65, v68
	v_rndne_f32_e32 v68, v69
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v4, v4, s8, 0x40e00000
	v_cvt_i32_f32_e32 v89, v28
	v_cvt_i32_f32_e32 v103, v7
	v_and_b32_e32 v28, 15, v76
	v_and_b32_e32 v76, 15, v14
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v14, 6, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v46
	v_and_b32_e32 v46, 15, v50
	v_and_b32_e32 v50, 15, v42
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v42, 6, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v73
	v_rndne_f32_e32 v75, v75
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v73, v77
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v81, v36
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v40, 0, v40, v42
	v_and_or_b32 v11, 0x1b00, v14, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v68, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v37, v37
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_cvt_i32_f32_e32 v101, v9
	v_cvt_i32_f32_e32 v104, v6
	v_and_b32_e32 v6, 15, v17
	v_and_b32_e32 v9, 15, v54
	v_and_b32_e32 v17, 15, v56
	v_and_b32_e32 v56, 15, v81
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v40, v40, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v81, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v44, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v94, v23
	v_cvt_i32_f32_e32 v96, v21
	v_cvt_i32_f32_e32 v97, v20
	v_and_b32_e32 v20, 15, v61
	v_and_b32_e32 v21, 15, v64
	v_and_b32_e32 v22, 15, v65
	v_and_b32_e32 v23, 15, v68
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v91, v26
	v_cvt_i32_f32_e32 v92, v25
	v_cvt_i32_f32_e32 v93, v24
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v77, v47
	v_cvt_i32_f32_e32 v83, v34
	v_cvt_i32_f32_e32 v84, v33
	v_cvt_i32_f32_e32 v85, v32
	v_cvt_i32_f32_e32 v86, v31
	v_cvt_i32_f32_e32 v100, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v40, v[6:9]
	ds_store_b128 v40, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[11:14], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v79, v38
	v_cvt_i32_f32_e32 v87, v30
	v_cvt_i32_f32_e32 v88, v29
	v_cvt_i32_f32_e32 v98, v19
	v_and_b32_e32 v16, 15, v55
	v_and_b32_e32 v18, 15, v57
	v_and_b32_e32 v19, 15, v60
	v_and_b32_e32 v24, 15, v69
	v_and_b32_e32 v29, 15, v75
	v_and_b32_e32 v30, 15, v71
	v_and_b32_e32 v31, 15, v70
	v_and_b32_e32 v32, 15, v67
	v_and_b32_e32 v33, 15, v66
	v_and_b32_e32 v38, 15, v53
	v_and_b32_e32 v53, 15, v78
	v_and_b32_e32 v66, 15, v91
	v_and_b32_e32 v67, 15, v92
	v_and_b32_e32 v68, 15, v93
	v_and_b32_e32 v69, 15, v94
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v80, v37
	v_and_b32_e32 v25, 15, v72
	v_and_b32_e32 v26, 15, v73
	v_and_b32_e32 v36, 15, v59
	v_and_b32_e32 v37, 15, v58
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v77
	v_and_b32_e32 v58, 15, v83
	v_and_b32_e32 v59, 15, v84
	v_and_b32_e32 v60, 15, v85
	v_and_b32_e32 v61, 15, v86
	v_and_b32_e32 v75, 15, v100
	v_and_b32_e32 v77, 15, v101
	v_cvt_i32_f32_e32 v82, v35
	v_and_b32_e32 v34, 15, v63
	v_and_b32_e32 v35, 15, v62
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[28:31]
	ds_store_b128 v40, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v4
	ds_load_b128 v[28:31], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[50:53]
	ds_store_b128 v40, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v4
	ds_load_b128 v[50:53], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[66:69]
	ds_store_b128 v40, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[58:61], v4
	ds_load_b128 v[66:69], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[16:19]
	ds_store_b128 v40, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v4
	ds_load_b128 v[24:27], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v48
	v_and_b32_e32 v54, 15, v79
	v_and_b32_e32 v55, 15, v80
	v_and_b32_e32 v57, 15, v82
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[32:35]
	ds_store_b128 v40, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v4
	ds_load_b128 v[44:47], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v62, 15, v87
	v_and_b32_e32 v63, 15, v88
	v_and_b32_e32 v64, 15, v89
	v_and_b32_e32 v65, 15, v90
	v_and_b32_e32 v70, 15, v95
	v_and_b32_e32 v71, 15, v96
	v_and_b32_e32 v72, 15, v97
	v_and_b32_e32 v73, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[54:57]
	ds_store_b128 v40, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v4
	ds_load_b128 v[62:65], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v78, 15, v102
	v_and_b32_e32 v79, 15, v103
	v_and_b32_e32 v80, 15, v104
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v13, 4, v8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v40, v[70:73]
	ds_store_b128 v40, v[78:81] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[70:73], v4
	ds_load_b128 v[74:77], v4 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v4, s53, 7, v43
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v11, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v12, 4, v7
	v_lshl_or_b32 v14, v14, 4, v9
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	v_lshl_or_b32 v19, v27, 4, v19
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[4:5]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[4:5]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v24, v44, 4, v32
	v_lshl_or_b32 v25, v45, 4, v33
	v_lshl_or_b32 v26, v46, 4, v34
	v_lshl_or_b32 v27, v47, 4, v35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v14.l
	v_and_b16 v2.l, 0xff, v13.l
	v_lshlrev_b16 v4.l, 8, v7.l
	v_and_b16 v4.h, 0xff, v6.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v6.l, 0xff, v18.l
	v_lshlrev_b16 v6.h, 8, v17.l
	v_and_b16 v7.l, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v32, v62, 4, v54
	v_lshl_or_b32 v33, v63, 4, v55
	v_lshl_or_b32 v34, v64, 4, v56
	v_lshl_or_b32 v35, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v6.l, 0xff, v26.l
	v_lshlrev_b16 v6.h, 8, v25.l
	v_and_b16 v7.l, 0xff, v24.l
	s_and_b32 s9, s25, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s24
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v50, 4, v36
	v_lshl_or_b32 v29, v51, 4, v37
	v_lshl_or_b32 v30, v52, 4, v38
	v_lshl_or_b32 v31, v53, 4, v39
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v40, v74, 4, v70
	v_lshl_or_b32 v42, v75, 4, v71
	v_lshl_or_b32 v44, v76, 4, v72
	v_lshl_or_b32 v45, v77, 4, v73
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v6.l, 0xff, v34.l
	v_lshlrev_b16 v6.h, 8, v33.l
	v_and_b16 v7.l, 0xff, v32.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v66, 4, v58
	v_lshl_or_b32 v37, v67, 4, v59
	v_lshl_or_b32 v38, v68, 4, v60
	v_lshl_or_b32 v39, v69, 4, v61
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_or_b16 v9.h, v6.l, v5.l
	v_or_b16 v9.l, v7.l, v6.h
	v_lshlrev_b16 v5.l, 8, v45.l
	v_and_b16 v6.l, 0xff, v44.l
	v_lshlrev_b16 v6.h, 8, v42.l
	v_and_b16 v7.l, 0xff, v40.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v2.l, v1.l
	v_or_b16 v8.l, v4.h, v4.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_or_b16 v13.h, v6.l, v5.l
	v_or_b16 v13.l, v7.l, v6.h
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v0
	v_lshrrev_b32_e32 v7, 2, v41
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.h, v4.l
	v_cndmask_b32_e32 v4, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v4, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v15.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v5, v7, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s9, s27, 0xffff
	s_mov_b32 s8, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s53, 1
	s_and_b32 vcc_lo, vcc_lo, s54
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp54:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 212
		.amdhsa_next_free_sgpr 58
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 212
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 58
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15316
; TotalNumSgprs: 60
; NumVgprs: 212
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 26
; NumSGPRsForWavesPerEU: 60
; NumVGPRsForWavesPerEU: 212
; Occupancy: 7
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
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
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     60
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc64_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     212
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
