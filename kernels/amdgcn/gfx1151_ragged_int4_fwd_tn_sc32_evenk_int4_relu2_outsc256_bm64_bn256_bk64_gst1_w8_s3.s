	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[40:41], s[0:1], 0x5c
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v2, 63, v0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v13, 15, v0
	v_lshlrev_b32_e32 v16, 4, v0
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
	s_sub_i32 s5, s41, s4
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
	s_sub_i32 s41, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s41, s5
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
	s_load_b64 s[38:39], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[36:37], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s34, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s2
	v_add_nc_u32_e32 v9, s34, v2
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[36:37], v[3:4]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s40, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 8, v0
.Ltmp4:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v4, 16, v0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s34, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v19, 0 :: v_dual_and_b32 v14, 0xf0, v0
	v_lshrrev_b32_e32 v12, 4, v0
	v_dual_mov_b32 v18, 0 :: v_dual_lshlrev_b32 v15, 4, v13
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v25, 0 :: v_dual_mov_b32 v26, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v52, 0
	v_mov_b32_e32 v51, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x3
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s42, s[0:1], 0x50
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v18, 12, v12
	v_add_co_u32 v3, vcc_lo, v1, 16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, 0, v2, vcc_lo
	v_add_co_u32 v5, vcc_lo, v1, 32
	v_add_co_ci_u32_e64 v6, null, 0, v2, vcc_lo
	v_add_co_u32 v7, vcc_lo, v1, 48
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v8, null, 0, v2, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[36:37], v[1:2]
	v_dual_mov_b32 v92, 0 :: v_dual_add_nc_u32 v1, s34, v13
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[3:4]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s21, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[36:37], v[3:4]
	v_dual_mov_b32 v91, 0 :: v_dual_add_nc_u32 v2, 16, v1
	v_dual_mov_b32 v90, 0 :: v_dual_add_nc_u32 v3, 32, v1
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[38:39], v[7:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v24, v2, s40
	v_bfe_i32 v2, v0, 3, 1
	v_mul_lo_u32 v25, v3, s40
	v_bfe_i32 v3, v0, 4, 1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[36:37], v[7:8]
	v_dual_mov_b32 v81, 0 :: v_dual_lshlrev_b32 v8, 5, v0
	v_dual_mov_b32 v83, 0 :: v_dual_and_b32 v2, 0x88, v2
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v86, 0 :: v_dual_and_b32 v3, 0x108, v3
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[38:39], v[5:6]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[5:6]
	v_dual_mov_b32 v87, 0 :: v_dual_add_nc_u32 v4, 48, v1
	v_dual_mov_b32 v84, 0 :: v_dual_and_b32 v5, 0x270, v16
	v_and_or_b32 v6, 0x70, v16, v2
	v_xor3_b32 v2, v3, v18, v2
	v_lshrrev_b32_e32 v3, 1, v0
	v_dual_mov_b32 v79, 0 :: v_dual_lshlrev_b32 v10, 2, v14
	v_dual_mov_b32 v72, 0 :: v_dual_lshlrev_b32 v11, 1, v0
	v_dual_mov_b32 v77, 0 :: v_dual_and_b32 v8, 32, v8
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s5
	.loc	1 1045 18 is_stmt 1             ; ragged.py:1045:18
	s_lshl_b32 s5, s41, 8
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v23, v1, s40
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s5, v15
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v27, v4, s40
	v_dual_mov_b32 v85, 0 :: v_dual_add_nc_u32 v4, 0, v13
	v_dual_mov_b32 v82, 0 :: v_dual_add_nc_u32 v5, 0, v5
	v_xor_b32_e32 v7, 8, v6
	v_dual_mov_b32 v80, 0 :: v_dual_and_b32 v3, 0x70, v3
	v_dual_mov_b32 v71, 0 :: v_dual_and_b32 v20, 28, v11
	v_add3_u32 v8, 0, v10, v8
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s20, s20, s33
	v_xor_b32_e32 v19, 0x108, v6
	v_dual_mov_b32 v70, 0 :: v_dual_lshlrev_b32 v21, 1, v14
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s4, s7
	s_mov_b32 s4, 0
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[10:11], null, s20, s21, v[1:2]
	s_and_b32 s1, s1, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s43, s40, s21
	v_or_b32_e32 v62, s5, v0
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s24, s10
	s_mov_b32 s25, s11
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	v_dual_mov_b32 v68, 0 :: v_dual_add_nc_u32 v73, v5, v2
	v_dual_mov_b32 v69, 0 :: v_dual_add_nc_u32 v74, 0, v6
	v_dual_mov_b32 v66, 0 :: v_dual_add_nc_u32 v75, 0, v7
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v78, v4, v3
	v_dual_mov_b32 v63, 0 :: v_dual_add_nc_u32 v88, v8, v20
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v2, s5
	v_dual_mov_b32 v67, 0 :: v_dual_add_nc_u32 v76, 0, v19
	v_dual_mov_b32 v64, 0 :: v_dual_add_nc_u32 v89, 0, v21
	v_dual_mov_b32 v61, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v54, 0
	v_dual_mov_b32 v53, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v51, 0 :: v_dual_mov_b32 v50, 0
	v_dual_mov_b32 v49, 0 :: v_dual_mov_b32 v48, 0
	v_dual_mov_b32 v47, 0 :: v_dual_mov_b32 v46, 0
	v_dual_mov_b32 v45, 0 :: v_dual_mov_b32 v44, 0
	v_dual_mov_b32 v43, 0 :: v_dual_mov_b32 v42, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v31, 0 :: v_dual_mov_b32 v30, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v28, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v4, s7
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v7, s10 :: v_dual_mov_b32 v8, s11
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s28, s12
	s_mov_b32 s29, s13
	s_mov_b32 s30, s22
	s_mov_b32 s31, s23
	s_mov_b32 s12, s14
	s_mov_b32 s13, s15
	s_mov_b32 s14, s22
	s_mov_b32 s15, s23
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v94, 3, v18
	.loc	1 1138 28                       ; ragged.py:1138:28
	s_lshl_b32 s5, s4, 4
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v93, 1, v18
	v_or_b32_e32 v95, 2, v18
	v_or_b32_e32 v97, s5, v18
	v_or_b32_e32 v96, s5, v12
	v_or_b32_e32 v99, s5, v94
	v_or_b32_e32 v98, s5, v93
	v_or_b32_e32 v100, s5, v95
	v_mad_u64_u32 v[93:94], null, v97, s42, v[9:10]
	v_mad_u64_u32 v[94:95], null, v96, s33, v[10:11]
	v_mad_u64_u32 v[95:96], null, v99, s42, v[9:10]
	v_mad_u64_u32 v[96:97], null, v98, s42, v[9:10]
	v_mad_u64_u32 v[97:98], null, v100, s42, v[9:10]
	v_cndmask_b32_e64 v93, 0x80000000, v93, s2
	v_add_nc_u32_e32 v102, 0, v16
	v_cndmask_b32_e64 v95, 0x80000000, v95, s2
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s5, s4, s43
	v_cndmask_b32_e64 v96, 0x80000000, v96, s2
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v167, s4, v23, 1
	v_cndmask_b32_e64 v97, 0x80000000, v97, s2
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_clause 0x3
	buffer_load_u8 v98, v95, s[20:23], 0 offen
	buffer_load_u8 v99, v96, s[20:23], 0 offen
	buffer_load_u8 v100, v97, s[20:23], 0 offen
	buffer_load_u8 v101, v93, s[20:23], 0 offen
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_b128 v[93:96], v94, s[24:27], 0 offen
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v168, s4, v24, 1
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s5, s33
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v97.l, 8, v98.l
	s_waitcnt vmcnt(3)
	v_lshlrev_b16 v97.h, 8, v99.l
	s_waitcnt vmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b16 v98.h, v100.l, v97.l
	s_waitcnt vmcnt(1)
	v_or_b16 v98.l, v101.l, v97.h
	ds_store_b32 v73, v98
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[131:134], v74 offset1:32
	ds_load_2addr_b64 v[155:158], v74 offset0:64 offset1:96
	ds_load_2addr_stride64_b64 v[141:144], v75 offset1:1
	ds_load_2addr_stride64_b64 v[159:162], v76 offset1:1
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b128 v102, v[93:96]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v93, v78 offset:1280
	ds_load_u8 v94, v78 offset:1024
	ds_load_u8 v95, v78 offset:1920
	ds_load_u8 v96, v78 offset:1664
	ds_load_u8 v97, v78 offset:1408
	ds_load_u8 v98, v78 offset:1792
	ds_load_u8 v99, v78 offset:1536
	ds_load_u8 v100, v78 offset:1152
	ds_load_u8 v101, v78 offset:256
	ds_load_u8 v102, v78
	ds_load_u8 v103, v78 offset:896
	ds_load_u8 v104, v78 offset:640
	ds_load_u8 v105, v78 offset:384
	ds_load_u8 v106, v78 offset:768
	ds_load_u8 v107, v78 offset:512
	ds_load_u8 v108, v78 offset:128
	ds_load_u8 v109, v78 offset:3328
	ds_load_u8 v110, v78 offset:3072
	ds_load_u8 v111, v78 offset:3840
	ds_load_u8 v112, v78 offset:3584
	ds_load_u8 v113, v78 offset:2304
	ds_load_u8 v114, v78 offset:2048
	ds_load_u8 v115, v78 offset:2816
	ds_load_u8 v116, v78 offset:2560
	ds_load_u8 v117, v78 offset:3968
	ds_load_u8 v118, v78 offset:3712
	ds_load_u8 v119, v78 offset:3456
	ds_load_u8 v120, v78 offset:3200
	ds_load_u8 v121, v78 offset:2944
	ds_load_u8 v122, v78 offset:2688
	ds_load_u8 v123, v78 offset:2432
	ds_load_u8 v124, v78 offset:2176
	s_waitcnt lgkmcnt(30)
	v_perm_b32 v93, v94, v93, 0xc0c0004
	s_waitcnt lgkmcnt(25)
	v_perm_b32 v94, v99, v98, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v98, v102, v101, 0xc0c0004
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v99, v107, v106, 0xc0c0004
	v_perm_b32 v97, v100, v97, 0xc0c0004
	v_perm_b32 v95, v96, v95, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v96, v108, v105, 0xc0c0004
	v_perm_b32 v100, v104, v103, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v101, v110, v109, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v102, v112, v111, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v106, v114, v113, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v107, v116, v115, 0xc0c0004
	v_lshl_or_b32 v150, v94, 16, v93
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v104, v118, v117, 0xc0c0004
	v_lshl_or_b32 v149, v99, 16, v98
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v103, v120, v119, 0xc0c0004
	v_lshl_or_b32 v164, v95, 16, v97
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v108, v122, v121, 0xc0c0004
	v_lshl_or_b32 v163, v100, 16, v96
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v105, v124, v123, 0xc0c0004
	v_lshl_or_b32 v152, v102, 16, v101
	v_lshl_or_b32 v151, v107, 16, v106
	v_lshl_or_b32 v166, v104, 16, v103
	v_wmma_i32_16x16x16_iu4 v[109:116], v[163:164], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v165, v108, 16, v105
	v_wmma_i32_16x16x16_iu4 v[101:108], v[149:150], v[159:160], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[149:150], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[163:164], v[131:132], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[149:150], v[155:156], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[101:108], v[151:152], v[133:134], v[101:108] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[165:166], v[133:134], v[109:116] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[133:140], v[163:164], v[155:156], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[93:100], v[151:152], v[141:142], v[93:100] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[117:124], v[165:166], v[141:142], v[117:124] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[125:132], v[151:152], v[143:144], v[125:132] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[133:140], v[165:166], v[143:144], v[133:140] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[141:148], v[149:150], v[161:162], v[1:8] neg_lo:[1,1,0]
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v159, v62, s5, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e32 v160, 0x80000000, v167, vcc_lo
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[141:148], v[151:152], v[157:158], v[141:148] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[149:156], v[163:164], v[161:162], v[1:8] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v161, 0x80000000, v168, s0
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v93, v93
	v_cvt_f32_i32_e32 v94, v94
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[149:156], v[165:166], v[157:158], v[149:156] neg_lo:[1,1,0]
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v157, s4, v25, 1
	v_add_lshl_u32 v158, s4, v27, 1
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v96, v96
	v_cvt_f32_i32_e32 v97, v97
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v157, 0x80000000, v157, s1
	v_cndmask_b32_e64 v158, 0x80000000, v158, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v159, v159, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v160, v160, s[28:31], 0 offen
	buffer_load_u16 v161, v161, s[28:31], 0 offen
	buffer_load_u16 v157, v157, s[28:31], 0 offen
	buffer_load_u16 v158, v158, s[28:31], 0 offen
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v117, v117
	v_cvt_f32_i32_e32 v118, v118
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v121, v121
	v_cvt_f32_i32_e32 v122, v122
	v_cvt_f32_i32_e32 v123, v123
	v_cvt_f32_i32_e32 v124, v124
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v109, v109
	v_cvt_f32_i32_e32 v110, v110
	v_cvt_f32_i32_e32 v111, v111
	v_cvt_f32_i32_e32 v112, v112
	v_cvt_f32_i32_e32 v113, v113
	v_cvt_f32_i32_e32 v114, v114
	v_cvt_f32_i32_e32 v115, v115
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v116, v116
	v_cvt_f32_i32_e32 v125, v125
	v_cvt_f32_i32_e32 v126, v126
	v_cvt_f32_i32_e32 v127, v127
	v_cvt_f32_i32_e32 v128, v128
	v_cvt_f32_i32_e32 v129, v129
	v_cvt_f32_i32_e32 v130, v130
	v_cvt_f32_i32_e32 v131, v131
	v_cvt_f32_i32_e32 v132, v132
	v_cvt_f32_i32_e32 v133, v133
	v_cvt_f32_i32_e32 v134, v134
	v_cvt_f32_i32_e32 v135, v135
	v_cvt_f32_i32_e32 v136, v136
	v_cvt_f32_i32_e32 v137, v137
	v_cvt_f32_i32_e32 v138, v138
	v_cvt_f32_i32_e32 v139, v139
	v_cvt_f32_i32_e32 v140, v140
	v_cvt_f32_i32_e32 v141, v141
	v_cvt_f32_i32_e32 v142, v142
	v_cvt_f32_i32_e32 v143, v143
	v_cvt_f32_i32_e32 v144, v144
	v_cvt_f32_i32_e32 v145, v145
	v_cvt_f32_i32_e32 v146, v146
	v_cvt_f32_i32_e32 v147, v147
	v_cvt_f32_i32_e32 v148, v148
	v_cvt_f32_i32_e32 v149, v149
	v_cvt_f32_i32_e32 v150, v150
	v_cvt_f32_i32_e32 v151, v151
	v_cvt_f32_i32_e32 v152, v152
	v_cvt_f32_i32_e32 v153, v153
	v_cvt_f32_i32_e32 v154, v154
	v_cvt_f32_i32_e32 v155, v155
	v_cvt_f32_i32_e32 v156, v156
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s4, s4, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s4, s40
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v161, 16, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v169, v102, v161 :: v_dual_lshlrev_b32 v160, 16, v160
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v162, v94, v160 :: v_dual_lshlrev_b32 v159, 16, v159
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v164, v96, v160 :: v_dual_lshlrev_b32 v157, 16, v157
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v158, 16, v158
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_store_b32 v88, v159
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v159, v93, v160
	v_mul_f32_e32 v163, v95, v160
	v_dual_mul_f32 v165, v97, v160 :: v_dual_mul_f32 v170, v103, v161
	v_dual_mul_f32 v166, v98, v160 :: v_dual_mul_f32 v175, v108, v161
	v_dual_mul_f32 v167, v99, v160 :: v_dual_mul_f32 v172, v105, v161
	v_dual_mul_f32 v168, v100, v160 :: v_dual_mul_f32 v173, v106, v161
	v_dual_mul_f32 v117, v117, v160 :: v_dual_mul_f32 v174, v107, v161
	v_dual_mul_f32 v118, v118, v160 :: v_dual_mul_f32 v109, v109, v161
	v_dual_mul_f32 v119, v119, v160 :: v_dual_mul_f32 v110, v110, v161
	v_dual_mul_f32 v120, v120, v160 :: v_dual_mul_f32 v111, v111, v161
	v_dual_mul_f32 v121, v121, v160 :: v_dual_mul_f32 v112, v112, v161
	v_dual_mul_f32 v122, v122, v160 :: v_dual_mul_f32 v113, v113, v161
	v_dual_mul_f32 v123, v123, v160 :: v_dual_mul_f32 v114, v114, v161
	v_dual_mul_f32 v124, v124, v160 :: v_dual_mul_f32 v115, v115, v161
	v_mul_f32_e32 v160, v101, v161
	v_mul_f32_e32 v171, v104, v161
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[93:96], v89
	ds_load_b128 v[97:100], v89 offset:16
	ds_load_b128 v[101:104], v89 offset:512
	ds_load_b128 v[105:108], v89 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v116, v116, v161 :: v_dual_mul_f32 v141, v141, v158
	v_dual_mul_f32 v125, v125, v157 :: v_dual_mul_f32 v142, v142, v158
	v_dual_mul_f32 v126, v126, v157 :: v_dual_mul_f32 v143, v143, v158
	v_dual_mul_f32 v127, v127, v157 :: v_dual_mul_f32 v144, v144, v158
	v_dual_mul_f32 v128, v128, v157 :: v_dual_mul_f32 v145, v145, v158
	v_dual_mul_f32 v129, v129, v157 :: v_dual_mul_f32 v146, v146, v158
	v_dual_mul_f32 v130, v130, v157 :: v_dual_mul_f32 v147, v147, v158
	v_dual_mul_f32 v131, v131, v157 :: v_dual_mul_f32 v148, v148, v158
	v_dual_mul_f32 v132, v132, v157 :: v_dual_mul_f32 v149, v149, v158
	v_dual_mul_f32 v133, v133, v157 :: v_dual_mul_f32 v150, v150, v158
	v_dual_mul_f32 v134, v134, v157 :: v_dual_mul_f32 v151, v151, v158
	v_dual_mul_f32 v135, v135, v157 :: v_dual_mul_f32 v152, v152, v158
	v_dual_mul_f32 v136, v136, v157 :: v_dual_mul_f32 v153, v153, v158
	v_dual_mul_f32 v137, v137, v157 :: v_dual_mul_f32 v154, v154, v158
	v_dual_mul_f32 v138, v138, v157 :: v_dual_mul_f32 v155, v155, v158
	v_dual_mul_f32 v139, v139, v157 :: v_dual_mul_f32 v156, v156, v158
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v140, v140, v157 :: v_dual_fmac_f32 v91, v163, v95
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v17, v159, v93 :: v_dual_fmac_f32 v92, v162, v94
	v_dual_fmac_f32 v90, v164, v96 :: v_dual_fmac_f32 v69, v169, v94
	v_dual_fmac_f32 v70, v160, v93 :: v_dual_fmac_f32 v67, v171, v96
	v_dual_fmac_f32 v68, v170, v95 :: v_dual_fmac_f32 v53, v125, v93
	v_dual_fmac_f32 v52, v126, v94 :: v_dual_fmac_f32 v51, v127, v95
	v_dual_fmac_f32 v50, v128, v96 :: v_dual_fmac_f32 v37, v141, v93
	v_dual_fmac_f32 v36, v142, v94 :: v_dual_fmac_f32 v35, v143, v95
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v34, v144, v96 :: v_dual_fmac_f32 v87, v165, v97
	v_dual_fmac_f32 v86, v166, v98 :: v_dual_fmac_f32 v85, v167, v99
	s_waitcnt lgkmcnt(1)
	v_dual_fmac_f32 v84, v168, v100 :: v_dual_fmac_f32 v83, v117, v101
	v_dual_fmac_f32 v82, v118, v102 :: v_dual_fmac_f32 v81, v119, v103
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v80, v120, v104 :: v_dual_fmac_f32 v79, v121, v105
	v_dual_fmac_f32 v77, v122, v106 :: v_dual_fmac_f32 v72, v123, v107
	v_dual_fmac_f32 v71, v124, v108 :: v_dual_fmac_f32 v64, v174, v99
	v_dual_fmac_f32 v66, v172, v97 :: v_dual_fmac_f32 v65, v173, v98
	v_dual_fmac_f32 v63, v175, v100 :: v_dual_fmac_f32 v60, v110, v102
	v_dual_fmac_f32 v61, v109, v101 :: v_dual_fmac_f32 v58, v112, v104
	v_dual_fmac_f32 v59, v111, v103 :: v_dual_fmac_f32 v56, v114, v106
	v_dual_fmac_f32 v57, v113, v105 :: v_dual_fmac_f32 v54, v116, v108
	v_dual_fmac_f32 v55, v115, v107 :: v_dual_fmac_f32 v48, v130, v98
	v_dual_fmac_f32 v49, v129, v97 :: v_dual_fmac_f32 v46, v132, v100
	v_dual_fmac_f32 v47, v131, v99 :: v_dual_fmac_f32 v44, v134, v102
	v_dual_fmac_f32 v45, v133, v101 :: v_dual_fmac_f32 v42, v136, v104
	v_dual_fmac_f32 v43, v135, v103 :: v_dual_fmac_f32 v40, v138, v106
	v_dual_fmac_f32 v41, v137, v105 :: v_dual_fmac_f32 v38, v140, v108
	v_dual_fmac_f32 v39, v139, v107 :: v_dual_fmac_f32 v32, v146, v98
	v_dual_fmac_f32 v33, v145, v97 :: v_dual_fmac_f32 v30, v148, v100
	v_dual_fmac_f32 v31, v147, v99 :: v_dual_fmac_f32 v28, v150, v102
	v_dual_fmac_f32 v29, v149, v101 :: v_dual_fmac_f32 v26, v151, v103
	v_dual_fmac_f32 v22, v152, v104 :: v_dual_fmac_f32 v21, v153, v105
	v_dual_fmac_f32 v20, v154, v106 :: v_dual_fmac_f32 v19, v155, v107
	v_fmac_f32_e32 v11, v156, v108
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v5, v87, v87 :: v_dual_max_f32 v6, v86, v86
	v_dual_max_f32 v7, v85, v85 :: v_dual_max_f32 v8, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, v83, v83 :: v_dual_max_f32 v5, 0, v5
	v_dual_max_f32 v27, v72, v72 :: v_dual_max_f32 v62, v71, v71
	v_dual_max_f32 v70, v70, v70 :: v_dual_max_f32 v69, v69, v69
	v_dual_max_f32 v68, v68, v68 :: v_dual_max_f32 v27, 0, v27
	v_dual_max_f32 v61, v61, v61 :: v_dual_max_f32 v60, v60, v60
	v_dual_max_f32 v59, v59, v59 :: v_dual_max_f32 v58, v58, v58
	v_max_f32_e32 v57, v57, v57
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, v28, v28
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v1, v17, v17
	v_dual_max_f32 v2, v92, v92 :: v_dual_max_f32 v3, v91, v91
	v_max_f32_e32 v4, v90, v90
	v_dual_max_f32 v8, 0, v8 :: v_dual_max_f32 v17, v82, v82
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v23, v80, v80
	v_max_f32_e32 v18, v81, v81
	v_dual_max_f32 v24, v79, v79 :: v_dual_max_f32 v25, v77, v77
	v_dual_max_f32 v70, 0, v70 :: v_dual_max_f32 v67, v67, v67
	v_dual_max_f32 v68, 0, v68 :: v_dual_max_f32 v65, v65, v65
	v_dual_max_f32 v66, v66, v66 :: v_dual_max_f32 v63, v63, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_dual_max_f32 v64, v64, v64 :: v_dual_max_f32 v73, 0, v67
	v_dual_max_f32 v84, 0, v60 :: v_dual_max_f32 v85, 0, v59
	v_dual_max_f32 v56, v56, v56 :: v_dual_max_f32 v87, 0, v57
	v_dual_max_f32 v54, v54, v54 :: v_dual_max_f32 v55, v55, v55
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v53, v53, v53
	v_dual_max_f32 v88, 0, v56 :: v_dual_max_f32 v51, v51, v51
	v_dual_max_f32 v50, v50, v50 :: v_dual_max_f32 v49, v49, v49
	v_dual_max_f32 v48, v48, v48 :: v_dual_max_f32 v47, v47, v47
	v_dual_max_f32 v46, v46, v46 :: v_dual_max_f32 v45, v45, v45
	v_dual_max_f32 v44, v44, v44 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v42, v42, v42 :: v_dual_max_f32 v41, v41, v41
	v_dual_max_f32 v40, v40, v40 :: v_dual_max_f32 v39, v39, v39
	v_dual_max_f32 v38, v38, v38 :: v_dual_max_f32 v37, v37, v37
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v33, v33, v33
	v_dual_max_f32 v32, v32, v32 :: v_dual_max_f32 v31, v31, v31
	v_max_f32_e32 v30, v30, v30
	v_dual_max_f32 v114, 0, v29 :: v_dual_max_f32 v19, v19, v19
	v_dual_max_f32 v115, 0, v28 :: v_dual_max_f32 v116, 0, v26
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v20, v20, v20
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	v_max_f32_e32 v23, 0, v23
	v_dual_max_f32 v17, 0, v17 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v24, 0, v24 :: v_dual_max_f32 v25, 0, v25
	v_dual_max_f32 v62, 0, v62 :: v_dual_max_f32 v71, 0, v69
	v_dual_max_f32 v80, 0, v66 :: v_dual_max_f32 v65, 0, v65
	v_dual_max_f32 v81, 0, v64 :: v_dual_max_f32 v82, 0, v63
	v_dual_max_f32 v83, 0, v61 :: v_dual_max_f32 v86, 0, v58
	v_dual_max_f32 v89, 0, v55 :: v_dual_max_f32 v90, 0, v54
	v_dual_max_f32 v91, 0, v53 :: v_dual_max_f32 v92, 0, v52
	v_dual_max_f32 v93, 0, v51 :: v_dual_max_f32 v48, 0, v48
	v_dual_max_f32 v94, 0, v50 :: v_dual_max_f32 v95, 0, v49
	v_dual_max_f32 v96, 0, v47 :: v_dual_max_f32 v97, 0, v46
	v_dual_max_f32 v98, 0, v45 :: v_dual_max_f32 v99, 0, v44
	v_dual_max_f32 v100, 0, v43 :: v_dual_max_f32 v101, 0, v42
	v_dual_max_f32 v102, 0, v41 :: v_dual_max_f32 v103, 0, v40
	v_dual_max_f32 v104, 0, v39 :: v_dual_max_f32 v105, 0, v38
	v_dual_max_f32 v106, 0, v37 :: v_dual_max_f32 v107, 0, v36
	v_dual_max_f32 v108, 0, v35 :: v_dual_max_f32 v109, 0, v34
	v_dual_max_f32 v110, 0, v33 :: v_dual_max_f32 v111, 0, v32
	v_dual_max_f32 v112, 0, v31 :: v_dual_max_f32 v113, 0, v30
	v_dual_max_f32 v117, 0, v22 :: v_dual_max_f32 v118, 0, v21
	v_dual_max_f32 v119, 0, v20 :: v_dual_max_f32 v120, 0, v19
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v51, v1, v1
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v121, 0, v11 :: v_dual_mul_f32 v52, v2, v2
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v55, v3, v3 :: v_dual_mul_f32 v56, v4, v4
	v_dual_mul_f32 v59, v5, v5 :: v_dual_mul_f32 v60, v6, v6
	v_dual_mul_f32 v63, v7, v7 :: v_dual_mul_f32 v64, v8, v8
	v_dual_mul_f32 v66, v10, v10 :: v_dual_mul_f32 v67, v17, v17
	v_dual_mul_f32 v69, v18, v18 :: v_dual_mul_f32 v72, v23, v23
	v_dual_mul_f32 v74, v24, v24 :: v_dual_mul_f32 v75, v25, v25
	v_dual_mul_f32 v78, v27, v27 :: v_dual_mul_f32 v79, v62, v62
	v_dual_mul_f32 v77, v70, v70 :: v_dual_mul_f32 v76, v71, v71
	v_dual_mul_f32 v71, v68, v68 :: v_dual_mul_f32 v70, v73, v73
	v_dual_mul_f32 v68, v80, v80 :: v_dual_mul_f32 v65, v65, v65
	v_dual_mul_f32 v62, v81, v81 :: v_dual_mul_f32 v61, v82, v82
	v_dual_mul_f32 v58, v83, v83 :: v_dual_mul_f32 v57, v84, v84
	v_dual_mul_f32 v54, v85, v85 :: v_dual_mul_f32 v53, v86, v86
	v_dual_mul_f32 v50, v87, v87 :: v_dual_mul_f32 v49, v88, v88
	v_dual_mul_f32 v47, v89, v89 :: v_dual_mul_f32 v46, v90, v90
	v_dual_mul_f32 v45, v91, v91 :: v_dual_mul_f32 v44, v92, v92
	v_dual_mul_f32 v43, v93, v93 :: v_dual_mul_f32 v42, v94, v94
	v_dual_mul_f32 v41, v95, v95 :: v_dual_mul_f32 v40, v48, v48
	v_dual_mul_f32 v39, v96, v96 :: v_dual_mul_f32 v38, v97, v97
	v_dual_mul_f32 v37, v98, v98 :: v_dual_mul_f32 v36, v99, v99
	v_dual_mul_f32 v35, v100, v100 :: v_dual_mul_f32 v34, v101, v101
	v_dual_mul_f32 v33, v102, v102 :: v_dual_mul_f32 v32, v103, v103
	v_dual_mul_f32 v31, v104, v104 :: v_dual_mul_f32 v30, v105, v105
	v_dual_mul_f32 v29, v106, v106 :: v_dual_mul_f32 v28, v107, v107
	v_dual_mul_f32 v27, v108, v108 :: v_dual_mul_f32 v26, v109, v109
	v_dual_mul_f32 v25, v110, v110 :: v_dual_mul_f32 v24, v111, v111
	v_dual_mul_f32 v23, v112, v112 :: v_dual_mul_f32 v22, v113, v113
	v_dual_mul_f32 v21, v114, v114 :: v_dual_mul_f32 v20, v115, v115
	v_dual_mul_f32 v11, v116, v116 :: v_dual_mul_f32 v6, v118, v118
	v_dual_mul_f32 v7, v117, v117 :: v_dual_and_b32 v4, 16, v0
	v_dual_mul_f32 v8, v121, v121 :: v_dual_and_b32 v1, 8, v0
	v_dual_mul_f32 v19, v119, v119 :: v_dual_mul_f32 v18, v120, v120
	v_mov_b32_e32 v3, v9
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v52, v52 :: v_dual_max_f32 v5, v51, v51
	v_max3_f32 v9, v56, v59, v60
	v_max3_f32 v10, v67, v69, v72
	v_max3_f32 v17, v74, v75, v78
	v_max_f32_e32 v48, v77, v77
	v_dual_max_f32 v2, v5, v2 :: v_dual_max_f32 v5, v76, v76
	v_max3_f32 v83, v36, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v10, v10, v17, v79
	v_max_f32_e32 v17, v45, v45
	v_max3_f32 v2, v2, v55, v9
	v_max_f32_e32 v9, v44, v44
	v_max3_f32 v84, v33, v32, v31
	v_max3_f32 v81, v57, v54, v53
	v_max3_f32 v82, v50, v49, v47
	v_max3_f32 v73, v63, v64, v66
	v_max_f32_e32 v9, v17, v9
	v_max3_f32 v17, v42, v41, v40
	v_max3_f32 v80, v62, v61, v58
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v2, v2, v73, v10
	v_max3_f32 v73, v20, v11, v7
	v_max3_f32 v9, v9, v43, v17
	v_max3_f32 v17, v83, v84, v30
	v_max_f32_e32 v83, v29, v29
	v_max_f32_e32 v5, v48, v5
	v_max3_f32 v48, v70, v68, v65
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp7:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	s_mov_b32 s15, 0x31027000
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v71, v48
	v_max3_f32 v48, v81, v82, v46
	v_max3_f32 v81, v39, v38, v37
	v_max_f32_e32 v82, v28, v28
	s_mov_b32 s14, 0x7ffffffe
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v84, 0x80, v0
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v5, v5, v80, v48
	v_max3_f32 v9, v9, v81, v17
	v_max_f32_e32 v10, v83, v82
	v_max3_f32 v17, v26, v25, v24
	v_max3_f32 v80, v6, v19, v18
	v_max3_f32 v48, v23, v22, v21
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v81, v5, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v82, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v10, v10, v27, v17
	v_max3_f32 v73, v73, v80, v8
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v17, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v82, v82, v82
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v86, 3, v84
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v48, v10, v48, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v17, v17, v17
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v73, 3, v0
	v_permlanex16_b32 v10, v48, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v2, v17
	v_dual_max_f32 v82, v9, v82 :: v_dual_lshlrev_b32 v9, 5, v73
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v83, v10, v10 :: v_dual_and_b32 v2, 4, v0
	v_dual_max_f32 v81, v5, v81 :: v_dual_lshlrev_b32 v10, 1, v84
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v73, 9, 0
	v_and_b32_e32 v17, 0x60, v0
	v_and_or_b32 v16, 0x680, v16, v9
	v_lshl_add_u32 v87, v2, 6, 0
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v83, v48, v83
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v2, 2, v5
	v_xor_b32_e32 v85, v9, v17
	v_xor_b32_e32 v16, v16, v17
	v_add_nc_u32_e32 v84, 0, v84
	v_lshlrev_b32_e32 v2, 5, v2
	v_lshl_add_u32 v5, v1, 4, v5
	v_lshlrev_b32_e32 v1, 3, v1
	v_add3_u32 v16, v87, v86, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_add3_u32 v5, v5, v10, v85
	ds_store_b128 v5, v[80:83]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v16
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v5, v80 :: v_dual_mov_b32 v16, v81
	v_mov_b32_e32 v48, v82
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v16, v16, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v48, v48, v48
	v_max_f32_e32 v5, v80, v5
	v_max_f32_e32 v85, v83, v83
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v16, v81, v16
	v_max_f32_e32 v80, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v82, v5 :: v_dual_max_f32 v81, v83, v83
	v_mov_b32_e32 v83, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v80, v48
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v85, v81
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v82, v82, v82 :: v_dual_max_f32 v83, v83, v83
	v_dual_max_f32 v5, v5, v82 :: v_dual_max_f32 v16, v16, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v83, v5
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v85, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v85, v85 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v81, v48 :: v_dual_max_f32 v82, v85, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v86, v80, v82 :: v_dual_max_f32 v81, v81, v81
	v_dual_max_f32 v80, v83, v83 :: v_dual_mov_b32 v85, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v87, v86 :: v_dual_max_f32 v48, v48, v81
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v5, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v85, v85 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v87, v87 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v82, v48 :: v_dual_max_f32 v81, v85, v85
	v_lshrrev_b32_e32 v85, 1, v17
	v_mov_b32_dpp v82, v82 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v81, v16, v81 :: v_dual_max_f32 v16, v87, v87
	v_max_f32_e32 v5, v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v83, v86, v16
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v16, v84, v85, v1
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v48, v5
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v5, v73, 4, 0
.Ltmp42:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v48, 32, v12
	v_or_b32_e32 v73, 16, v12
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v16, v[80:83]
	v_add3_u32 v1, v5, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[80:83], v1
.Ltmp44:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v82, v82, v82 :: v_dual_max_f32 v1, v80, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v5, 0x2b8cbccc, v1
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v1, 48, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v16, null, 0x40e00000, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v1
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v80, v16
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v84, s0, s34, v48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v48, 0x2b8cbccc, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v85, null, s35, 0, s0
	v_add_co_u32 v86, s0, s34, v73
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v89, null, 0x40e00000, 0x40e00000, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v16, v80, 1.0
	v_max_f32_e32 v73, v81, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v87, null, s35, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v81, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v82, v80
	v_div_scale_f32 v88, vcc_lo, v5, 0x40e00000, v5
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[36:37], v[1:2]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_max_f32 v73, 0x2b8cbccc, v73 :: v_dual_mul_f32 v82, v88, v80
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[38:39], v[84:85]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[36:37], v[84:85]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v2, -v89, v81, 1.0
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v73
	v_fma_f32 v1, -v16, v82, v88
	v_max_f32_e32 v83, v83, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v2, v81
	v_div_scale_f32 v2, s7, v48, 0x40e00000, v48
	v_dual_fmac_f32 v82, v1, v80 :: v_dual_max_f32 v83, 0x2b8cbccc, v83
	v_rcp_f32_e32 v92, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, 0
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[38:39], v[86:87]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v16, v82, v88
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[36:37], v[86:87]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v1, v1, v80, v82
	v_mul_f32_e32 v80, v2, v81
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v90, v92, 1.0
	v_div_fixup_f32 v1, v1, 0x40e00000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v5, -v89, v80, v2
	v_rcp_f32_e32 v16, v91
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v92, v82, v92
	v_div_scale_f32 v82, s8, v73, 0x40e00000, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v88, v82, v92
	v_fma_f32 v85, -v91, v16, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v86, -v90, v88, v82
	v_fmac_f32_e32 v16, v85, v16
	v_fmac_f32_e32 v80, v5, v81
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v5.l, v1.h
	v_mov_b16_e32 v5.h, v84.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v85, s9, v83, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v2, -v89, v80, v2
	v_dual_fmac_f32 v88, v86, v92 :: v_dual_and_b32 v5, 1, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v2, v81, v80
	s_mov_b32 vcc_lo, s8
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v1, v5, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v87, v85, v16
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v1, s7, s34, v12
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v48, v80, 0x40e00000, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v86, 0xffff0000, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v91, v87, v85
	v_fma_f32 v80, -v90, v88, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s35, 0, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v48.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_fmac_f32_e32 v87, v81, v16
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v86, v86, v51
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v80, v80, v92, v88
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v91, v87, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v81
	v_div_scale_f32 v92, s9, v52, v86, v52
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v73, v80, 0x40e00000, v73
	v_div_fmas_f32 v16, v85, v16, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v86, v86, v52
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[38:39], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[36:37], v[1:2]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fixup_f32 v83, v16, 0x40e00000, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v81, v82, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v16.l, v73.h
	v_mov_b16_e32 v16.h, v84.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v88, v85
	v_div_scale_f32 v96, null, v86, v86, v59
	v_fmac_f32_e32 v82, v87, v82
	v_div_scale_f32 v87, vcc_lo, v51, v86, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v86, v86, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v87, v82
	v_div_scale_f32 v90, null, v86, v86, v55
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v16, v73, v2, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v81, v89, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v84
	v_mov_b16_e32 v84.l, v83.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v73, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v48, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v48, -v85, v88, 1.0
	v_fma_f32 v81, -v81, v89, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v88, v48, v88 :: v_dual_and_b32 v73, 0xffff0000, v1
	v_mul_f32_e32 v93, v92, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v81, v81, v82, v89
	v_div_scale_f32 v89, s11, v56, v86, v56
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v85, v93, v92
	v_div_fixup_f32 v51, v81, v86, v51
	v_fmac_f32_e32 v93, v87, v88
	v_rcp_f32_e32 v87, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v93, v92
	v_fma_f32 v98, -v96, v87, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v84
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v87, v98, v87
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v83, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v83, v91
	v_div_scale_f32 v98, null, v86, v86, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v48, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v94, -v90, v84, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v95, -v91, v83, 1.0
	v_fmac_f32_e32 v83, v95, v83
	v_div_scale_f32 v95, null, v86, v86, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v92, v89, v83
	v_rcp_f32_e32 v97, v95
	v_div_fmas_f32 v81, v81, v88, v93
	v_div_scale_f32 v88, s9, v59, v86, v59
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v81, v86, v52
	v_fma_f32 v93, -v95, v97, 1.0
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, s10, v55, v86, v55
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v97, v93, v97
	v_div_scale_f32 v93, null, v86, v86, v63
	v_mul_f32_e32 v82, v94, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v90, v82, v94
	v_fmac_f32_e32 v82, v85, v84
	v_fma_f32 v85, -v91, v92, v89
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v90, v82, v94
	v_fmac_f32_e32 v92, v85, v83
	v_mul_f32_e32 v85, v88, v87
	v_div_scale_f32 v90, s12, v60, v86, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v91, v92, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v96, v85, v88
	v_mul_f32_e32 v91, v90, v97
	v_div_scale_f32 v94, null, v86, v86, v64
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v85, v84, v87
	v_fma_f32 v84, -v95, v91, v90
	v_rcp_f32_e32 v89, v93
	v_div_fixup_f32 v55, v81, v86, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v96, v85, v88
	v_fmac_f32_e32 v91, v84, v97
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v88, null, v86, v86, v66
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v93, v89, 1.0
	v_div_fmas_f32 v81, v81, v87, v85
	v_fma_f32 v85, -v95, v91, v90
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v56, v82, v86, v56
	v_fmac_f32_e32 v89, v92, v89
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v94, v83, 1.0
	v_div_scale_f32 v92, null, v86, v86, v67
	v_div_fmas_f32 v85, v85, v97, v91
	v_div_scale_f32 v82, s10, v63, v86, v63
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v88
	v_rcp_f32_e32 v97, v92
	v_div_scale_f32 v90, s9, v64, v86, v64
	v_div_fixup_f32 v59, v81, v86, v59
	v_div_fixup_f32 v60, v85, v86, v60
	v_div_scale_f32 v85, s11, v66, v86, v66
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v88, v84, 1.0
	v_dual_mul_f32 v87, v82, v89 :: v_dual_fmac_f32 v84, v96, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v96, -v92, v97, 1.0
	v_fma_f32 v91, -v93, v87, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s12, v67, v86, v67
	v_mul_f32_e32 v95, v90, v83
	v_fmac_f32_e32 v87, v91, v89
	v_div_scale_f32 v91, null, v86, v86, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v94, v95, v90
	v_fma_f32 v82, -v93, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v95, v81, v83
	v_mul_f32_e32 v81, v85, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v89, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v87, -v94, v95, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v88, v81, v85
	v_mul_f32_e32 v90, v96, v97
	v_fma_f32 v94, -v91, v93, 1.0
	v_div_fixup_f32 v63, v82, v86, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v89, v84
	v_fma_f32 v89, -v92, v90, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, s9, v69, v86, v69
	v_fma_f32 v82, -v88, v81, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v90, v89, v97
	v_div_fmas_f32 v83, v87, v83, v95
	v_rcp_f32_e32 v87, v98
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, null, v86, v86, v74
	v_div_fixup_f32 v64, v83, v86, v64
	v_mul_f32_e32 v83, v94, v93
	v_div_fmas_f32 v81, v82, v84, v81
	v_fma_f32 v82, -v92, v90, v96
	v_div_scale_f32 v92, null, v86, v86, v75
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v85, -v98, v87, 1.0
	v_fma_f32 v84, -v91, v83, v94
	v_div_scale_f32 v89, s10, v72, v86, v72
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v87, v85, v87
	v_rcp_f32_e32 v85, v88
	v_fmac_f32_e32 v83, v84, v93
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v82, v82, v97, v90
	v_mul_f32_e32 v90, v89, v87
	v_div_fixup_f32 v66, v81, v86, v66
	v_fma_f32 v81, -v91, v83, v94
	v_div_scale_f32 v91, s11, v74, v86, v74
	v_div_fixup_f32 v67, v82, v86, v67
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v95, -v88, v85, 1.0
	v_fma_f32 v82, -v98, v90, v89
	v_fma_f32 v94, -v92, v84, 1.0
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v95, null, v86, v86, v78
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v86, v86, v79
	v_div_fmas_f32 v81, v81, v93, v83
	v_fmac_f32_e32 v90, v82, v87
	v_mul_f32_e32 v82, v91, v85
	v_rcp_f32_e32 v83, v95
	v_div_scale_f32 v93, s9, v75, v86, v75
	v_rcp_f32_e32 v97, v94
	v_div_fixup_f32 v69, v81, v86, v69
	v_fma_f32 v81, -v98, v90, v89
	v_fma_f32 v89, -v88, v82, v91
	v_mul_f32_e32 v96, v93, v84
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v98, -v95, v83, 1.0
	v_div_fmas_f32 v81, v81, v87, v90
	v_fmac_f32_e32 v82, v89, v85
	v_fma_f32 v87, -v92, v96, v93
	v_fma_f32 v90, -v94, v97, 1.0
	v_fmac_f32_e32 v83, v98, v83
	v_div_scale_f32 v89, s10, v78, v86, v78
	v_div_fixup_f32 v72, v81, v86, v72
	v_fma_f32 v81, -v88, v82, v91
	v_dual_fmac_f32 v96, v87, v84 :: v_dual_fmac_f32 v97, v90, v97
	v_div_scale_f32 v90, null, v80, v80, v77
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v87, v89, v83
	v_div_scale_f32 v88, s12, v79, v86, v79
	v_div_fmas_f32 v81, v81, v85, v82
	v_fma_f32 v82, -v92, v96, v93
	v_rcp_f32_e32 v91, v90
	v_div_scale_f32 v93, null, v80, v80, v76
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v95, v87, v89
	v_mul_f32_e32 v92, v88, v97
	v_div_fmas_f32 v82, v82, v84, v96
	v_rcp_f32_e32 v84, v93
	v_div_fixup_f32 v74, v81, v86, v74
	v_fmac_f32_e32 v87, v85, v83
	v_fma_f32 v85, -v94, v92, v88
	v_fma_f32 v96, -v90, v91, 1.0
	v_div_fixup_f32 v75, v82, v86, v75
	v_div_scale_f32 v82, s9, v77, v80, v77
	v_fma_f32 v81, -v95, v87, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v92, v85, v97 :: v_dual_fmac_f32 v91, v96, v91
	v_fma_f32 v85, -v93, v84, 1.0
	v_div_scale_f32 v89, null, v80, v80, v71
	s_mov_b32 vcc_lo, s10
	v_div_fmas_f32 v81, v81, v83, v87
	v_fma_f32 v83, -v94, v92, v88
	v_dual_mul_f32 v87, v82, v91 :: v_dual_fmac_f32 v84, v85, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v88, s10, v76, v80, v76
	v_div_scale_f32 v94, null, v80, v80, v70
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v95, v88, v84
	v_div_fmas_f32 v83, v83, v97, v92
	v_fma_f32 v92, -v90, v87, v82
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v89, v85, 1.0
	v_div_fixup_f32 v78, v81, v86, v78
	v_fma_f32 v81, -v93, v95, v88
	v_fmac_f32_e32 v87, v92, v91
	v_div_fixup_f32 v79, v83, v86, v79
	v_fmac_f32_e32 v85, v96, v85
	v_div_scale_f32 v83, s11, v71, v80, v71
	v_div_scale_f32 v86, null, v80, v80, v68
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v94, v97, 1.0
	v_fma_f32 v82, -v90, v87, v82
	v_fmac_f32_e32 v95, v81, v84
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v83, v85
	v_rcp_f32_e32 v90, v86
	v_fmac_f32_e32 v97, v92, v97
	v_div_scale_f32 v92, s12, v70, v80, v70
	v_div_fmas_f32 v82, v82, v91, v87
	v_fma_f32 v87, -v93, v95, v88
	v_div_scale_f32 v96, null, v80, v80, v65
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v88, -v89, v81, v83
	v_mul_f32_e32 v91, v92, v97
	v_div_fmas_f32 v84, v87, v84, v95
	v_rcp_f32_e32 v87, v96
	v_fma_f32 v93, -v86, v90, 1.0
	v_fmac_f32_e32 v81, v88, v85
	v_fma_f32 v88, -v94, v91, v92
	v_div_fixup_f32 v76, v84, v80, v76
	v_div_fixup_f32 v77, v82, v80, v77
	v_fmac_f32_e32 v90, v93, v90
	v_div_scale_f32 v93, s9, v68, v80, v68
	v_fmac_f32_e32 v91, v88, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v96, v87, 1.0
	v_div_scale_f32 v88, null, v80, v80, v62
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v93, v90
	v_fmac_f32_e32 v87, v84, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v88
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s10, v65, v80, v65
	v_div_fmas_f32 v81, v82, v85, v81
	v_fma_f32 v82, -v94, v91, v92
	v_fma_f32 v85, -v86, v83, v93
	v_div_scale_f32 v92, null, v80, v80, v61
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v88, v84, 1.0
	v_fmac_f32_e32 v83, v85, v90
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v82, v82, v97, v91
	v_mul_f32_e32 v91, v89, v87
	v_div_fixup_f32 v71, v81, v80, v71
	v_fma_f32 v81, -v86, v83, v93
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v80, v80, v58
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v70, v82, v80, v70
	v_fma_f32 v82, -v96, v91, v89
	v_div_scale_f32 v86, s11, v62, v80, v62
	v_fma_f32 v93, -v92, v85, 1.0
	v_div_fmas_f32 v81, v81, v90, v83
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v91, v82, v87
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v82, v86, v84 :: v_dual_fmac_f32 v85, v93, v85
	v_div_scale_f32 v90, s9, v61, v80, v61
	v_div_scale_f32 v93, null, v80, v80, v57
	v_div_fixup_f32 v68, v81, v80, v68
	v_fma_f32 v81, -v96, v91, v89
	v_fma_f32 v89, -v88, v82, v86
	v_mul_f32_e32 v95, v90, v85
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v82, v89, v84
	v_div_fmas_f32 v81, v81, v87, v91
	v_fma_f32 v87, -v92, v95, v90
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s10, v58, v80, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v65, v81, v80, v65
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v81, -v88, v82, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v95, v87, v85 :: v_dual_mul_f32 v86, v89, v83
	v_div_scale_f32 v88, null, v80, v80, v54
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v87, s12, v57, v80, v57
	v_div_fmas_f32 v81, v81, v84, v82
	v_fma_f32 v82, -v92, v95, v90
	v_fma_f32 v84, -v94, v86, v89
	v_rcp_f32_e32 v90, v88
	v_div_scale_f32 v92, null, v80, v80, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v91, v87, v96 :: v_dual_fmac_f32 v86, v84, v83
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v84, v92
	v_div_fmas_f32 v82, v82, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v93, v91, v87
	v_div_fixup_f32 v62, v81, v80, v62
	v_fma_f32 v95, -v88, v90, 1.0
	v_fma_f32 v81, -v94, v86, v89
	v_div_fixup_f32 v61, v82, v80, v61
	v_fmac_f32_e32 v91, v85, v96
	v_div_scale_f32 v82, s9, v54, v80, v54
	v_fmac_f32_e32 v90, v95, v90
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_scale_f32 v89, null, v80, v80, v50
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v97, null, v80, v80, v46
	v_div_fmas_f32 v81, v81, v83, v86
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v82, v90
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v87, s10, v53, v80, v53
	v_div_scale_f32 v93, null, v80, v80, v49
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v94, v87, v84
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v88, v86, v82
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v89, v85, 1.0
	v_div_fixup_f32 v58, v81, v80, v58
	v_fma_f32 v81, -v92, v94, v87
	v_fmac_f32_e32 v86, v91, v90
	v_div_fixup_f32 v57, v83, v80, v57
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v83, s11, v50, v80, v50
	v_div_scale_f32 v91, null, v80, v80, v47
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v95, -v93, v96, 1.0
	v_fma_f32 v82, -v88, v86, v82
	v_fmac_f32_e32 v94, v81, v84
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v81, v83, v85
	v_rcp_f32_e32 v88, v91
	v_fmac_f32_e32 v96, v95, v96
	v_div_scale_f32 v95, s12, v49, v80, v49
	v_div_fmas_f32 v82, v82, v90, v86
	v_fma_f32 v86, -v92, v94, v87
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v89, v81, v83
	v_mul_f32_e32 v90, v95, v96
	v_div_fixup_f32 v54, v82, v80, v54
	v_div_fmas_f32 v84, v86, v84, v94
	v_rcp_f32_e32 v86, v97
	v_fma_f32 v92, -v91, v88, 1.0
	v_fmac_f32_e32 v81, v87, v85
	v_fma_f32 v87, -v93, v90, v95
	v_div_fixup_f32 v53, v84, v80, v53
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v88, v92, v88
	v_div_scale_f32 v92, s9, v47, v80, v47
	v_fmac_f32_e32 v90, v87, v96
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v97, v86, 1.0
	v_div_scale_f32 v87, null, v73, v73, v45
	v_fma_f32 v82, -v89, v81, v83
	v_mul_f32_e32 v83, v92, v88
	v_fmac_f32_e32 v86, v84, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v89, s10, v46, v80, v46
	v_div_fmas_f32 v81, v82, v85, v81
	v_fma_f32 v82, -v93, v90, v95
	v_fma_f32 v85, -v91, v83, v92
	v_div_scale_f32 v93, null, v73, v73, v44
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v50, v81, v80, v50
	v_fmac_f32_e32 v83, v85, v88
	v_rcp_f32_e32 v85, v93
	v_fma_f32 v94, -v87, v84, 1.0
	v_div_fmas_f32 v82, v82, v96, v90
	v_mul_f32_e32 v90, v89, v86
	v_fma_f32 v81, -v91, v83, v92
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v94, null, v73, v73, v43
	v_div_fixup_f32 v49, v82, v80, v49
	v_fma_f32 v82, -v97, v90, v89
	v_div_scale_f32 v91, s11, v45, v73, v45
	v_fma_f32 v92, -v93, v85, 1.0
	v_div_fmas_f32 v81, v81, v88, v83
	v_rcp_f32_e32 v83, v94
	v_fmac_f32_e32 v90, v82, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v82, v91, v84 :: v_dual_fmac_f32 v85, v92, v85
	v_div_scale_f32 v88, s9, v44, v73, v44
	v_div_scale_f32 v92, null, v73, v73, v42
	v_div_fixup_f32 v47, v81, v80, v47
	v_fma_f32 v81, -v97, v90, v89
	v_fma_f32 v89, -v87, v82, v91
	v_mul_f32_e32 v95, v88, v85
	v_rcp_f32_e32 v96, v92
	v_fma_f32 v97, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v82, v89, v84
	v_div_fmas_f32 v81, v81, v86, v90
	v_fma_f32 v86, -v93, v95, v88
	v_fmac_f32_e32 v83, v97, v83
	v_div_scale_f32 v89, s10, v43, v73, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v46, v81, v80, v46
	v_fma_f32 v90, -v92, v96, 1.0
	v_fma_f32 v80, -v87, v82, v91
	v_fmac_f32_e32 v95, v86, v85
	v_mul_f32_e32 v81, v89, v83
	v_div_scale_f32 v87, null, v73, v73, v41
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v96, v90, v96
	v_div_scale_f32 v86, s12, v42, v73, v42
	v_div_fmas_f32 v80, v80, v84, v82
	v_fma_f32 v82, -v93, v95, v88
	v_fma_f32 v84, -v94, v81, v89
	v_rcp_f32_e32 v88, v87
	v_div_scale_f32 v91, null, v73, v73, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v90, v86, v96 :: v_dual_fmac_f32 v81, v84, v83
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v82, v82, v85, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v45, v80, v73, v45
	v_fma_f32 v93, -v87, v88, 1.0
	v_fma_f32 v80, -v94, v81, v89
	v_div_fixup_f32 v44, v82, v73, v44
	v_fmac_f32_e32 v90, v85, v96
	v_div_scale_f32 v82, s9, v41, v73, v41
	v_fmac_f32_e32 v88, v93, v88
	v_fma_f32 v85, -v91, v84, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v89, null, v73, v73, v39
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v90, v86
	v_mul_f32_e32 v83, v82, v88
	v_fmac_f32_e32 v84, v85, v84
	v_div_scale_f32 v86, s10, v40, v73, v40
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v43, v80, v73, v43
	v_div_fmas_f32 v81, v81, v96, v90
	v_fma_f32 v90, -v87, v83, v82
	v_mul_f32_e32 v93, v86, v84
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v96, null, v73, v73, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v90, v88
	v_fma_f32 v80, -v91, v93, v86
	v_rcp_f32_e32 v85, v89
	v_div_scale_f32 v92, null, v73, v73, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v87, v83, v82
	v_fmac_f32_e32 v93, v80, v84
	v_div_scale_f32 v90, null, v73, v73, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v95, v92
	v_div_fmas_f32 v82, v82, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v94, -v89, v85, 1.0
	v_div_fixup_f32 v42, v81, v73, v42
	v_div_scale_f32 v81, s11, v39, v73, v39
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_rcp_f32_e32 v87, v90
	v_div_fixup_f32 v41, v82, v73, v41
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v40, v83, v73, v40
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v77, v77
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v71, v71
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v96, v84, 1.0
	v_fma_f32 v91, -v90, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v84, v83, v84 :: v_dual_fmac_f32 v85, v94, v85
	v_fma_f32 v94, -v92, v95, 1.0
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s9, v37, v73, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v80, v81, v85 :: v_dual_fmac_f32 v95, v94, v95
	v_div_scale_f32 v94, s12, v38, v73, v38
	v_mul_f32_e32 v82, v91, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v89, v80, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v61, v61
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v88, v94, v95
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v50, v50
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v80, v86, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v86, -v92, v88, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v80, v81
	v_div_scale_f32 v89, s10, v36, v73, v36
	v_fmac_f32_e32 v88, v86, v95
	v_div_scale_f32 v86, null, v73, v73, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v85, -v90, v82, v91
	v_fma_f32 v81, -v92, v88, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, null, v73, v73, v34
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v39, v80, v73, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v92
	v_div_fmas_f32 v81, v81, v95, v88
	v_mul_f32_e32 v88, v89, v84
	v_fma_f32 v80, -v90, v82, v91
	v_fma_f32 v93, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v38, v81, v73, v38
	v_fma_f32 v81, -v96, v88, v89
	v_div_scale_f32 v90, s11, v35, v73, v35
	v_fmac_f32_e32 v83, v93, v83
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_scale_f32 v93, null, v73, v73, v33
	v_div_fmas_f32 v80, v80, v87, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v88, v81, v84 :: v_dual_fmac_f32 v85, v91, v85
	v_rcp_f32_e32 v82, v93
	v_div_scale_f32 v91, null, v73, v73, v32
	v_mul_f32_e32 v81, v90, v83
	v_div_scale_f32 v87, s9, v34, v73, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v95, v91
	v_div_fixup_f32 v37, v80, v73, v37
	v_fma_f32 v80, -v96, v88, v89
	v_fma_f32 v89, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v88
	v_fmac_f32_e32 v81, v89, v83
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s10, v33, v73, v33
	v_fma_f32 v89, -v91, v95, 1.0
	v_div_fixup_f32 v36, v80, v73, v36
	v_fma_f32 v80, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v84, v88, v82 :: v_dual_fmac_f32 v95, v89, v95
	v_div_scale_f32 v89, null, v73, v73, v31
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v86, s12, v32, v73, v32
	v_div_fmas_f32 v80, v80, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v84, v88
	v_rcp_f32_e32 v87, v89
	v_div_scale_f32 v92, null, v73, v73, v30
	v_mul_f32_e32 v90, v86, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v83, v82
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v92
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v91, v90, v86
	v_div_fixup_f32 v35, v80, v73, v35
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v89, v87, 1.0
	v_fma_f32 v80, -v93, v84, v88
	v_div_fixup_f32 v34, v81, v73, v34
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s9, v31, v73, v31
	v_fmac_f32_e32 v87, v94, v87
	v_fma_f32 v85, -v92, v83, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v93, null, v48, v48, v28
	v_div_fmas_f32 v80, v80, v82, v84
	v_fma_f32 v82, -v91, v90, v86
	v_mul_f32_e32 v84, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, null, v48, v48, v29
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v86, s10, v30, v73, v30
	v_div_fmas_f32 v82, v82, v95, v90
	v_rcp_f32_e32 v88, v85
	v_fma_f32 v90, -v89, v84, v81
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v86, v83
	v_div_fixup_f32 v33, v80, v73, v33
	v_div_fixup_f32 v32, v82, v73, v32
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v84, v90, v87
	v_fma_f32 v80, -v92, v91, v86
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v48, v48, v26
	v_fma_f32 v90, -v85, v88, 1.0
	v_fma_f32 v81, -v89, v84, v81
	v_div_scale_f32 v89, null, v48, v48, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v80, v83 :: v_dual_fmac_f32 v88, v90, v88
	v_div_scale_f32 v80, s11, v29, v48, v29
	v_rcp_f32_e32 v90, v89
	v_fma_f32 v94, -v93, v82, 1.0
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v92, v91, v86
	v_mul_f32_e32 v86, v80, v88
	v_div_scale_f32 v87, s9, v28, v48, v28
	v_fmac_f32_e32 v82, v94, v82
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v85, v86, v80
	v_fma_f32 v92, -v89, v90, 1.0
	v_div_fixup_f32 v31, v81, v73, v31
	v_mul_f32_e32 v96, v87, v82
	v_rcp_f32_e32 v97, v95
	v_fmac_f32_e32 v86, v94, v88
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s12, v27, v48, v27
	v_div_fmas_f32 v83, v84, v83, v91
	v_fma_f32 v84, -v93, v96, v87
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v91, v92, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v30, v83, v73, v30
	v_fma_f32 v73, -v85, v86, v80
	v_fmac_f32_e32 v96, v84, v82
	v_fma_f32 v80, -v89, v91, v92
	v_div_scale_f32 v83, null, v48, v48, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v73, v73, v88, v86
	v_fma_f32 v84, -v93, v96, v87
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v91, v80, v90
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v81, -v95, v97, 1.0
	v_rcp_f32_e32 v80, v83
	v_div_fmas_f32 v82, v84, v82, v96
	v_fma_f32 v84, -v89, v91, v92
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v29, v73, v48, v29
	v_div_scale_f32 v86, null, v48, v48, v24
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v84, v84, v90, v91
	v_div_fixup_f32 v28, v82, v48, v28
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v83, v80, 1.0
	v_rcp_f32_e32 v88, v86
	v_div_fixup_f32 v27, v84, v48, v27
	v_div_scale_f32 v84, null, v48, v48, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v87, v80
	v_div_scale_f32 v87, s9, v25, v48, v25
	v_rcp_f32_e32 v90, v84
	v_fmac_f32_e32 v97, v81, v97
	v_div_scale_f32 v81, s10, v26, v48, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v73, v87, v80
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v82, -v86, v88, 1.0
	v_mul_f32_e32 v85, v81, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v82, v88
	v_fma_f32 v89, -v95, v85, v81
	v_div_scale_f32 v82, s11, v24, v48, v24
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v58
	v_rndne_f32_e32 v57, v57
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v89, v97
	v_fma_f32 v89, -v83, v73, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v49, v49
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v95, v85, v81
	v_fmac_f32_e32 v73, v89, v80
	v_div_scale_f32 v89, null, v48, v48, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v97, v85
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v26, v81, v48, v26
	v_fma_f32 v81, -v83, v73, v87
	v_fma_f32 v87, -v84, v90, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v81, v80, v73
	v_div_scale_f32 v80, null, v48, v48, v21
	v_fmac_f32_e32 v90, v87, v90
	v_div_scale_f32 v81, s9, v23, v48, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v25, v73, v48, v25
	v_fma_f32 v73, -v89, v91, 1.0
	v_div_scale_f32 v87, null, v48, v48, v20
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v94, s11, v21, v48, v21
	v_fmac_f32_e32 v91, v73, v91
	v_div_scale_f32 v73, s10, v22, v48, v22
	v_mul_f32_e32 v85, v82, v88
	v_rcp_f32_e32 v93, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v86, v85, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v83, v88
	v_rcp_f32_e32 v83, v80
	v_fma_f32 v95, -v87, v93, 1.0
	v_fma_f32 v82, -v86, v85, v82
	v_mul_f32_e32 v86, v81, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v82, v82, v88, v85
	v_fma_f32 v92, -v80, v83, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v85, -v84, v86, v81
	v_mul_f32_e32 v88, v73, v91
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v24, v82, v48, v24
	v_dual_fmac_f32 v83, v92, v83 :: v_dual_fmac_f32 v86, v85, v90
	v_div_scale_f32 v92, null, v48, v48, v11
	v_fma_f32 v85, -v89, v88, v73
	v_fmac_f32_e32 v93, v95, v93
	v_div_scale_f32 v95, s12, v20, v48, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v96, v92
	v_fmac_f32_e32 v88, v85, v91
	v_fma_f32 v81, -v84, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v84, v95, v93
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v89, v88, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v81, v81, v90, v86
	v_div_scale_f32 v86, null, v48, v48, v7
	v_fma_f32 v85, -v92, v96, 1.0
	v_mul_f32_e32 v97, v94, v83
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v23, v81, v48, v23
	v_div_fmas_f32 v73, v73, v91, v88
	v_fmac_f32_e32 v96, v85, v96
	v_fma_f32 v82, -v80, v97, v94
	v_div_scale_f32 v85, s9, v11, v48, v11
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v88, v86
	v_fmac_f32_e32 v97, v82, v83
	v_fma_f32 v82, -v87, v84, v95
	v_div_fixup_f32 v22, v73, v48, v22
	v_div_scale_f32 v90, null, v48, v48, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v82, v93
	v_mul_f32_e32 v82, v85, v96
	v_fma_f32 v80, -v80, v97, v94
	v_fma_f32 v81, -v86, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v83, v97
	v_fma_f32 v83, -v87, v84, v95
	s_mov_b32 vcc_lo, s12
	v_fma_f32 v87, -v92, v82, v85
	v_fmac_f32_e32 v88, v81, v88
	v_div_scale_f32 v81, null, v48, v48, v19
	v_div_fmas_f32 v83, v83, v93, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v87, v96
	v_div_fixup_f32 v21, v80, v48, v21
	v_div_scale_f32 v80, null, v48, v48, v6
	v_div_fixup_f32 v20, v83, v48, v20
	v_div_scale_f32 v83, null, v48, v48, v18
	v_fma_f32 v73, -v92, v82, v85
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v85, v81
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v87, v83
	v_rcp_f32_e32 v92, v90
	v_div_fmas_f32 v73, v73, v96, v82
	v_rcp_f32_e32 v82, v80
	v_div_scale_f32 v84, vcc_lo, v7, v48, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v73, v48, v11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v81, v85, 1.0
	v_fma_f32 v94, -v83, v87, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v90, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v73, -v80, v82, 1.0
	v_fmac_f32_e32 v85, v91, v85
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s11, v18, v48, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v73, v82
	v_div_scale_f32 v73, s9, v6, v48, v6
	v_dual_mul_f32 v98, v94, v87 :: v_dual_mul_f32 v89, v84, v88
	v_div_scale_f32 v91, s10, v19, v48, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v95, v73, v82 :: v_dual_fmac_f32 v92, v96, v92
	v_fma_f32 v93, -v86, v89, v84
	v_div_scale_f32 v96, s12, v8, v48, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v97, v91, v85
	v_fmac_f32_e32 v89, v93, v88
	v_fma_f32 v93, -v80, v95, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v99, v96, v92
	v_fma_f32 v84, -v86, v89, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v93, v82
	v_fma_f32 v86, -v81, v97, v91
	v_fma_f32 v93, -v83, v98, v94
	v_div_fmas_f32 v84, v84, v88, v89
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_fma_f32 v73, -v80, v95, v73
	v_fma_f32 v80, -v90, v99, v96
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v77, v77, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v97, v86, v85 :: v_dual_fmac_f32 v98, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v73, v73, v82, v95
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v80, v92
	v_fma_f32 v81, -v81, v97, v91
	v_fma_f32 v80, -v83, v98, v94
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v91, v34
	v_and_b32_e32 v34, 15, v77
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v90, v99, v96
	v_div_fmas_f32 v81, v81, v85, v97
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v7, v84, v48, v7
	v_div_fmas_f32 v80, v80, v87, v98
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v6, v73, v48, v6
	v_div_fmas_f32 v82, v82, v92, v99
	v_div_fixup_f32 v19, v81, v48, v19
	v_div_fixup_f32 v18, v80, v48, v18
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v82, v48, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v51
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v11, v11, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s9, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v63
	v_rndne_f32_e32 v63, v64
	v_rndne_f32_e32 v64, v66
	v_rndne_f32_e32 v66, v67
	v_rndne_f32_e32 v67, v69
	v_rndne_f32_e32 v69, v72
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v74, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v78, v47
	v_cvt_i32_f32_e32 v11, v11
	v_cvt_i32_f32_e32 v108, v8
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v8, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v75
	v_rndne_f32_e32 v75, v79
	v_rndne_f32_e32 v7, v7
	v_rndne_f32_e32 v6, v6
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_cvt_i32_f32_e32 v90, v35
	v_cvt_i32_f32_e32 v107, v18
	v_and_b32_e32 v18, 15, v48
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v48, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v8, 0x1800, v8
	v_lshlrev_b32_e32 v78, 6, v4
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v11
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v11, v15, v17
	v_lshlrev_b32_e32 v15, 6, v0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v73, v73, s9, 0x40e00000
	v_med3_f32 v74, v74, s9, 0x40e00000
	v_med3_f32 v75, v75, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v80, v45
	v_cvt_i32_f32_e32 v81, v44
	v_cvt_i32_f32_e32 v82, v43
	v_cvt_i32_f32_e32 v83, v42
	v_cvt_i32_f32_e32 v96, v29
	v_cvt_i32_f32_e32 v97, v28
	v_cvt_i32_f32_e32 v98, v27
	v_cvt_i32_f32_e32 v99, v26
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v17, 0, v8, v78
	v_and_or_b32 v15, 0x1b00, v15, v9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v79, v46
	v_cvt_i32_f32_e32 v88, v37
	v_cvt_i32_f32_e32 v89, v36
	v_cvt_i32_f32_e32 v104, v21
	v_cvt_i32_f32_e32 v105, v20
	v_cvt_i32_f32_e32 v7, v7
	v_cvt_i32_f32_e32 v84, v41
	v_cvt_i32_f32_e32 v85, v40
	v_cvt_i32_f32_e32 v86, v39
	v_cvt_i32_f32_e32 v87, v38
	v_cvt_i32_f32_e32 v100, v25
	v_cvt_i32_f32_e32 v101, v24
	v_cvt_i32_f32_e32 v102, v23
	v_cvt_i32_f32_e32 v103, v22
	v_cvt_i32_f32_e32 v92, v33
	v_cvt_i32_f32_e32 v93, v32
	v_cvt_i32_f32_e32 v94, v31
	v_cvt_i32_f32_e32 v95, v30
	v_cvt_i32_f32_e32 v6, v6
	v_cvt_i32_f32_e32 v106, v19
	v_and_b32_e32 v19, 15, v51
	v_and_b32_e32 v20, 15, v52
	v_and_b32_e32 v21, 15, v55
	v_and_b32_e32 v22, 15, v56
	v_and_b32_e32 v23, 15, v59
	v_and_b32_e32 v24, 15, v60
	v_and_b32_e32 v25, 15, v63
	v_and_b32_e32 v27, 15, v66
	v_and_b32_e32 v28, 15, v67
	v_and_b32_e32 v29, 15, v69
	v_and_b32_e32 v36, 15, v71
	v_and_b32_e32 v37, 15, v70
	v_and_b32_e32 v38, 15, v68
	v_and_b32_e32 v39, 15, v65
	v_and_b32_e32 v40, 15, v62
	v_and_b32_e32 v41, 15, v61
	v_and_b32_e32 v45, 15, v53
	v_and_b32_e32 v46, 15, v50
	v_and_b32_e32 v50, 15, v80
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v52, 15, v82
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v66, 15, v96
	v_and_b32_e32 v67, 15, v97
	v_and_b32_e32 v68, 15, v98
	v_and_b32_e32 v69, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v10, v17, v11, v10
	v_xad_u32 v11, v15, v14, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v26, 15, v64
	v_and_b32_e32 v31, 15, v73
	v_and_b32_e32 v32, 15, v74
	v_and_b32_e32 v33, 15, v75
	v_and_b32_e32 v42, 15, v58
	v_and_b32_e32 v43, 15, v57
	v_and_b32_e32 v44, 15, v54
	v_and_b32_e32 v47, 15, v49
	v_and_b32_e32 v49, 15, v79
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v59, 15, v89
	v_and_b32_e32 v60, 15, v90
	v_and_b32_e32 v61, 15, v91
	v_and_b32_e32 v74, 15, v104
	v_and_b32_e32 v75, 15, v105
	v_and_b32_e32 v77, 15, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v72
	v_and_b32_e32 v54, 15, v84
	v_and_b32_e32 v55, 15, v85
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v70, 15, v100
	v_and_b32_e32 v71, 15, v101
	v_and_b32_e32 v72, 15, v102
	v_and_b32_e32 v73, 15, v103
	v_and_b32_e32 v62, 15, v92
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v64, 15, v94
	v_and_b32_e32 v65, 15, v95
	v_and_b32_e32 v6, 15, v6
	v_and_b32_e32 v7, 15, v106
	v_and_b32_e32 v8, 15, v107
	v_and_b32_e32 v9, 15, v108
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v10, v[18:21]
	ds_store_b128 v10, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v11
	ds_load_b128 v[26:29], v11 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[34:37]
	ds_store_b128 v10, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v11
	ds_load_b128 v[42:45], v11 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[50:53]
	ds_store_b128 v10, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v11
	ds_load_b128 v[58:61], v11 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[66:69]
	ds_store_b128 v10, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v11
	ds_load_b128 v[74:77], v11 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[22:25]
	ds_store_b128 v10, v[30:33] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v11
	ds_load_b128 v[30:33], v11 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[38:41]
	ds_store_b128 v10, v[46:49] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[38:41], v11
	ds_load_b128 v[46:49], v11 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[54:57]
	ds_store_b128 v10, v[62:65] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[54:57], v11
	ds_load_b128 v[62:65], v11 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v10, v[70:73]
	ds_store_b128 v10, v[6:9] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v11
	ds_load_b128 v[70:73], v11 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v29, 4, v20
	v_lshl_or_b32 v22, v31, 4, v22
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v28, 4, v19
	v_lshl_or_b32 v28, v45, 4, v37
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v17, v26, 4, v17
	v_lshl_or_b32 v31, v48, 4, v40
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v48, 3, v13
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v29, v46, 4, v38
	v_lshl_or_b32 v18, v27, 4, v18
	v_lshl_or_b32 v21, v30, 4, v21
	v_lshl_or_b32 v23, v32, 4, v23
	v_lshl_or_b32 v24, v33, 4, v24
	v_lshl_or_b32 v30, v47, 4, v39
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v49, 4, v41
	v_lshl_or_b32 v25, v42, 4, v34
	v_lshl_or_b32 v26, v43, 4, v35
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v46, v71, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s34, v12
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v45, v70, 4, v6
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s41, 7, v48
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v47, v72, 4, v8
	v_lshl_or_b32 v49, v73, 4, v9
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v13, 32, v7
	v_add_nc_u32_e32 v8, 16, v7
	v_add_nc_u32_e32 v15, 48, v7
	v_mad_u64_u32 v[9:10], null, v7, s9, v[6:7]
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[13:14], null, v13, s9, v[6:7]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v8, s9, v[6:7]
	v_mad_u64_u32 v[14:15], null, v15, s9, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	v_lshlrev_b16 v5.l, 8, v18.l
	v_and_b16 v6.l, 0xff, v17.l
	v_lshlrev_b16 v6.h, 8, v24.l
	v_and_b16 v7.l, 0xff, v23.l
	v_lshlrev_b16 v7.h, 8, v22.l
	v_and_b16 v8.l, 0xff, v21.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v33, v58, 4, v50
	v_lshl_or_b32 v34, v59, 4, v51
	v_lshl_or_b32 v35, v60, 4, v52
	v_lshl_or_b32 v36, v61, 4, v53
	v_lshl_or_b32 v37, v62, 4, v54
	v_lshl_or_b32 v38, v63, 4, v55
	v_lshl_or_b32 v39, v64, 4, v56
	v_lshl_or_b32 v40, v65, 4, v57
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.h, v2.l, v1.l
	v_or_b16 v17.l, v6.l, v5.l
	v_or_b16 v18.h, v7.l, v6.h
	v_or_b16 v18.l, v8.l, v7.h
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v1.l, 8, v28.l
	v_and_b16 v2.l, 0xff, v27.l
	v_lshlrev_b16 v5.l, 8, v26.l
	v_and_b16 v6.l, 0xff, v25.l
	v_lshlrev_b16 v6.h, 8, v32.l
	v_and_b16 v7.l, 0xff, v31.l
	v_lshlrev_b16 v7.h, 8, v30.l
	v_and_b16 v8.l, 0xff, v29.l
	s_mov_b32 s12, s16
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v41, v74, 4, v66
	v_lshl_or_b32 v42, v75, 4, v67
	v_lshl_or_b32 v43, v76, 4, v68
	v_lshl_or_b32 v44, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[17:18], v9, s[12:15], 0 offen
	v_or_b16 v17.h, v2.l, v1.l
	v_or_b16 v17.l, v6.l, v5.l
	v_or_b16 v18.h, v7.l, v6.h
	v_or_b16 v18.l, v8.l, v7.h
	v_cndmask_b32_e32 v9, 0x80000000, v10, vcc_lo
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	v_lshlrev_b16 v5.l, 8, v34.l
	v_and_b16 v6.l, 0xff, v33.l
	v_lshlrev_b16 v6.h, 8, v40.l
	v_and_b16 v7.l, 0xff, v39.l
	v_lshlrev_b16 v7.h, 8, v38.l
	v_and_b16 v8.l, 0xff, v37.l
	buffer_store_b64 v[17:18], v9, s[12:15], 0 offen
	v_or_b16 v9.h, v2.l, v1.l
	v_or_b16 v9.l, v6.l, v5.l
	v_or_b16 v10.h, v7.l, v6.h
	v_or_b16 v10.l, v8.l, v7.h
	v_lshlrev_b16 v1.l, 8, v44.l
	v_and_b16 v2.l, 0xff, v43.l
	v_lshlrev_b16 v5.l, 8, v42.l
	v_and_b16 v6.l, 0xff, v41.l
	v_lshlrev_b16 v6.h, 8, v49.l
	v_and_b16 v7.l, 0xff, v47.l
	v_lshlrev_b16 v7.h, 8, v46.l
	v_and_b16 v8.l, 0xff, v45.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 2, v4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.h, v2.l, v1.l
	v_cndmask_b32_e32 v11, 0x80000000, v13, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.l, v6.l, v5.l
	v_or_b16 v18.h, v7.l, v6.h
	v_or_b16 v18.l, v8.l, v7.h
	v_dual_cndmask_b32 v6, 0x80000000, v14 :: v_dual_and_b32 v7, 2, v12
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v4
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[9:10], v11, s[12:15], 0 offen
	buffer_store_b64 v[17:18], v6, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v48
	v_mov_b16_e32 v2.l, v16.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v4, v4, v7, v48
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
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s41, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 176
		.amdhsa_next_free_sgpr 44
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 176
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 44
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14436
; TotalNumSgprs: 46
; NumVgprs: 176
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 46
; NumVGPRsForWavesPerEU: 176
; Occupancy: 8
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
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     46
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc32_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     176
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
