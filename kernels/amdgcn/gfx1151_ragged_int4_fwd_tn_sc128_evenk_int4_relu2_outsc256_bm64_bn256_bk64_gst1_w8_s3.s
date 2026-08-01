	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[36:37], s[0:1], 0x5c
	v_mov_b32_e32 v104, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_mov_b32_e32 v4, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
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
	v_rcp_iflag_f32_e32 v0, s5
	v_readfirstlane_b32 s5, v0
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
	s_sub_i32 s5, s37, s4
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
	v_rcp_iflag_f32_e32 v0, s7
	v_readfirstlane_b32 s7, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v0, 63, v104
	.loc	1 1038 17                       ; ragged.py:1038:17
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
	s_sub_i32 s37, s6, s7
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s5, s37, s5
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
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s10, s4
	s_addc_u32 s7, s11, s5
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s2, s4
	s_addc_u32 s3, s3, s5
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[34:35], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[30:31], s[2:3], 0x0
	s_mov_b32 s3, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s28, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s29, 0, s2
	v_add_nc_u32_e32 v65, s28, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[30:31], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1135 19 is_stmt 1             ; ragged.py:1135:19
	s_cmp_gt_i32 s36, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s28, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s3, -1
                                        ; implicit-def: $vgpr3
.LBB0_3:                                ; %Flow
	s_load_b128 s[16:19], s[0:1], 0x40
	v_dual_mov_b32 v6, 0 :: v_dual_and_b32 v105, 15, v104
	v_dual_mov_b32 v7, 0 :: v_dual_and_b32 v106, 0xf0, v104
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v20, 0
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
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v47, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v60, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v62, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v45, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v50, 0
	v_mov_b32_e32 v48, 0
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_9
; %bb.4:                                ; %.lr.ph
	s_clause 0x1
	s_load_b64 s[6:7], s[0:1], 0x20
	s_load_b256 s[8:15], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s3, s28, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v1, null, s29, 0, s3
	s_clause 0x1
	s_load_b32 s20, s[0:1], 0x58
	s_load_b32 s38, s[0:1], 0x50
	v_add_co_u32 v2, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, 0, v1, vcc_lo
	v_add_co_u32 v4, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 48
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[34:35], v[0:1]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[30:31], v[0:1]
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v0, s28, v105
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s6, s4
	s_addc_u32 s5, s7, s5
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v72, 0 :: v_dual_add_nc_u32 v1, 16, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[34:35], v[2:3]
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s39, s[4:5], 0x0
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[30:31], v[2:3]
	v_dual_mov_b32 v153, 0 :: v_dual_add_nc_u32 v2, 32, v0
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v3, 48, v0
	.loc	1 1205 25                       ; ragged.py:1205:25
	v_mul_lo_u32 v0, v0, s36
	v_dual_mov_b32 v149, 0 :: v_dual_add_nc_u32 v98, 0, v105
	v_dual_mov_b32 v132, 0 :: v_dual_lshlrev_b32 v11, 5, v104
	v_dual_mov_b32 v147, 0 :: v_dual_lshlrev_b32 v12, 1, v104
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v126, 0 :: v_dual_and_b32 v11, 32, v11
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:172
	scratch_store_b32 off, v104, off offset:204
	v_mul_lo_u32 v0, v1, s36
	v_dual_mov_b32 v145, 0 :: v_dual_and_b32 v12, 28, v12
	v_or_b32_e32 v1, 0x700, v104
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[34:35], v[6:7]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[30:31], v[6:7]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[4:5]
	v_mov_b32_e32 v154, 0
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:176
	scratch_store_b32 off, v105, off offset:208
	v_mul_lo_u32 v0, v2, s36
	v_or_b32_e32 v2, 0x3f0, v104
	v_dual_mov_b32 v128, 0 :: v_dual_add_nc_u32 v137, 0, v1
	v_mov_b32_e32 v122, 0
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_lshl_or_b32 v1, s37, 8, v104
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[4:5]
	.loc	1 1046 20 is_stmt 0             ; ragged.py:1046:20
	s_and_b32 s4, s4, s7
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:180
	scratch_store_b32 off, v106, off offset:212
	v_mul_lo_u32 v0, v3, s36
	v_lshrrev_b32_e32 v3, 1, v104
	.loc	1 1153 29                       ; ragged.py:1153:29
	s_mul_i32 s7, s20, s33
	v_or_b32_e32 v4, 0x7f0, v104
	v_or_b32_e32 v5, 0xb00, v104
	v_or_b32_e32 v6, 0xf00, v104
	v_and_b32_e32 v3, 0x70, v3
	v_or_b32_e32 v7, 0x1300, v104
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	v_or_b32_e32 v0, 0x300, v104
	v_or_b32_e32 v8, 0x1700, v104
	v_dual_mov_b32 v130, 0 :: v_dual_add_nc_u32 v123, v98, v3
	v_lshlrev_b32_e32 v3, 2, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v141, 0 :: v_dual_add_nc_u32 v136, 0, v0
	v_or_b32_e32 v9, 0x1b00, v104
	v_or_b32_e32 v10, 0x1f00, v104
	v_add3_u32 v3, 0, v3, v11
	v_dual_mov_b32 v124, 0 :: v_dual_lshlrev_b32 v11, 1, v106
	v_mov_b32_e32 v23, 0
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[67:68], null, s7, s39, v[1:2]
	v_add_nc_u32_e32 v0, v3, v12
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshrrev_b32_e32 v82, 6, v104
	v_dual_mov_b32 v143, 0 :: v_dual_add_nc_u32 v134, 0, v104
	v_dual_mov_b32 v135, 0 :: v_dual_add_nc_u32 v138, 0, v2
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v25, 0 :: v_dual_add_nc_u32 v0, 0, v11
	v_dual_mov_b32 v22, 0 :: v_dual_add_nc_u32 v139, 0, v4
	v_dual_mov_b32 v133, 0 :: v_dual_add_nc_u32 v140, 0, v5
	v_dual_mov_b32 v131, 0 :: v_dual_add_nc_u32 v142, 0, v6
	v_dual_mov_b32 v129, 0 :: v_dual_add_nc_u32 v144, 0, v7
	v_dual_mov_b32 v127, 0 :: v_dual_add_nc_u32 v146, 0, v8
	v_dual_mov_b32 v125, 0 :: v_dual_add_nc_u32 v148, 0, v9
	v_dual_mov_b32 v21, 0 :: v_dual_add_nc_u32 v150, 0, v10
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v41, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v45, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v49, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v47, 0
	v_mov_b32_e32 v46, 0
	v_mov_b32_e32 v0, v1
	v_mov_b32_e32 v44, 0
	v_mov_b32_e32 v42, 0
	s_and_b32 s9, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_and_b32 s11, s11, 0xffff
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_and_b32 s1, s1, s5
	s_and_b32 s3, s3, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s5, s36, s39
	.loc	1 1135 13                       ; ragged.py:1135:13
	s_mov_b32 s6, 0
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s20, s12
	s_and_b32 s13, s15, 0xffff
	s_mov_b32 s12, s14
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s26, s22
	s_mov_b32 s27, s23
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s22
	s_mov_b32 s11, s23
	scratch_store_b64 off, v[0:1], off offset:196 ; 8-byte Folded Spill
.LBB0_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_clause 0x1f                           ; 128-byte Folded Spill
	scratch_store_b32 off, v21, off offset:168
	scratch_store_b32 off, v22, off offset:164
	scratch_store_b32 off, v23, off offset:160
	scratch_store_b32 off, v24, off offset:156
	scratch_store_b32 off, v25, off offset:152
	scratch_store_b32 off, v26, off offset:148
	scratch_store_b32 off, v27, off offset:144
	scratch_store_b32 off, v28, off offset:140
	scratch_store_b32 off, v29, off offset:136
	scratch_store_b32 off, v30, off offset:132
	scratch_store_b32 off, v31, off offset:128
	scratch_store_b32 off, v32, off offset:124
	scratch_store_b32 off, v33, off offset:120
	scratch_store_b32 off, v34, off offset:116
	scratch_store_b32 off, v35, off offset:112
	scratch_store_b32 off, v36, off offset:108
	scratch_store_b32 off, v37, off offset:104
	scratch_store_b32 off, v38, off offset:100
	scratch_store_b32 off, v71, off offset:96
	scratch_store_b32 off, v70, off offset:92
	scratch_store_b32 off, v39, off offset:88
	scratch_store_b32 off, v40, off offset:84
	scratch_store_b32 off, v41, off offset:80
	scratch_store_b32 off, v84, off offset:76
	scratch_store_b32 off, v83, off offset:72
	scratch_store_b32 off, v78, off offset:68
	scratch_store_b32 off, v77, off offset:64
	scratch_store_b32 off, v76, off offset:60
	scratch_store_b32 off, v75, off offset:56
	scratch_store_b32 off, v74, off offset:52
	scratch_store_b32 off, v73, off offset:48
	scratch_store_b32 off, v66, off offset:44
	s_clause 0xa                            ; 44-byte Folded Spill
	scratch_store_b32 off, v53, off offset:40
	scratch_store_b32 off, v52, off offset:36
	scratch_store_b32 off, v51, off offset:32
	scratch_store_b32 off, v50, off offset:28
	scratch_store_b32 off, v49, off offset:24
	scratch_store_b32 off, v48, off offset:20
	scratch_store_b32 off, v47, off offset:16
	scratch_store_b32 off, v46, off offset:12
	scratch_store_b32 off, v45, off offset:8
	scratch_store_b32 off, v44, off offset:4
	scratch_store_b32 off, v42, off
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, v72
	v_mov_b32_e32 v3, v72
	v_dual_mov_b32 v4, v72 :: v_dual_mov_b32 v9, 0
	v_mov_b32_e32 v5, v72
	v_dual_mov_b32 v6, v72 :: v_dual_mov_b32 v17, 0
	v_mov_b32_e32 v7, v72
	v_dual_mov_b32 v8, v72 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v10, v72 :: v_dual_mov_b32 v33, 0
	v_mov_b32_e32 v11, v72
	v_dual_mov_b32 v12, v72 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v13, v72
	v_dual_mov_b32 v14, v72 :: v_dual_mov_b32 v49, 0
	v_mov_b32_e32 v15, v72
	v_dual_mov_b32 v16, v72 :: v_dual_mov_b32 v57, 0
	v_mov_b32_e32 v18, v72
	v_mov_b32_e32 v19, v72
	v_mov_b32_e32 v20, v72
	v_mov_b32_e32 v21, v72
	v_mov_b32_e32 v22, v72
	v_mov_b32_e32 v23, v72
	v_mov_b32_e32 v24, v72
	v_mov_b32_e32 v26, v72
	v_mov_b32_e32 v27, v72
	v_mov_b32_e32 v28, v72
	v_mov_b32_e32 v29, v72
	v_mov_b32_e32 v30, v72
	v_mov_b32_e32 v31, v72
	v_mov_b32_e32 v32, v72
	v_mov_b32_e32 v34, v72
	v_mov_b32_e32 v35, v72
	v_mov_b32_e32 v36, v72
	v_mov_b32_e32 v37, v72
	v_mov_b32_e32 v38, v72
	v_mov_b32_e32 v39, v72
	v_mov_b32_e32 v40, v72
	v_mov_b32_e32 v42, v72
	v_mov_b32_e32 v43, v72
	v_mov_b32_e32 v44, v72
	v_mov_b32_e32 v45, v72
	v_mov_b32_e32 v46, v72
	v_mov_b32_e32 v47, v72
	v_mov_b32_e32 v48, v72
	v_mov_b32_e32 v50, v72
	v_mov_b32_e32 v51, v72
	v_mov_b32_e32 v52, v72
	v_mov_b32_e32 v53, v72
	v_mov_b32_e32 v54, v72
	v_mov_b32_e32 v55, v72
	v_mov_b32_e32 v56, v72
	v_mov_b32_e32 v58, v72
	v_mov_b32_e32 v59, v72
	v_mov_b32_e32 v60, v72
	v_mov_b32_e32 v61, v72
	v_mov_b32_e32 v62, v72
	v_mov_b32_e32 v63, v72
	v_mov_b32_e32 v64, v72
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s7, s6, 6
	s_mov_b32 s14, -1
	s_mov_b32 s15, 0
.LBB0_6:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	.loc	1 0 28 is_stmt 0                ; ragged.py:0:28
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1141 26 is_stmt 1             ; ragged.py:1141:26
	s_or_b32 s15, s15, s7
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_and_b32 vcc_lo, exec_lo, s14
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s15, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 1
	v_or_b32_e32 v0, s15, v82
	s_mov_b32 s14, 0
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v76, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 2
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v78, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 3
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v79, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 4
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v77, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 5
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v81, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 6
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v83, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 7
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v84, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 8
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v80, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 9
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v86, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 10
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v87, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 11
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v88, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 12
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v85, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 13
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v92, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 14
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v94, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 15
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v96, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 16
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v90, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 17
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v99, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 18
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v100, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 19
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v101, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 20
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v97, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 21
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v102, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 22
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v104, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 23
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v105, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 24
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v103, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 25
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v106, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 26
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v108, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 27
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v109, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 28
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v107, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 29
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v110, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 30
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v112, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1141 26                       ; ragged.py:1141:26
	s_or_b32 s39, s15, 31
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v115, v68, s[8:11], 0 offen
	.loc	1 1157 25                       ; ragged.py:1157:25
	v_mad_u64_u32 v[68:69], null, s39, s33, v[67:68]
	.loc	1 1156 34                       ; ragged.py:1156:34
	buffer_load_u8 v114, v68, s[8:11], 0 offen
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v0, s38, v[65:66]
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_or_b32_e32 v66, 4, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v66, s15, v66
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v0, 0x80000000, v68, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42 is_stmt 0             ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v66, s38, v[65:66]
	.loc	1 1155 34                       ; ragged.py:1155:34
	v_cndmask_b32_e64 v66, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 8, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v70, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 12, v82
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v71, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 16, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v73, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 20, v82
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v74, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 24, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v75, 0x80000000, v68, s2
	.loc	1 1131 28 is_stmt 1             ; ragged.py:1131:28
	v_or_b32_e32 v68, 28, v82
	.loc	1 1141 26                       ; ragged.py:1141:26
	v_or_b32_e32 v68, s15, v68
	s_mov_b32 s15, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1155 42                       ; ragged.py:1155:42
	v_mad_u64_u32 v[68:69], null, v68, s38, v[65:66]
	.loc	1 1155 34 is_stmt 0             ; ragged.py:1155:34
	v_cndmask_b32_e64 v68, 0x80000000, v68, s2
	s_clause 0x7
	buffer_load_u8 v0, v0, s[24:27], 0 offen
	buffer_load_u8 v66, v66, s[24:27], 0 offen
	buffer_load_u8 v69, v70, s[24:27], 0 offen
	buffer_load_u8 v70, v73, s[24:27], 0 offen
	buffer_load_u8 v73, v74, s[24:27], 0 offen
	buffer_load_u8 v74, v75, s[24:27], 0 offen
	buffer_load_u8 v68, v68, s[24:27], 0 offen
	buffer_load_u8 v71, v71, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v134, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v134, v66 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v134, v69 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v134, v70 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v134, v73 offset:1280
	s_waitcnt vmcnt(0)
	ds_store_b8 v136, v71
	ds_store_b8 v134, v74 offset:1536
	ds_store_b8 v137, v68
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31 is_stmt 1             ; ragged.py:1161:31
	ds_load_u8 v0, v98 offset:320
	ds_load_u8 v66, v98 offset:256
	ds_load_u8 v111, v98 offset:336
	ds_load_u8 v113, v98 offset:272
	ds_load_u8 v251, v98 offset:352
	ds_load_u8 v252, v98 offset:288
	ds_load_u8 v245, v98 offset:368
	ds_load_u8 v246, v98 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v66, v66, v0, 0xc0c0004
	ds_load_u8 v68, v98 offset:448
	ds_load_u8 v69, v98 offset:384
	ds_load_u8 v116, v98 offset:464
	ds_load_u8 v117, v98 offset:400
	ds_load_u8 v70, v98 offset:480
	ds_load_u8 v0, v98 offset:416
	ds_load_u8 v249, v98 offset:496
	ds_load_u8 v250, v98 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v68, v69, v68, 0xc0c0004
	ds_load_u8 v69, v98 offset:64
	ds_load_u8 v73, v98
	ds_load_u8 v118, v98 offset:80
	ds_load_u8 v95, v98 offset:96
	ds_load_u8 v254, v98 offset:112
	ds_load_u8 v119, v98 offset:16
	ds_load_u8 v152, v98 offset:32
	ds_load_u8 v71, v98 offset:48
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v0, v0, v70, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v73, v73, v69, 0xc0c0004
	ds_load_u8 v69, v98 offset:192
	ds_load_u8 v89, v98 offset:128
	ds_load_u8 v120, v98 offset:208
	ds_load_u8 v121, v98 offset:144
	ds_load_u8 v74, v98 offset:224
	ds_load_u8 v75, v98 offset:160
	ds_load_u8 v93, v98 offset:240
	ds_load_u8 v151, v98 offset:176
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v70, v152, v95, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v89, v89, v69, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v66
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v74, v75, v74, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v68, v89, 16, v73
	ds_load_u8 v247, v98 offset:960
	ds_load_u8 v248, v98 offset:896
	ds_load_u8 v213, v98 offset:1024
	ds_load_u8 v221, v98 offset:976
	ds_load_u8 v223, v98 offset:912
	ds_load_u8 v216, v98 offset:992
	ds_load_u8 v218, v98 offset:928
	ds_load_u8 v214, v98 offset:944
	ds_load_u8 v253, v98 offset:832
	ds_load_u8 v255, v98 offset:768
	ds_load_u8 v228, v98 offset:848
	ds_load_u8 v230, v98 offset:784
	ds_load_u8 v225, v98 offset:864
	ds_load_u8 v226, v98 offset:800
	ds_load_u8 v219, v98 offset:880
	ds_load_u8 v220, v98 offset:816
	ds_load_u8 v89, v98 offset:704
	ds_load_u8 v91, v98 offset:640
	ds_load_u8 v234, v98 offset:720
	ds_load_u8 v235, v98 offset:656
	ds_load_u8 v231, v98 offset:736
	ds_load_u8 v232, v98 offset:672
	ds_load_u8 v227, v98 offset:752
	ds_load_u8 v229, v98 offset:688
	ds_load_u8 v66, v98 offset:576
	ds_load_u8 v73, v98 offset:512
	ds_load_u8 v242, v98 offset:592
	ds_load_u8 v243, v98 offset:528
	ds_load_u8 v238, v98 offset:608
	ds_load_u8 v240, v98 offset:544
	ds_load_u8 v236, v98 offset:624
	ds_load_u8 v237, v98 offset:560
	ds_load_u8 v215, v98 offset:1216
	ds_load_u8 v217, v98 offset:1280
	ds_load_u8 v187, v98 offset:1232
	ds_load_u8 v188, v98 offset:1168
	ds_load_u8 v184, v98 offset:1248
	ds_load_u8 v185, v98 offset:1184
	ds_load_u8 v182, v98 offset:1264
	ds_load_u8 v183, v98 offset:1200
	ds_load_u8 v222, v98 offset:1152
	ds_load_u8 v224, v98 offset:1088
	ds_load_u8 v195, v98 offset:1104
	ds_load_u8 v196, v98 offset:1040
	ds_load_u8 v191, v98 offset:1120
	ds_load_u8 v193, v98 offset:1056
	ds_load_u8 v189, v98 offset:1136
	ds_load_u8 v190, v98 offset:1072
	ds_load_u8 v233, v98 offset:1472
	ds_load_u8 v181, v98 offset:1536
	ds_load_u8 v203, v98 offset:1488
	ds_load_u8 v204, v98 offset:1424
	ds_load_u8 v200, v98 offset:1504
	ds_load_u8 v201, v98 offset:1440
	ds_load_u8 v197, v98 offset:1520
	ds_load_u8 v198, v98 offset:1456
	ds_load_u8 v239, v98 offset:1408
	ds_load_u8 v241, v98 offset:1344
	ds_load_u8 v211, v98 offset:1360
	ds_load_u8 v212, v98 offset:1296
	ds_load_u8 v209, v98 offset:1376
	ds_load_u8 v210, v98 offset:1312
	ds_load_u8 v205, v98 offset:1392
	ds_load_u8 v207, v98 offset:1328
	ds_load_u8 v186, v98 offset:1984
	ds_load_u8 v161, v98 offset:2000
	ds_load_u8 v163, v98 offset:1936
	ds_load_u8 v159, v98 offset:2016
	ds_load_u8 v160, v98 offset:1952
	ds_load_u8 v244, v138
	ds_load_u8 v157, v139
	ds_load_u8 v158, v98 offset:1968
	ds_load_u8 v192, v98 offset:1920
	ds_load_u8 v194, v98 offset:1856
	ds_load_u8 v168, v98 offset:1872
	ds_load_u8 v170, v98 offset:1808
	ds_load_u8 v165, v98 offset:1888
	ds_load_u8 v166, v98 offset:1824
	ds_load_u8 v162, v98 offset:1904
	ds_load_u8 v164, v98 offset:1840
	ds_load_u8 v199, v98 offset:1728
	ds_load_u8 v202, v98 offset:1792
	ds_load_u8 v173, v98 offset:1744
	ds_load_u8 v174, v98 offset:1680
	ds_load_u8 v171, v98 offset:1760
	ds_load_u8 v172, v98 offset:1696
	ds_load_u8 v167, v98 offset:1776
	ds_load_u8 v169, v98 offset:1712
	ds_load_u8 v206, v98 offset:1664
	ds_load_u8 v208, v98 offset:1600
	ds_load_u8 v179, v98 offset:1616
	ds_load_u8 v180, v98 offset:1552
	ds_load_u8 v177, v98 offset:1632
	ds_load_u8 v178, v98 offset:1568
	ds_load_u8 v175, v98 offset:1648
	ds_load_u8 v176, v98 offset:1584
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v134, v76
	ds_store_b8 v134, v78 offset:256
	ds_store_b8 v134, v79 offset:512
	ds_store_b8 v134, v81 offset:1024
	ds_store_b8 v134, v83 offset:1280
	ds_store_b8 v134, v84 offset:1536
	ds_store_b8 v134, v86 offset:2048
	ds_store_b8 v134, v87 offset:2304
	ds_store_b8 v134, v88 offset:2560
	ds_store_b8 v134, v92 offset:3072
	ds_store_b8 v134, v94 offset:3328
	ds_store_b8 v134, v96 offset:3584
	ds_store_b8 v134, v99 offset:4096
	ds_store_b8 v134, v100 offset:4352
	ds_store_b8 v134, v101 offset:4608
	ds_store_b8 v134, v102 offset:5120
	ds_store_b8 v134, v104 offset:5376
	ds_store_b8 v134, v105 offset:5632
	ds_store_b8 v134, v106 offset:6144
	ds_store_b8 v134, v108 offset:6400
	ds_store_b8 v134, v109 offset:6656
	ds_store_b8 v134, v110 offset:7168
	ds_store_b8 v134, v112 offset:7424
	ds_store_b8 v134, v115 offset:7680
	ds_store_b8 v136, v77
	ds_store_b8 v137, v80
	ds_store_b8 v140, v85
	ds_store_b8 v142, v90
	ds_store_b8 v144, v97
	ds_store_b8 v146, v103
	ds_store_b8 v148, v107
	ds_store_b8 v150, v114
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1161 31                       ; ragged.py:1161:31
	ds_load_u8 v76, v123 offset:1280
	ds_load_u8 v77, v123 offset:1024
	ds_load_u8 v78, v123 offset:1920
	ds_load_u8 v79, v123 offset:1664
	ds_load_u8 v80, v123 offset:1408
	ds_load_u8 v81, v123 offset:1152
	v_lshl_or_b32 v74, v74, 16, v70
	v_perm_b32 v70, v250, v249, 0xc0c0004
	v_perm_b32 v66, v73, v66, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v76, v77, v76, 0xc0c0004
	ds_load_u8 v77, v123 offset:1792
	ds_load_u8 v83, v123 offset:1536
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v78, v79, v78, 0xc0c0004
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v80, v81, v80, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v79, v78, 16, v80
	v_perm_b32 v80, v113, v111, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v77, v83, v77, 0xc0c0004
	ds_load_u8 v83, v123 offset:256
	ds_load_u8 v84, v123
	ds_load_u8 v85, v123 offset:896
	ds_load_u8 v86, v123 offset:640
	ds_load_u8 v87, v123 offset:384
	ds_load_u8 v88, v123 offset:128
	v_lshl_or_b32 v77, v77, 16, v76
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v83, v84, v83, 0xc0c0004
	ds_load_u8 v84, v123 offset:768
	ds_load_u8 v90, v123 offset:512
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v81, v88, v87, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v84, v90, v84, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v76, v84, 16, v83
	v_perm_b32 v83, v86, v85, 0xc0c0004
	v_perm_b32 v84, v121, v120, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[76:77], v[68:69], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v78, v83, 16, v81
	v_perm_b32 v81, v117, v116, 0xc0c0004
	v_perm_b32 v83, v119, v118, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[78:79], v[68:69], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v81, v81, 16, v80
	v_lshl_or_b32 v80, v84, 16, v83
	v_perm_b32 v83, v252, v251, 0xc0c0004
	v_perm_b32 v84, v151, v93, 0xc0c0004
	v_perm_b32 v68, v248, v247, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[76:77], v[80:81], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v75, v0, 16, v83
	v_perm_b32 v0, v246, v245, 0xc0c0004
	v_perm_b32 v83, v71, v254, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[78:79], v[80:81], v[25:32] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[76:77], v[74:75], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v71, v70, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v70, v84, 16, v83
	v_perm_b32 v0, v255, v253, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[78:79], v[74:75], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[76:77], v[70:71], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[78:79], v[70:71], v[57:64] neg_lo:[1,1,0]
	v_perm_b32 v70, v91, v89, 0xc0c0004
	v_lshl_or_b32 v69, v68, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v68, v70, 16, v66
	ds_load_u8 v0, v123 offset:3328
	ds_load_u8 v66, v123 offset:3072
	ds_load_u8 v73, v123 offset:3968
	ds_load_u8 v74, v123 offset:3712
	ds_load_u8 v75, v123 offset:3456
	ds_load_u8 v76, v123 offset:3200
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v123 offset:3840
	ds_load_u8 v70, v123 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v123 offset:2304
	ds_load_u8 v71, v123 offset:2048
	ds_load_u8 v77, v123 offset:2944
	ds_load_u8 v78, v123 offset:2688
	ds_load_u8 v79, v123 offset:2432
	ds_load_u8 v80, v123 offset:2176
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v123 offset:2816
	ds_load_u8 v81, v123 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v76, v75, 0xc0c0004
	v_perm_b32 v66, v74, v73, 0xc0c0004
	v_perm_b32 v73, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_perm_b32 v77, v235, v234, 0xc0c0004
	v_lshl_or_b32 v70, v81, 16, v70
	v_lshl_or_b32 v74, v66, 16, v0
	v_perm_b32 v0, v230, v228, 0xc0c0004
	v_perm_b32 v66, v223, v221, 0xc0c0004
	v_lshl_or_b32 v73, v75, 16, v73
	v_perm_b32 v75, v243, v242, 0xc0c0004
	v_perm_b32 v79, v232, v231, 0xc0c0004
	v_perm_b32 v80, v220, v219, 0xc0c0004
	v_lshl_or_b32 v76, v66, 16, v0
	v_perm_b32 v0, v226, v225, 0xc0c0004
	v_perm_b32 v66, v218, v216, 0xc0c0004
	v_lshl_or_b32 v75, v77, 16, v75
	v_perm_b32 v77, v240, v238, 0xc0c0004
	v_perm_b32 v81, v214, v244, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v66, 16, v0
	v_perm_b32 v0, v237, v236, 0xc0c0004
	v_perm_b32 v66, v229, v227, 0xc0c0004
	v_lshl_or_b32 v77, v79, 16, v77
	v_lshl_or_b32 v80, v81, 16, v80
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v66, 16, v0
	v_perm_b32 v0, v217, v241, 0xc0c0004
	v_perm_b32 v66, v239, v233, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[77:78], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[79:80], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	ds_load_u8 v0, v123 offset:5376
	ds_load_u8 v66, v123 offset:5120
	ds_load_u8 v73, v123 offset:6016
	ds_load_u8 v74, v123 offset:5760
	ds_load_u8 v75, v123 offset:5504
	ds_load_u8 v76, v123 offset:5248
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_perm_b32 v68, v213, v224, 0xc0c0004
	v_perm_b32 v70, v222, v215, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v123 offset:5888
	ds_load_u8 v70, v123 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v123 offset:4352
	ds_load_u8 v71, v123 offset:4096
	ds_load_u8 v77, v123 offset:4992
	ds_load_u8 v78, v123 offset:4736
	ds_load_u8 v79, v123 offset:4480
	ds_load_u8 v80, v123 offset:4224
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v123 offset:4864
	ds_load_u8 v81, v123 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v76, v75, 0xc0c0004
	v_perm_b32 v66, v74, v73, 0xc0c0004
	v_perm_b32 v73, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_perm_b32 v77, v188, v187, 0xc0c0004
	v_perm_b32 v79, v185, v184, 0xc0c0004
	v_lshl_or_b32 v74, v66, 16, v0
	v_perm_b32 v0, v212, v211, 0xc0c0004
	v_lshl_or_b32 v73, v75, 16, v73
	v_perm_b32 v66, v204, v203, 0xc0c0004
	v_perm_b32 v75, v196, v195, 0xc0c0004
	v_lshl_or_b32 v70, v81, 16, v70
	v_perm_b32 v81, v183, v182, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v76, v66, 16, v0
	v_lshl_or_b32 v75, v77, 16, v75
	v_perm_b32 v0, v210, v209, 0xc0c0004
	v_perm_b32 v66, v201, v200, 0xc0c0004
	v_perm_b32 v77, v193, v191, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v66, 16, v0
	v_lshl_or_b32 v77, v79, 16, v77
	v_perm_b32 v0, v207, v205, 0xc0c0004
	v_perm_b32 v66, v198, v197, 0xc0c0004
	v_perm_b32 v79, v190, v189, 0xc0c0004
	v_perm_b32 v68, v181, v208, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[77:78], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_lshl_or_b32 v80, v66, 16, v0
	v_lshl_or_b32 v79, v81, 16, v79
	v_perm_b32 v0, v202, v194, 0xc0c0004
	v_perm_b32 v66, v192, v186, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[79:80], v[57:64] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_lshl_or_b32 v69, v66, 16, v0
	ds_load_u8 v0, v123 offset:7424
	ds_load_u8 v66, v123 offset:7168
	ds_load_u8 v73, v123 offset:8064
	ds_load_u8 v74, v123 offset:7808
	ds_load_u8 v75, v123 offset:7552
	ds_load_u8 v76, v123 offset:7296
	v_perm_b32 v70, v206, v199, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v68, v70, 16, v68
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v0, v66, v0, 0xc0c0004
	ds_load_u8 v66, v123 offset:7936
	ds_load_u8 v70, v123 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v66, v70, v66, 0xc0c0004
	ds_load_u8 v70, v123 offset:6400
	ds_load_u8 v71, v123 offset:6144
	ds_load_u8 v77, v123 offset:7040
	ds_load_u8 v78, v123 offset:6784
	ds_load_u8 v79, v123 offset:6528
	ds_load_u8 v80, v123 offset:6272
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v70, v71, v70, 0xc0c0004
	ds_load_u8 v71, v123 offset:6912
	ds_load_u8 v81, v123 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v81, v81, v71, 0xc0c0004
	v_lshl_or_b32 v71, v66, 16, v0
	v_perm_b32 v0, v76, v75, 0xc0c0004
	v_perm_b32 v66, v74, v73, 0xc0c0004
	v_perm_b32 v73, v80, v79, 0xc0c0004
	v_perm_b32 v75, v78, v77, 0xc0c0004
	v_perm_b32 v77, v174, v173, 0xc0c0004
	v_lshl_or_b32 v70, v81, 16, v70
	v_lshl_or_b32 v74, v66, 16, v0
	v_perm_b32 v0, v170, v168, 0xc0c0004
	v_perm_b32 v66, v163, v161, 0xc0c0004
	v_lshl_or_b32 v73, v75, 16, v73
	v_perm_b32 v75, v180, v179, 0xc0c0004
	v_perm_b32 v79, v172, v171, 0xc0c0004
	v_perm_b32 v80, v164, v162, 0xc0c0004
	v_lshl_or_b32 v76, v66, 16, v0
	v_perm_b32 v0, v166, v165, 0xc0c0004
	v_perm_b32 v66, v160, v159, 0xc0c0004
	v_lshl_or_b32 v75, v77, 16, v75
	v_perm_b32 v77, v178, v177, 0xc0c0004
	v_perm_b32 v81, v158, v157, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[70:71], v[68:69], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v78, v66, 16, v0
	v_perm_b32 v0, v176, v175, 0xc0c0004
	v_perm_b32 v66, v169, v167, 0xc0c0004
	v_lshl_or_b32 v77, v79, 16, v77
	v_lshl_or_b32 v80, v81, 16, v80
	v_wmma_i32_16x16x16_iu4 v[9:16], v[73:74], v[68:69], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[70:71], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v79, v66, 16, v0
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[70:71], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[73:74], v[77:78], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[70:71], v[79:80], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[73:74], v[79:80], v[57:64] neg_lo:[1,1,0]
	.loc	1 1140 23                       ; ragged.py:1140:23
	s_cbranch_vccnz .LBB0_6
; %bb.7:                                ;   in Loop: Header=BB0_5 Depth=1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x4                            ; 24-byte Folded Reload
	scratch_load_b32 v0, off, off offset:172
	scratch_load_b32 v66, off, off offset:176
	scratch_load_b32 v68, off, off offset:180
	scratch_load_b32 v69, off, off offset:184
	scratch_load_b64 v[70:71], off, off offset:196
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s6, s5
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s14, s22
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s33
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_mov_b32 s15, s23
	.loc	1 1201 27                       ; ragged.py:1201:27
	s_waitcnt vmcnt(0)
	v_cvt_f32_i32_e32 v71, v1
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v84, v12
	v_cvt_f32_i32_e32 v73, v2
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v75, v4
	v_cvt_f32_i32_e32 v76, v5
	v_cvt_f32_i32_e32 v77, v6
	v_cvt_f32_i32_e32 v78, v7
	v_cvt_f32_i32_e32 v79, v8
	v_cvt_f32_i32_e32 v80, v9
	v_cvt_f32_i32_e32 v81, v10
	v_cvt_f32_i32_e32 v83, v11
	v_cvt_f32_i32_e32 v85, v13
	v_cvt_f32_i32_e32 v86, v14
	v_cvt_f32_i32_e32 v87, v15
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v37, v37
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v58, v58
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v60, v60
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v57, v57
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v62, v62
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v59, v59
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v64, v64
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v61, v61
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v63, v63
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_add_lshl_u32 v0, s6, v0, 1
	v_add_lshl_u32 v66, s6, v66, 1
	v_add_lshl_u32 v68, s6, v68, 1
	v_add_lshl_u32 v69, s6, v69, 1
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_add_lshl_u32 v70, v70, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v0, 0x80000000, v0, s0
	v_cndmask_b32_e64 v66, 0x80000000, v66, s1
	v_cndmask_b32_e64 v68, 0x80000000, v68, s3
	v_cndmask_b32_e64 v69, 0x80000000, v69, s4
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v70, v70, s[12:15], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v0, v0, s[20:23], 0 offen
	buffer_load_u16 v66, v66, s[20:23], 0 offen
	buffer_load_u16 v68, v68, s[20:23], 0 offen
	buffer_load_u16 v69, v69, s[20:23], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s6, s6, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s6, s36
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v68, 16, v68
	.loc	1 1213 40                       ; ragged.py:1213:40
	v_lshlrev_b32_e32 v1, 16, v70
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v33, v33, v68 :: v_dual_lshlrev_b32 v66, 16, v66
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v17, v17, v66 :: v_dual_lshlrev_b32 v70, 16, v0
	.loc	1 1216 21                       ; ragged.py:1216:21
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v74, v74, v70 :: v_dual_lshlrev_b32 v69, 16, v69
	v_dual_mul_f32 v71, v71, v70 :: v_dual_mul_f32 v34, v34, v68
	v_dual_mul_f32 v79, v79, v70 :: v_dual_mul_f32 v42, v42, v68
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v21, v21, v66 :: v_dual_mul_f32 v54, v54, v69
	v_dual_mul_f32 v22, v22, v66 :: v_dual_mul_f32 v51, v51, v69
	v_dual_mul_f32 v76, v76, v70 :: v_dual_mul_f32 v35, v35, v68
	v_dual_mul_f32 v80, v80, v70 :: v_dual_mul_f32 v39, v39, v68
	v_dual_mul_f32 v23, v23, v66 :: v_dual_mul_f32 v56, v56, v69
	v_dual_mul_f32 v24, v24, v66 :: v_dual_mul_f32 v53, v53, v69
	v_dual_mul_f32 v78, v78, v70 :: v_dual_mul_f32 v37, v37, v68
	v_dual_mul_f32 v83, v83, v70 :: v_dual_mul_f32 v46, v46, v68
	v_dual_mul_f32 v25, v25, v66 :: v_dual_mul_f32 v58, v58, v69
	v_dual_mul_f32 v26, v26, v66 :: v_dual_mul_f32 v55, v55, v69
	v_dual_mul_f32 v85, v85, v70 :: v_dual_mul_f32 v48, v48, v68
	v_dual_mul_f32 v27, v27, v66 :: v_dual_mul_f32 v60, v60, v69
	v_dual_mul_f32 v28, v28, v66 :: v_dual_mul_f32 v57, v57, v69
	v_dual_mul_f32 v73, v73, v70 :: v_dual_mul_f32 v36, v36, v68
	v_dual_mul_f32 v75, v75, v70 :: v_dual_mul_f32 v38, v38, v68
	v_dual_mul_f32 v77, v77, v70 :: v_dual_mul_f32 v40, v40, v68
	v_dual_mul_f32 v81, v81, v70 :: v_dual_mul_f32 v44, v44, v68
	v_dual_mul_f32 v84, v84, v70 :: v_dual_mul_f32 v41, v41, v68
	v_dual_mul_f32 v86, v86, v70 :: v_dual_mul_f32 v43, v43, v68
	v_dual_mul_f32 v87, v87, v70 :: v_dual_mul_f32 v50, v50, v69
	v_dual_mul_f32 v16, v16, v70 :: v_dual_mul_f32 v45, v45, v68
	v_dual_mul_f32 v29, v29, v66 :: v_dual_mul_f32 v62, v62, v69
	v_dual_mul_f32 v30, v30, v66 :: v_dual_mul_f32 v59, v59, v69
	v_dual_mul_f32 v31, v31, v66 :: v_dual_mul_f32 v64, v64, v69
	v_dual_mul_f32 v32, v32, v66 :: v_dual_mul_f32 v61, v61, v69
	v_dual_mul_f32 v19, v19, v66 :: v_dual_mul_f32 v52, v52, v69
	v_dual_mul_f32 v18, v18, v66 :: v_dual_mul_f32 v47, v47, v68
	v_dual_mul_f32 v20, v20, v66 :: v_dual_mul_f32 v49, v49, v69
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v12, off, off offset:192
	scratch_load_b32 v70, off, off offset:92
	scratch_load_b32 v66, off, off offset:44
	s_waitcnt vmcnt(2)
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 1209 21                       ; ragged.py:1209:21
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v63, v63, v69 :: v_dual_fmac_f32 v154, v74, v2
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(2)
	v_dual_fmac_f32 v143, v79, v7 :: v_dual_fmac_f32 v122, v21, v4
	scratch_load_b32 v21, off, off offset:168 ; 4-byte Folded Reload
	v_dual_fmac_f32 v156, v71, v0 :: v_dual_fmac_f32 v155, v73, v1
	scratch_load_b32 v71, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v153, v75, v3 :: v_dual_fmac_f32 v130, v86, v13
	v_dual_fmac_f32 v149, v76, v4 :: v_dual_fmac_f32 v126, v18, v1
	v_dual_fmac_f32 v147, v77, v5 :: v_dual_fmac_f32 v132, v84, v11
	v_dual_fmac_f32 v145, v78, v6 :: v_dual_fmac_f32 v128, v16, v15
	s_clause 0x6                            ; 28-byte Folded Reload
	scratch_load_b32 v84, off, off offset:76
	scratch_load_b32 v78, off, off offset:68
	scratch_load_b32 v76, off, off offset:60
	scratch_load_b32 v74, off, off offset:52
	scratch_load_b32 v77, off, off offset:64
	scratch_load_b32 v75, off, off offset:56
	scratch_load_b32 v73, off, off offset:48
	v_dual_fmac_f32 v135, v81, v9 :: v_dual_fmac_f32 v124, v20, v3
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v66, v53, v4
	scratch_load_b32 v53, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v21, v22, v5
	scratch_load_b32 v22, off, off offset:164 ; 4-byte Folded Reload
	v_fmac_f32_e32 v141, v80, v8
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v71, v40, v7
	scratch_load_b32 v40, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(9)
	v_fmac_f32_e32 v84, v45, v12
	s_waitcnt vmcnt(8)
	v_fmac_f32_e32 v78, v47, v14
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v76, v49, v0
	s_waitcnt vmcnt(6)
	v_fmac_f32_e32 v74, v51, v2
	scratch_load_b32 v51, off, off offset:32 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_fmac_f32_e32 v75, v50, v1
	s_waitcnt vmcnt(4)
	v_fmac_f32_e32 v73, v52, v3
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v50, off, off offset:28
	scratch_load_b32 v45, off, off offset:8
	scratch_load_b32 v49, off, off offset:24
	scratch_load_b32 v47, off, off offset:16
	scratch_load_b32 v52, off, off offset:36
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v22, v23, v6
	scratch_load_b32 v23, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(7)
	v_fmac_f32_e32 v40, v43, v10
	s_waitcnt vmcnt(5)
	v_dual_fmac_f32 v51, v55, v6 :: v_dual_fmac_f32 v50, v56, v7
	s_waitcnt vmcnt(3)
	v_fmac_f32_e32 v49, v60, v11
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v47, v62, v13 :: v_dual_fmac_f32 v52, v59, v10
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v23, v24, v7
	scratch_load_b32 v24, off, off offset:156 ; 4-byte Folded Reload
	v_fmac_f32_e32 v133, v83, v10
	scratch_load_b32 v83, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v24, v25, v8
	scratch_load_b32 v25, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v83, v46, v13
	scratch_load_b32 v46, off, off offset:12 ; 4-byte Folded Reload
	v_fmac_f32_e32 v77, v48, v15
	scratch_load_b32 v48, off, off offset:20 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v25, v26, v9
	scratch_load_b32 v26, off, off offset:148 ; 4-byte Folded Reload
	v_fmac_f32_e32 v131, v85, v12
	s_waitcnt vmcnt(2)
	v_fmac_f32_e32 v46, v61, v12
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v48, v57, v8
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v26, v27, v10
	scratch_load_b32 v27, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v27, v28, v11
	scratch_load_b32 v28, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v129, v87, v14 :: v_dual_fmac_f32 v28, v29, v12
	scratch_load_b32 v29, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v29, v30, v13
	scratch_load_b32 v30, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v127, v17, v0 :: v_dual_fmac_f32 v30, v31, v14
	scratch_load_b32 v31, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v31, v32, v15
	scratch_load_b32 v32, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v125, v19, v2 :: v_dual_fmac_f32 v32, v33, v0
	scratch_load_b32 v33, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v33, v34, v1
	scratch_load_b32 v34, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v34, v35, v2
	scratch_load_b32 v35, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v35, v36, v3
	scratch_load_b32 v36, off, off offset:108 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v36, v37, v4
	scratch_load_b32 v37, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v37, v38, v5
	scratch_load_b32 v38, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v38, v39, v6
	scratch_load_b32 v39, off, off offset:88 ; 4-byte Folded Reload
	v_fmac_f32_e32 v70, v41, v8
	scratch_load_b32 v41, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v39, v42, v9
	scratch_load_b32 v42, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_fmac_f32_e32 v41, v44, v11
	scratch_load_b32 v44, off, off offset:4 ; 4-byte Folded Reload
	v_fmac_f32_e32 v53, v54, v5
	s_waitcnt vmcnt(1)
	v_dual_fmac_f32 v45, v58, v9 :: v_dual_fmac_f32 v42, v64, v15
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v44, v63, v14
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.8:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v104, off, off offset:204
	scratch_load_b32 v105, off, off offset:208
	scratch_load_b32 v106, off, off offset:212
	.loc	1 1234 19 is_stmt 1             ; ragged.py:1234:19
	v_dual_max_f32 v34, v34, v34 :: v_dual_max_f32 v35, v35, v35
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v38, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v36, 0, v36 :: v_dual_max_f32 v43, 0, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_max_f32_e32 v69, 0, v38
	v_dual_max_f32 v37, v71, v71 :: v_dual_max_f32 v38, v70, v70
	v_dual_max_f32 v39, v39, v39 :: v_dual_max_f32 v40, v40, v40
	v_max_f32_e32 v41, v41, v41
	v_dual_max_f32 v70, 0, v37 :: v_dual_max_f32 v71, 0, v38
	v_max_f32_e32 v38, v83, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_max_f32 v80, 0, v40 :: v_dual_max_f32 v81, 0, v41
	v_dual_max_f32 v79, 0, v39 :: v_dual_max_f32 v40, v77, v77
	v_max_f32_e32 v39, v78, v78
	v_max_f32_e32 v37, v84, v84
	v_max_f32_e32 v41, v76, v76
	v_max_f32_e32 v83, 0, v38
	v_max_f32_e32 v38, v74, v74
	v_max_f32_e32 v84, 0, v39
	v_max_f32_e32 v82, 0, v37
	v_dual_max_f32 v86, 0, v41 :: v_dual_max_f32 v37, v75, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v88, 0, v38 :: v_dual_max_f32 v41, v53, v53
	v_dual_max_f32 v38, v50, v50 :: v_dual_max_f32 v85, 0, v40
	v_dual_max_f32 v40, v66, v66 :: v_dual_max_f32 v39, v73, v73
	v_max_f32_e32 v91, 0, v41
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v93, 0, v38
	v_max_f32_e32 v38, v46, v46
	v_dual_max_f32 v0, v156, v156 :: v_dual_max_f32 v1, v155, v155
	v_dual_max_f32 v2, v154, v154 :: v_dual_max_f32 v3, v153, v153
	v_dual_max_f32 v4, v149, v149 :: v_dual_max_f32 v5, v147, v147
	v_dual_max_f32 v6, v145, v145 :: v_dual_max_f32 v7, v143, v143
	v_max_f32_e32 v8, v141, v141
	v_dual_max_f32 v14, v129, v129 :: v_dual_max_f32 v15, v128, v128
	v_dual_max_f32 v16, v127, v127 :: v_dual_max_f32 v17, v126, v126
	v_max_f32_e32 v18, v125, v125
	v_dual_max_f32 v24, v24, v24 :: v_dual_max_f32 v25, v25, v25
	v_dual_max_f32 v26, v26, v26 :: v_dual_max_f32 v27, v27, v27
	v_max_f32_e32 v28, v28, v28
	v_dual_max_f32 v90, 0, v40 :: v_dual_max_f32 v89, 0, v39
	v_dual_max_f32 v40, v45, v45 :: v_dual_max_f32 v39, v48, v48
	v_max_f32_e32 v87, 0, v37
	v_dual_max_f32 v41, v52, v52 :: v_dual_max_f32 v98, 0, v38
	v_dual_max_f32 v37, v51, v51 :: v_dual_max_f32 v0, 0, v0
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v6, 0, v6
	v_max_f32_e32 v9, v135, v135
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v8, 0, v8
	v_dual_max_f32 v13, v130, v130 :: v_dual_max_f32 v10, v133, v133
	v_dual_max_f32 v11, v132, v132 :: v_dual_max_f32 v12, v131, v131
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v9, 0, v9
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v18, 0, v18
	v_dual_max_f32 v19, v124, v124 :: v_dual_max_f32 v20, v122, v122
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v22, v22, v22
	v_dual_max_f32 v25, 0, v25 :: v_dual_max_f32 v26, 0, v26
	v_dual_max_f32 v29, v29, v29 :: v_dual_max_f32 v28, 0, v28
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v30, v30, v30
	v_dual_max_f32 v33, v33, v33 :: v_dual_max_f32 v32, v32, v32
	s_delay_alu instid0(VALU_DEP_3)
	v_max_f32_e32 v29, 0, v29
	v_dual_max_f32 v95, 0, v40 :: v_dual_mul_f32 v48, v1, v1
	v_max_f32_e32 v96, 0, v41
	v_max_f32_e32 v92, 0, v37
	v_max_f32_e32 v94, 0, v39
	v_dual_max_f32 v39, v47, v47 :: v_dual_mul_f32 v54, v5, v5
	v_dual_max_f32 v40, v44, v44 :: v_dual_max_f32 v37, v49, v49
	v_dual_max_f32 v41, v42, v42 :: v_dual_mul_f32 v50, v3, v3
	v_dual_max_f32 v10, 0, v10 :: v_dual_max_f32 v11, 0, v11
	v_dual_max_f32 v12, 0, v12 :: v_dual_max_f32 v13, 0, v13
	v_dual_max_f32 v14, 0, v14 :: v_dual_max_f32 v17, 0, v17
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v27, 0, v27 :: v_dual_max_f32 v30, 0, v30
	v_dual_max_f32 v31, 0, v31 :: v_dual_max_f32 v32, 0, v32
	v_max_f32_e32 v33, 0, v33
	v_dual_max_f32 v99, 0, v39 :: v_dual_mul_f32 v62, v9, v9
	v_dual_max_f32 v100, 0, v40 :: v_dual_max_f32 v97, 0, v37
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v58, v7, v7 :: v_dual_max_f32 v101, 0, v41
	v_dual_mul_f32 v78, v10, v10 :: v_dual_mul_f32 v45, v0, v0
	v_dual_mul_f32 v66, v11, v11 :: v_dual_mul_f32 v49, v2, v2
	v_mul_f32_e32 v72, v12, v12
	v_dual_mul_f32 v53, v4, v4 :: v_dual_mul_f32 v76, v14, v14
	v_dual_mul_f32 v57, v6, v6 :: v_dual_mul_f32 v74, v17, v17
	v_dual_mul_f32 v61, v8, v8 :: v_dual_mul_f32 v68, v18, v18
	v_dual_mul_f32 v73, v13, v13 :: v_dual_mul_f32 v64, v20, v20
	v_dual_mul_f32 v77, v15, v15 :: v_dual_mul_f32 v60, v22, v22
	v_dual_mul_f32 v75, v16, v16 :: v_dual_mul_f32 v52, v26, v26
	v_dual_mul_f32 v67, v19, v19 :: v_dual_mul_f32 v56, v24, v24
	v_dual_mul_f32 v63, v21, v21 :: v_dual_mul_f32 v44, v30, v30
	v_dual_mul_f32 v59, v23, v23 :: v_dual_mul_f32 v46, v29, v29
	v_dual_mul_f32 v55, v25, v25 :: v_dual_mul_f32 v42, v31, v31
	v_dual_mul_f32 v51, v27, v27 :: v_dual_mul_f32 v40, v33, v33
	v_dual_mul_f32 v47, v28, v28 :: v_dual_mul_f32 v38, v35, v35
	v_mul_f32_e32 v41, v32, v32
	v_dual_mul_f32 v39, v34, v34 :: v_dual_mul_f32 v32, v79, v79
	v_dual_mul_f32 v37, v36, v36 :: v_dual_mul_f32 v34, v70, v70
	v_dual_mul_f32 v36, v43, v43 :: v_dual_mul_f32 v35, v69, v69
	v_mul_f32_e32 v28, v83, v83
	v_dual_mul_f32 v33, v71, v71 :: v_dual_mul_f32 v30, v81, v81
	v_dual_mul_f32 v31, v80, v80 :: v_dual_mul_f32 v26, v85, v85
	v_dual_mul_f32 v29, v82, v82 :: v_dual_mul_f32 v24, v87, v87
	v_dual_mul_f32 v27, v84, v84 :: v_dual_mul_f32 v22, v89, v89
	v_dual_mul_f32 v25, v86, v86 :: v_dual_mul_f32 v20, v91, v91
	v_dual_mul_f32 v23, v88, v88 :: v_dual_mul_f32 v18, v93, v93
	v_dual_mul_f32 v21, v90, v90 :: v_dual_mul_f32 v16, v95, v95
	v_dual_mul_f32 v19, v92, v92 :: v_dual_mul_f32 v8, v98, v98
	v_dual_mul_f32 v17, v94, v94 :: v_dual_mul_f32 v6, v100, v100
	v_dual_mul_f32 v15, v96, v96 :: v_dual_mul_f32 v4, v101, v101
	v_mul_f32_e32 v9, v97, v97
	v_mul_f32_e32 v7, v99, v99
	v_mov_b32_e32 v3, v65
.LBB0_9:                                ; %._crit_edge
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp3:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v48, v48 :: v_dual_max_f32 v1, v45, v45
	v_max3_f32 v2, v50, v53, v54
	v_max3_f32 v5, v62, v78, v66
	v_max3_f32 v10, v72, v73, v76
	v_dual_max_f32 v11, v75, v75 :: v_dual_max_f32 v0, v1, v0
	v_max_f32_e32 v1, v74, v74
	v_max3_f32 v14, v55, v52, v51
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v5, v5, v10, v77
	v_max_f32_e32 v10, v41, v41
	v_max3_f32 v0, v0, v49, v2
	v_dual_max_f32 v2, v40, v40 :: v_dual_max_f32 v1, v11, v1
	v_max3_f32 v11, v67, v64, v63
	v_max3_f32 v43, v47, v46, v44
	v_max3_f32 v65, v32, v31, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v2, v10, v2
	v_max3_f32 v10, v38, v37, v36
	v_max3_f32 v69, v29, v28, v27
	v_max3_f32 v12, v57, v58, v61
	v_max3_f32 v13, v60, v59, v56
	v_max3_f32 v1, v1, v68, v11
	v_max3_f32 v11, v14, v43, v42
	v_max3_f32 v14, v35, v34, v33
	v_max3_f32 v2, v2, v39, v10
	v_max3_f32 v10, v65, v69, v26
	v_max_f32_e32 v43, v24, v24
	v_max_f32_e32 v65, v25, v25
	v_max3_f32 v0, v0, v12, v5
	v_max3_f32 v1, v1, v13, v11
	v_max3_f32 v2, v2, v14, v10
	v_max3_f32 v10, v22, v21, v20
	v_max_f32_e32 v5, v65, v43
	v_max3_f32 v12, v16, v15, v9
	v_max3_f32 v13, v8, v7, v6
	s_mov_b32 s0, 0x76543210
	v_max3_f32 v11, v19, v18, v17
	v_max3_f32 v5, v5, v23, v10
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v12, v13, v4
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v14, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v43, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	s_waitcnt vmcnt(2)
	v_dual_max_f32 v10, v10, v10 :: v_dual_and_b32 v65, 8, v104
	v_max3_f32 v5, v5, v11, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_max_f32 v13, v14, v14 :: v_dual_max_f32 v14, v43, v43
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v43, 3, v104
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v0, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v5, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v1, v13 :: v_dual_max_f32 v81, v2, v14
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 4, v104
	v_lshl_add_u32 v2, v43, 9, 0
	v_lshlrev_b32_e32 v10, 4, v104
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_lshlrev_b32 v11, 5, v43
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v13, 0x60, v104
	v_and_b32_e32 v14, 0x80, v104
	v_lshl_add_u32 v2, v1, 2, v2
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v5, v0
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v10, 0x680, v10, v11
	v_xor_b32_e32 v69, v11, v13
	v_lshlrev_b32_e32 v12, 1, v14
	v_lshl_add_u32 v2, v65, 4, v2
	v_lshrrev_b32_e32 v70, 3, v14
	v_xor_b32_e32 v10, v10, v13
	v_lshl_add_u32 v71, v1, 6, 0
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v2, v12, v69
	s_barrier
.Ltmp17:
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v71, v70, v10
	s_mov_b32 s15, 0x31027000
	ds_store_b128 v0, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_mov_b32 s14, 0x7ffffffe
	v_dual_mov_b32 v0, v79 :: v_dual_mov_b32 v5, v81
	v_mov_b32_e32 v2, v80
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v79, v79 :: v_dual_lshlrev_b32 v65, 3, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v0, v0 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v69, v80, v80
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v2
	v_max_f32_e32 v0, v10, v0
	v_max_f32_e32 v70, v82, v82
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v10, v81, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v2, v69, v2 :: v_dual_mov_b32 v71, v0
	v_max_f32_e32 v69, v82, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v5, v10, v5
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v71, v71 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v70, v69 :: v_dual_mov_b32 v69, v5
	v_max_f32_e32 v71, v71, v71
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v69, v69 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v70, v10 :: v_dual_max_f32 v69, v69, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v71, v0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v70, v70 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v71, v71 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v79
	v_dual_max_f32 v70, v70, v70 :: v_dual_max_f32 v5, v5, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v10, v10, v70 :: v_dual_mov_b32 v69, v5
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v70, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v69, v69 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v79, v2
	v_mov_b32_dpp v70, v70 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v71, v71, v71 :: v_dual_max_f32 v80, v2, v80
	v_dual_max_f32 v79, v0, v71 :: v_dual_max_f32 v2, v70, v70
	v_max_f32_e32 v0, v69, v69
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v69, 1, v13
	v_add_nc_u32_e32 v14, 0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v82, v10, v2 :: v_dual_max_f32 v81, v5, v0
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v0, 5, v1
	v_lshl_add_u32 v1, v43, 4, 0
	v_add3_u32 v2, v14, v69, v65
.Ltmp37:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v10, 4, v106
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v0, v1, v0, v65
	ds_store_b128 v2, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp39:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v43, 32, v10
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[79:82], v0
.Ltmp41:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v65, 16, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v69, v81, v81 :: v_dual_max_f32 v0, v79, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v71, 0x2b8cbccc, v69 :: v_dual_max_f32 v2, 0x2b8cbccc, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v0, 48, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v83, null, 0x40e00000, 0x40e00000, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v0, s0, s28, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s29, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v14, v5
	v_div_scale_f32 v81, vcc_lo, v2, 0x40e00000, v2
	v_rcp_f32_e32 v84, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[30:31], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v69, -v5, v14, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v14, v69, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v69, s0, s28, v43
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v43, v80, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v70, null, s29, 0, s0
	v_add_co_u32 v79, s0, s28, v65
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v43, 0x2b8cbccc, v43
	v_mul_f32_e32 v85, v81, v14
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s29, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[34:35], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v83, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v65, -v5, v85, v81
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[34:35], v[69:70]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[30:31], v[69:70]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[34:35], v[79:80]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fmac_f32_e32 v84, v1, v84
	v_div_scale_f32 v1, s7, v71, 0x40e00000, v71
	v_max_f32_e32 v0, v82, v82
	v_fmac_f32_e32 v85, v65, v14
	v_div_scale_f32 v65, null, 0x40e00000, 0x40e00000, v43
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[30:31], v[79:80]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v82, 0x2b8cbccc, v0
	v_fma_f32 v0, -v5, v85, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v65
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v70.h, 0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v14, v85
	s_mov_b32 vcc_lo, s7
	v_rcp_f32_e32 v14, v86
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v69, -v65, v81, 1.0
	v_div_fixup_f32 v0, v0, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v81, v69, v81
	v_div_scale_f32 v69, s8, v43, 0x40e00000, v43
	v_fma_f32 v85, -v86, v14, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v87, v69, v81
	v_fmac_f32_e32 v14, v85, v14
	v_div_scale_f32 v85, s9, v82, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v65, v87, v69
	v_fmac_f32_e32 v87, v79, v81
	v_mul_f32_e32 v5, v1, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v65, -v65, v87, v69
	v_fma_f32 v2, -v83, v5, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v5, v2, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v2.l, v0.h
	v_mov_b16_e32 v2.h, v70.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v1, -v83, v5, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v2, 1, v2
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v83, v1, v84, v5
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v5, v0, v2, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v80, v85, v14
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v0, s7, s28, v10
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v71, v83, 0x40e00000, v71
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v2, -v86, v80, v85
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v1, null, s29, 0, s7
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v70.l, v71.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v79, v79, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v80, v2, v14
	v_div_fmas_f32 v2, v65, v81, v87
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v65, v83
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[34:35], v[0:1]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v69, -v86, v80, v85
	v_div_fixup_f32 v2, v2, 0x40e00000, v43
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v43, 1, v70
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[30:31], v[0:1]
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v79, v79, v50
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v14, v69, v14, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v79, v79, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v83, v65, 1.0
	v_div_scale_f32 v84, vcc_lo, v45, v79, v45
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v81, v14, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v80
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v14.h, v70.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v65, v69, v65
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v71, v43, 0x7fff
	v_mov_b16_e32 v70.l, v81.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v91, null, v79, v79, v53
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v0, 1, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v79, v79, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v80, v82, 1.0
	v_mul_f32_e32 v71, v84, v65
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v69, 1, v70
	v_add3_u32 v14, v2, v0, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, s9, v48, v79, v48
	v_fmac_f32_e32 v82, v43, v82
	v_fma_f32 v70, -v83, v71, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v0, 0xffff0000, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v86, v85
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_add3_u32 v2, v81, v69, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v81, v88, v82
	v_fmac_f32_e32 v71, v70, v65
	v_rcp_f32_e32 v70, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v83, v71, v84
	v_fma_f32 v84, -v80, v81, v88
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v85, v86, 1.0
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v69, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v65, v83, v65, v71
	v_rcp_f32_e32 v83, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v90, -v87, v70, 1.0
	v_fmac_f32_e32 v81, v84, v82
	v_fmac_f32_e32 v86, v89, v86
	v_div_scale_f32 v89, s10, v49, v79, v49
	v_div_fixup_f32 v45, v65, v79, v45
	v_fma_f32 v65, -v80, v81, v88
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v71, v89, v86
	v_fma_f32 v93, -v91, v83, 1.0
	v_fmac_f32_e32 v70, v90, v70
	v_div_scale_f32 v90, null, v79, v79, v54
	v_div_scale_f32 v84, s11, v50, v79, v50
	v_div_fmas_f32 v65, v65, v82, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v80, -v85, v71, v89
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v81, s9, v53, v79, v53
	v_div_fixup_f32 v48, v65, v79, v48
	v_fmac_f32_e32 v71, v80, v86
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v93, null, v79, v79, v66
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v90, v92, 1.0
	v_fma_f32 v65, -v85, v71, v89
	v_div_scale_f32 v85, null, v79, v79, v57
	v_div_scale_f32 v89, null, v79, v79, v58
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v92, v82, v92
	v_div_scale_f32 v82, s12, v54, v79, v54
	v_mul_f32_e32 v88, v84, v70
	v_div_fmas_f32 v65, v65, v86, v71
	v_rcp_f32_e32 v86, v85
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v87, v88, v84
	v_div_fixup_f32 v49, v65, v79, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v88, v80, v70
	v_mul_f32_e32 v80, v81, v83
	v_fma_f32 v71, -v87, v88, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v91, v80, v81
	v_mul_f32_e32 v87, v82, v92
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v43, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v71, v70, v88
	v_rcp_f32_e32 v71, v89
	v_fmac_f32_e32 v80, v84, v83
	v_fma_f32 v84, -v90, v87, v82
	v_fma_f32 v88, -v85, v86, 1.0
	v_div_fixup_f32 v50, v70, v79, v50
	v_div_scale_f32 v70, s10, v57, v79, v57
	v_fma_f32 v65, -v91, v80, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v86, v88, v86
	v_fmac_f32_e32 v87, v84, v92
	v_fma_f32 v81, -v89, v71, 1.0
	v_div_scale_f32 v84, null, v79, v79, v61
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v88, null, v79, v79, v62
	v_fmac_f32_e32 v71, v81, v71
	v_rcp_f32_e32 v81, v84
	v_div_fmas_f32 v65, v65, v83, v80
	v_fma_f32 v80, -v90, v87, v82
	v_div_scale_f32 v83, s9, v58, v79, v58
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v53, v65, v79, v53
	v_mul_f32_e32 v90, v83, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v91, -v84, v81, 1.0
	v_fma_f32 v65, -v89, v90, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v81, v91, v81 :: v_dual_mul_f32 v82, v70, v86
	v_div_fmas_f32 v80, v80, v92, v87
	v_rcp_f32_e32 v92, v88
	v_fmac_f32_e32 v90, v65, v71
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v87, -v85, v82, v70
	v_div_fixup_f32 v54, v80, v79, v54
	v_div_scale_f32 v80, s11, v61, v79, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v87, v86
	v_div_scale_f32 v87, null, v79, v79, v78
	v_fma_f32 v91, -v88, v92, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v65, v80, v81
	v_fma_f32 v70, -v85, v82, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v87
	v_fmac_f32_e32 v92, v91, v92
	v_div_scale_f32 v91, s12, v62, v79, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v70, v70, v86, v82
	v_fma_f32 v82, -v89, v90, v83
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v84, v65, v80
	v_mul_f32_e32 v86, v91, v92
	v_fma_f32 v89, -v87, v85, 1.0
	v_div_fmas_f32 v71, v82, v71, v90
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v65, v83, v81
	v_fma_f32 v83, -v88, v86, v91
	v_fmac_f32_e32 v85, v89, v85
	v_div_scale_f32 v89, s9, v78, v79, v78
	v_div_fixup_f32 v57, v70, v79, v57
	v_fma_f32 v70, -v84, v65, v80
	v_fmac_f32_e32 v86, v83, v92
	v_div_scale_f32 v83, null, v79, v79, v72
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v58, v71, v79, v58
	v_div_scale_f32 v84, s10, v66, v79, v66
	v_dual_fmac_f32 v82, v80, v82 :: v_dual_mul_f32 v71, v89, v85
	v_div_fmas_f32 v65, v70, v81, v65
	v_fma_f32 v70, -v88, v86, v91
	v_rcp_f32_e32 v80, v83
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v88, null, v79, v79, v73
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v92, v86
	v_mul_f32_e32 v86, v84, v82
	v_fma_f32 v81, -v87, v71, v89
	v_div_fixup_f32 v61, v65, v79, v61
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v62, v70, v79, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v83, v80, 1.0
	v_fmac_f32_e32 v71, v81, v85
	v_rcp_f32_e32 v81, v88
	v_fma_f32 v70, -v93, v86, v84
	v_fmac_f32_e32 v80, v90, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v65, -v87, v71, v89
	v_div_scale_f32 v87, s11, v72, v79, v72
	v_div_scale_f32 v90, null, v79, v79, v76
	v_div_fmas_f32 v65, v65, v85, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v89, -v88, v81, 1.0
	v_fmac_f32_e32 v86, v70, v82
	v_rcp_f32_e32 v71, v90
	v_div_scale_f32 v85, s9, v73, v79, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v89, v81
	v_div_scale_f32 v89, null, v79, v79, v77
	v_mul_f32_e32 v70, v87, v80
	v_div_fixup_f32 v65, v65, v79, v78
	v_fma_f32 v78, -v93, v86, v84
	v_rcp_f32_e32 v92, v89
	v_mul_f32_e32 v91, v85, v81
	v_fma_f32 v84, -v83, v70, v87
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v93, -v90, v71, 1.0
	v_div_fmas_f32 v78, v78, v82, v86
	v_fma_f32 v82, -v88, v91, v85
	v_fmac_f32_e32 v70, v84, v80
	v_div_scale_f32 v84, s10, v76, v79, v76
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v86, -v89, v92, 1.0
	v_fmac_f32_e32 v71, v93, v71
	v_div_fixup_f32 v66, v78, v79, v66
	v_fma_f32 v78, -v83, v70, v87
	v_fmac_f32_e32 v91, v82, v81
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, null, v0, v0, v75
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v82, v84, v71
	v_div_fmas_f32 v70, v78, v80, v70
	v_fma_f32 v78, -v88, v91, v85
	v_rcp_f32_e32 v85, v86
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, s12, v77, v79, v77
	v_fma_f32 v80, -v90, v82, v84
	v_div_scale_f32 v88, null, v0, v0, v74
	v_div_fmas_f32 v78, v78, v81, v91
	v_div_fixup_f32 v72, v70, v79, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v80, v71
	v_fma_f32 v91, -v86, v85, 1.0
	v_rcp_f32_e32 v80, v88
	v_div_fixup_f32 v73, v78, v79, v73
	v_div_scale_f32 v78, s9, v75, v0, v75
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v85, v91, v85
	v_mul_f32_e32 v87, v83, v92
	v_fma_f32 v70, -v90, v82, v84
	v_div_scale_f32 v84, null, v0, v0, v68
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v81, -v89, v87, v83
	v_div_fmas_f32 v70, v70, v71, v82
	v_mul_f32_e32 v82, v78, v85
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v81, v92
	v_fma_f32 v81, -v88, v80, 1.0
	v_div_fixup_f32 v76, v70, v79, v76
	v_fma_f32 v71, -v89, v87, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v84
	v_div_scale_f32 v89, null, v0, v0, v67
	v_div_scale_f32 v83, s10, v74, v0, v74
	v_div_fmas_f32 v71, v71, v92, v87
	v_fma_f32 v87, -v86, v82, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v92, v89
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v91, -v84, v81, 1.0
	v_div_fixup_f32 v77, v71, v79, v77
	v_fmac_f32_e32 v82, v87, v85
	v_div_scale_f32 v79, null, v0, v0, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v81, v91, v81
	v_mul_f32_e32 v90, v83, v80
	v_div_scale_f32 v71, s11, v68, v0, v68
	v_fma_f32 v87, -v89, v92, 1.0
	v_fma_f32 v78, -v86, v82, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v88, v90, v83
	v_rcp_f32_e32 v86, v79
	v_div_scale_f32 v91, null, v0, v0, v63
	v_fmac_f32_e32 v92, v87, v92
	v_fmac_f32_e32 v90, v70, v80
	v_mul_f32_e32 v70, v71, v81
	v_div_scale_f32 v87, s12, v67, v0, v67
	v_div_fmas_f32 v78, v78, v85, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v82, -v88, v90, v83
	v_fma_f32 v83, -v84, v70, v71
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v79, v86, 1.0
	v_mul_f32_e32 v85, v87, v92
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v75, v78, v0, v75
	v_fmac_f32_e32 v70, v83, v81
	v_fmac_f32_e32 v86, v88, v86
	v_fma_f32 v83, -v89, v85, v87
	v_div_scale_f32 v88, s9, v64, v0, v64
	v_div_fmas_f32 v80, v82, v80, v90
	v_rcp_f32_e32 v82, v91
	v_fma_f32 v71, -v84, v70, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v85, v83, v92 :: v_dual_mul_f32 v78, v88, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v74, v80, v0, v74
	v_div_fmas_f32 v70, v71, v81, v70
	v_div_scale_f32 v83, null, v0, v0, v60
	v_fma_f32 v81, -v79, v78, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v91, v82, 1.0
	v_fma_f32 v71, -v89, v85, v87
	v_div_scale_f32 v87, null, v0, v0, v59
	v_fmac_f32_e32 v78, v81, v86
	v_div_fixup_f32 v68, v70, v0, v68
	v_div_scale_f32 v84, s10, v63, v0, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v87
	v_fma_f32 v70, -v79, v78, v88
	v_div_scale_f32 v79, s11, v60, v0, v60
	v_fmac_f32_e32 v82, v80, v82
	v_rcp_f32_e32 v80, v83
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v88, -v87, v81, 1.0
	v_fma_f32 v89, -v83, v80, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v81, v88, v81
	v_div_fmas_f32 v71, v71, v92, v85
	v_mul_f32_e32 v85, v84, v82
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v89, v80
	v_div_scale_f32 v89, null, v0, v0, v56
	v_div_fixup_f32 v67, v71, v0, v67
	v_fma_f32 v71, -v91, v85, v84
	v_div_fmas_f32 v70, v70, v86, v78
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v78, v89
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, s9, v59, v0, v59
	v_fmac_f32_e32 v85, v71, v82
	v_mul_f32_e32 v71, v79, v80
	v_div_fixup_f32 v64, v70, v0, v64
	v_div_scale_f32 v88, null, v0, v0, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v91, v85, v84
	v_fma_f32 v84, -v83, v71, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v89, v78, 1.0
	v_rcp_f32_e32 v91, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v82, v85
	v_fmac_f32_e32 v71, v84, v80
	v_fmac_f32_e32 v78, v92, v78
	v_div_scale_f32 v84, s10, v56, v0, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v63, v70, v0, v63
	v_fma_f32 v70, -v83, v71, v79
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v79, v84, v78
	v_fma_f32 v85, -v88, v91, 1.0
	v_div_scale_f32 v83, null, v0, v0, v52
	v_div_fmas_f32 v70, v70, v80, v71
	v_fma_f32 v80, -v89, v79, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v90, v86, v81 :: v_dual_fmac_f32 v91, v85, v91
	v_rcp_f32_e32 v85, v83
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v79, v80, v78
	v_fma_f32 v82, -v87, v90, v86
	v_div_fixup_f32 v60, v70, v0, v60
	v_div_scale_f32 v92, null, v0, v0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v89, v79, v84
	v_fmac_f32_e32 v90, v82, v81
	v_div_scale_f32 v82, s12, v55, v0, v55
	v_div_scale_f32 v84, null, v0, v0, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v71, -v87, v90, v86
	v_div_scale_f32 v87, null, v0, v0, v51
	v_mul_f32_e32 v86, v82, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v81, v90
	v_rcp_f32_e32 v80, v87
	v_fma_f32 v90, -v83, v85, 1.0
	v_fma_f32 v81, -v88, v86, v82
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v59, v71, v0, v59
	v_div_scale_f32 v71, s9, v52, v0, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v86, v81, v91 :: v_dual_fmac_f32 v85, v90, v85
	v_div_fmas_f32 v70, v70, v78, v79
	v_fma_f32 v81, -v87, v80, 1.0
	s_mov_b32 vcc_lo, s12
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v63, v63
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v79, v71, v85
	v_div_fixup_f32 v56, v70, v0, v56
	v_fmac_f32_e32 v80, v81, v80
	v_rcp_f32_e32 v81, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	v_rndne_f32_e32 v59, v59
	v_rndne_f32_e32 v56, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v84, v81, 1.0
	v_fmac_f32_e32 v81, v90, v81
	v_fma_f32 v78, -v88, v86, v82
	v_div_scale_f32 v82, s10, v51, v0, v51
	v_div_scale_f32 v88, null, v0, v0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v78, v78, v91, v86
	v_fma_f32 v86, -v83, v79, v71
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v55, v78, v0, v55
	v_fmac_f32_e32 v79, v86, v85
	v_mul_f32_e32 v89, v82, v80
	v_div_scale_f32 v86, null, v0, v0, v44
	v_div_scale_f32 v78, s11, v47, v0, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v70, -v87, v89, v82
	v_fma_f32 v71, -v83, v79, v71
	v_rcp_f32_e32 v83, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v90, -v88, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v70, v80
	v_mul_f32_e32 v70, v78, v81
	v_div_fmas_f32 v71, v71, v85, v79
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v87, v89, v82
	v_fma_f32 v82, -v84, v70, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v87, -v86, v83, 1.0
	v_div_fixup_f32 v52, v71, v0, v52
	v_dual_fmac_f32 v70, v82, v81 :: v_dual_fmac_f32 v83, v87, v83
	v_div_scale_f32 v87, s9, v44, v0, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v71, -v84, v70, v78
	v_div_scale_f32 v84, s10, v42, v0, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v78, v87, v83
	v_div_fmas_f32 v79, v79, v80, v89
	v_rcp_f32_e32 v80, v92
	s_mov_b32 vcc_lo, s11
	v_div_fmas_f32 v70, v71, v81, v70
	v_div_fixup_f32 v51, v79, v0, v51
	v_fma_f32 v81, -v86, v78, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v47, v70, v0, v47
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v92, v80, 1.0
	v_fmac_f32_e32 v91, v90, v91
	v_div_scale_f32 v90, s12, v46, v0, v46
	v_fmac_f32_e32 v78, v81, v83
	v_fmac_f32_e32 v80, v79, v80
	s_mov_b32 vcc_lo, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v85, v90, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v70, -v86, v78, v87
	v_div_scale_f32 v86, s11, v41, v69, v41
	v_fma_f32 v82, -v88, v85, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v85, v82, v91
	v_div_scale_f32 v82, null, v69, v69, v41
	v_fma_f32 v71, -v88, v85, v90
	v_div_scale_f32 v88, null, v69, v69, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v79, v82
	v_div_fmas_f32 v71, v71, v91, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v81, v88
	v_mul_f32_e32 v85, v84, v80
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v46, v71, v0, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v71, -v92, v85, v84
	v_fma_f32 v89, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v88, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v71, v80
	v_fmac_f32_e32 v79, v89, v79
	v_div_scale_f32 v89, null, v69, v69, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v81, v87, v81
	v_div_fmas_f32 v70, v70, v83, v78
	v_div_scale_f32 v83, s9, v40, v69, v40
	v_rcp_f32_e32 v78, v89
	v_div_scale_f32 v87, null, v69, v69, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v44, v70, v0, v44
	v_fma_f32 v70, -v92, v85, v84
	v_mul_f32_e32 v90, v83, v81
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v91, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v80, v85
	v_fma_f32 v80, -v88, v90, v83
	v_mul_f32_e32 v71, v86, v79
	v_fma_f32 v92, -v89, v78, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v0, v70, v0, v42
	v_fmac_f32_e32 v90, v80, v81
	v_fma_f32 v84, -v82, v71, v86
	v_fmac_f32_e32 v78, v92, v78
	v_fma_f32 v85, -v87, v91, 1.0
	v_div_scale_f32 v80, s12, v38, v69, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v71, v84, v79
	v_div_scale_f32 v84, s10, v39, v69, v39
	v_fmac_f32_e32 v91, v85, v91
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v82, v71, v86
	v_mul_f32_e32 v70, v84, v78
	v_div_scale_f32 v82, null, v69, v69, v37
	v_mul_f32_e32 v85, v80, v91
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v79, v71
	v_fma_f32 v71, -v88, v90, v83
	v_fma_f32 v79, -v89, v70, v84
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v82
	v_div_fixup_f32 v41, v42, v69, v41
	v_div_fmas_f32 v71, v71, v81, v90
	v_fmac_f32_e32 v70, v79, v78
	v_fma_f32 v81, -v87, v85, v80
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v86, null, v69, v69, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v42, -v89, v70, v84
	v_fmac_f32_e32 v85, v81, v91
	v_div_scale_f32 v84, null, v69, v69, v35
	v_fma_f32 v88, -v82, v83, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v42, v42, v78, v70
	v_fma_f32 v70, -v87, v85, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v80, v84
	v_div_scale_f32 v87, null, v69, v69, v34
	v_div_fixup_f32 v40, v71, v69, v40
	v_div_scale_f32 v71, s9, v37, v69, v37
	v_rcp_f32_e32 v90, v87
	v_rcp_f32_e32 v79, v86
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v39, v42, v69, v39
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v84, v80, 1.0
	v_div_fmas_f32 v70, v70, v91, v85
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v91, null, v69, v69, v32
	v_fmac_f32_e32 v80, v89, v80
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v89, -v87, v90, 1.0
	v_fmac_f32_e32 v83, v88, v83
	v_fma_f32 v81, -v86, v79, 1.0
	v_div_fixup_f32 v38, v70, v69, v38
	v_div_scale_f32 v70, s11, v35, v69, v35
	v_fmac_f32_e32 v90, v89, v90
	v_div_scale_f32 v89, s12, v34, v69, v34
	v_mul_f32_e32 v78, v71, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v82, v78, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v78, v85, v83
	v_div_scale_f32 v85, null, v69, v69, v33
	v_fma_f32 v71, -v82, v78, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v85
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, s10, v36, v69, v36
	v_div_fmas_f32 v71, v71, v83, v78
	v_mul_f32_e32 v83, v89, v90
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v88, v81, v79
	v_div_fixup_f32 v37, v71, v69, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v86, v88, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v42, v79
	v_mul_f32_e32 v42, v70, v80
	v_fma_f32 v78, -v86, v88, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v81, -v84, v42, v70
	v_fma_f32 v86, -v85, v82, 1.0
	v_fmac_f32_e32 v42, v81, v80
	v_fma_f32 v81, -v87, v83, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v82, v86, v82
	v_div_scale_f32 v86, s9, v33, v69, v33
	v_fmac_f32_e32 v83, v81, v90
	v_div_fmas_f32 v78, v78, v79, v88
	v_rcp_f32_e32 v79, v91
	v_div_scale_f32 v81, null, v69, v69, v31
	v_mul_f32_e32 v71, v86, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v36, v78, v69, v36
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v91, v79, 1.0
	v_fmac_f32_e32 v79, v78, v79
	v_fma_f32 v70, -v84, v42, v70
	v_rcp_f32_e32 v78, v81
	v_div_scale_f32 v84, s10, v32, v69, v32
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v42, v70, v80, v42
	v_fma_f32 v80, -v85, v71, v86
	v_fma_f32 v70, -v87, v83, v89
	v_div_scale_f32 v87, null, v69, v69, v30
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v71, v80, v82
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v88, -v81, v78, 1.0
	v_div_fmas_f32 v70, v70, v90, v83
	v_rcp_f32_e32 v80, v87
	v_div_fixup_f32 v35, v42, v69, v35
	v_fma_f32 v42, -v85, v71, v86
	v_fmac_f32_e32 v78, v88, v78
	v_div_scale_f32 v85, s11, v31, v69, v31
	v_mul_f32_e32 v83, v84, v79
	v_div_scale_f32 v88, null, v69, v69, v29
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v70, v69, v34
	v_fma_f32 v70, -v91, v83, v84
	v_div_fmas_f32 v42, v42, v82, v71
	v_rcp_f32_e32 v71, v88
	v_fma_f32 v86, -v87, v80, 1.0
	v_div_scale_f32 v82, s9, v30, v69, v30
	v_fmac_f32_e32 v83, v70, v79
	v_div_fixup_f32 v33, v42, v69, v33
	v_mul_f32_e32 v70, v85, v78
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v42, -v91, v83, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v88, v71, 1.0
	v_fmac_f32_e32 v80, v86, v80
	v_div_scale_f32 v86, null, v69, v69, v28
	v_fma_f32 v84, -v81, v70, v85
	v_fmac_f32_e32 v71, v91, v71
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v82, v80
	v_rcp_f32_e32 v90, v86
	v_div_fmas_f32 v42, v42, v79, v83
	v_fmac_f32_e32 v70, v84, v78
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v79, -v87, v89, v82
	v_div_scale_f32 v83, s10, v29, v69, v29
	v_div_fixup_f32 v32, v42, v69, v32
	v_fma_f32 v42, -v81, v70, v85
	v_div_scale_f32 v81, s12, v28, v69, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v86, v90, 1.0
	v_fmac_f32_e32 v89, v79, v80
	v_div_fmas_f32 v42, v42, v78, v70
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v90, v84, v90
	v_div_scale_f32 v84, null, v69, v69, v27
	v_fma_f32 v70, -v87, v89, v82
	v_div_scale_f32 v87, null, v69, v69, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v82, v84
	v_mul_f32_e32 v85, v81, v90
	v_div_fmas_f32 v70, v70, v80, v89
	v_div_fixup_f32 v31, v42, v69, v31
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v86, v85, v81
	v_div_fixup_f32 v30, v70, v69, v30
	v_div_scale_f32 v70, s9, v27, v69, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v84, v82, 1.0
	v_mul_f32_e32 v79, v83, v71
	v_fmac_f32_e32 v85, v80, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v89, v82
	v_fma_f32 v78, -v88, v79, v83
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v79, v78, v71
	v_rcp_f32_e32 v78, v87
	v_fma_f32 v80, -v87, v78, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v78, v80, v78
	v_fma_f32 v42, -v88, v79, v83
	v_div_scale_f32 v80, null, v43, v43, v25
	v_div_scale_f32 v88, null, v43, v43, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v71, v79
	v_fma_f32 v71, -v86, v85, v81
	v_mul_f32_e32 v79, v70, v82
	v_rcp_f32_e32 v83, v80
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v81, s10, v26, v69, v26
	v_div_fmas_f32 v71, v71, v90, v85
	v_fma_f32 v85, -v84, v79, v70
	v_div_fixup_f32 v29, v42, v69, v29
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v90, null, v43, v43, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v79, v85, v82
	v_fma_f32 v85, -v80, v83, 1.0
	v_div_fixup_f32 v28, v71, v69, v28
	v_rcp_f32_e32 v71, v88
	v_rcp_f32_e32 v92, v90
	v_fma_f32 v70, -v84, v79, v70
	v_div_scale_f32 v84, null, v43, v43, v23
	v_fmac_f32_e32 v83, v85, v83
	v_mul_f32_e32 v86, v81, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v70, v82, v79
	v_rcp_f32_e32 v85, v84
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v88, v71, 1.0
	v_fma_f32 v42, -v87, v86, v81
	v_div_scale_f32 v82, s9, v24, v43, v24
	v_div_fixup_f32 v27, v70, v69, v27
	v_dual_fmac_f32 v71, v89, v71 :: v_dual_fmac_f32 v86, v42, v78
	v_div_scale_f32 v42, s11, v25, v43, v25
	v_fma_f32 v70, -v90, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v87, v86, v81
	v_fma_f32 v87, -v84, v85, 1.0
	v_mul_f32_e32 v81, v42, v83
	v_fmac_f32_e32 v92, v70, v92
	v_div_scale_f32 v70, s10, v22, v43, v22
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, s12, v23, v43, v23
	v_div_fmas_f32 v78, v79, v78, v86
	v_fma_f32 v89, -v80, v81, v42
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v86, v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v26, v78, v69, v26
	v_div_scale_f32 v78, null, v43, v43, v21
	v_fma_f32 v69, -v84, v86, v87
	v_mul_f32_e32 v91, v82, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v69, v85
	v_fma_f32 v79, -v88, v91, v82
	v_rcp_f32_e32 v69, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v79, v71
	v_fma_f32 v79, -v88, v91, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v78, v69, 1.0
	v_fmac_f32_e32 v69, v82, v69
	v_fmac_f32_e32 v81, v89, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v80, v81, v42
	v_mul_f32_e32 v80, v70, v92
	v_div_fmas_f32 v42, v42, v83, v81
	v_div_scale_f32 v81, null, v43, v43, v20
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v82, s9, v21, v43, v21
	v_rcp_f32_e32 v83, v81
	v_div_fmas_f32 v71, v79, v71, v91
	v_fma_f32 v79, -v84, v86, v87
	v_fma_f32 v84, -v90, v80, v70
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v25, v42, v43, v25
	v_div_fixup_f32 v24, v71, v43, v24
	v_div_fmas_f32 v79, v79, v85, v86
	v_fmac_f32_e32 v80, v84, v92
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v71, -v81, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v23, v79, v43, v23
	v_fma_f32 v70, -v90, v80, v70
	v_div_scale_f32 v79, null, v43, v43, v19
	v_fmac_f32_e32 v83, v71, v83
	v_div_scale_f32 v71, s11, v20, v43, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v70, v70, v92, v80
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v85, v79
	v_mul_f32_e32 v80, v71, v83
	v_mul_f32_e32 v42, v82, v69
	v_div_fixup_f32 v22, v70, v43, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v78, v42, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v42, v84, v69
	v_div_scale_f32 v84, null, v43, v43, v18
	v_fma_f32 v70, -v78, v42, v82
	v_fma_f32 v78, -v81, v80, v71
	v_fma_f32 v82, -v79, v85, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v86, v84
	v_div_fmas_f32 v42, v70, v69, v42
	v_div_scale_f32 v69, null, v43, v43, v17
	v_fmac_f32_e32 v80, v78, v83
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, s11, v17, v43, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v78, v69
	v_fma_f32 v71, -v81, v80, v71
	v_div_scale_f32 v70, s9, v19, v43, v19
	v_div_fixup_f32 v21, v42, v43, v21
	v_fma_f32 v42, -v84, v86, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v87, -v69, v78, 1.0
	v_fmac_f32_e32 v85, v82, v85
	v_div_scale_f32 v82, null, v43, v43, v16
	v_fmac_f32_e32 v86, v42, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v78, v87, v78
	v_div_scale_f32 v42, s10, v18, v43, v18
	v_rcp_f32_e32 v88, v82
	v_div_scale_f32 v87, null, v43, v43, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v92, v89, v78
	v_div_fmas_f32 v71, v71, v83, v80
	v_mul_f32_e32 v83, v42, v86
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v91, v87
	v_div_fixup_f32 v20, v71, v43, v20
	v_fma_f32 v71, -v69, v92, v89
	v_mul_f32_e32 v81, v70, v85
	v_fma_f32 v90, -v82, v88, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v71, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v79, v81, v70
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s12, v16, v43, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v69, -v69, v92, v89
	v_fmac_f32_e32 v81, v80, v85
	v_fma_f32 v80, -v84, v83, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v70, -v79, v81, v70
	v_fmac_f32_e32 v83, v80, v86
	v_mul_f32_e32 v79, v90, v88
	v_fma_f32 v80, -v87, v91, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v70, v70, v85, v81
	v_fma_f32 v42, -v84, v83, v42
	v_div_scale_f32 v81, null, v43, v43, v9
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v71, -v82, v79, v90
	v_div_fmas_f32 v42, v42, v86, v83
	v_rcp_f32_e32 v83, v81
	v_fmac_f32_e32 v91, v80, v91
	v_div_scale_f32 v80, s9, v15, v43, v15
	v_div_fixup_f32 v19, v70, v43, v19
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v18, v42, v43, v18
	v_div_fmas_f32 v69, v69, v78, v92
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v85, null, v43, v43, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v70, -v81, v83, 1.0
	v_div_fixup_f32 v17, v69, v43, v17
	v_div_scale_f32 v69, null, v43, v43, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v70, v83
	v_fmac_f32_e32 v79, v71, v88
	v_mul_f32_e32 v71, v80, v91
	v_div_scale_f32 v70, null, v43, v43, v7
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v78, -v82, v79, v90
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v82, -v87, v71, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v88, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v71, v82, v91
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v16, v78, v43, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v87, v71, v80
	v_rcp_f32_e32 v80, v70
	v_div_scale_f32 v78, null, v43, v43, v6
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v86, -v70, v80, 1.0
	v_fmac_f32_e32 v80, v86, v80
	v_div_fmas_f32 v42, v42, v91, v71
	v_rcp_f32_e32 v71, v69
	v_div_scale_f32 v79, vcc_lo, v9, v43, v9
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v89, -v78, v82, 1.0
	v_div_fixup_f32 v15, v42, v43, v15
	v_div_scale_f32 v86, s10, v7, v43, v7
	v_fma_f32 v91, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v82, v89, v82
	v_div_scale_f32 v89, s11, v6, v43, v6
	v_fma_f32 v42, -v69, v71, 1.0
	v_mul_f32_e32 v84, v79, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v92, v86, v80 :: v_dual_mul_f32 v93, v89, v82
	v_fmac_f32_e32 v87, v91, v87
	v_fmac_f32_e32 v71, v42, v71
	v_div_scale_f32 v42, s9, v8, v43, v8
	v_fma_f32 v88, -v81, v84, v79
	v_div_scale_f32 v91, s12, v4, v43, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v42, v71
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v88, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v88, -v69, v90, v42
	v_fma_f32 v79, -v81, v84, v79
	v_fma_f32 v81, -v70, v92, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v88, v71
	v_fma_f32 v88, -v78, v93, v89
	v_mul_f32_e32 v94, v91, v87
	v_fmac_f32_e32 v92, v81, v80
	v_div_fmas_f32 v79, v79, v83, v84
	v_fma_f32 v42, -v69, v90, v42
	v_fmac_f32_e32 v93, v88, v82
	v_fma_f32 v69, -v85, v94, v91
	v_fma_f32 v70, -v70, v92, v86
	s_mov_b32 vcc_lo, s9
	s_mov_b32 s9, 0xc1000000
	v_div_fmas_f32 v42, v42, v71, v90
	v_fmac_f32_e32 v94, v69, v87
	v_fma_f32 v69, -v78, v93, v89
	s_mov_b32 vcc_lo, s10
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s9, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v70, v70, v80, v92
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v71, -v85, v94, v91
	v_div_fmas_f32 v69, v69, v82, v93
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v8, v42, v43, v8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v71, v71, v87, v94
	v_div_fixup_f32 v6, v69, v43, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v49
	v_rndne_f32_e32 v49, v53
	v_rndne_f32_e32 v53, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v4, v71, v43, v4
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v61
	v_rndne_f32_e32 v61, v65
	v_rndne_f32_e32 v65, v72
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v72, v74
	v_rndne_f32_e32 v8, v8
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v42, v42, s9, 0x40e00000
	v_med3_f32 v45, v45, s9, 0x40e00000
	v_med3_f32 v39, v39, s9, 0x40e00000
	v_med3_f32 v71, v71, s9, 0x40e00000
	v_med3_f32 v72, v72, s9, 0x40e00000
	v_med3_f32 v44, v44, s9, 0x40e00000
	v_med3_f32 v40, v40, s9, 0x40e00000
	v_med3_f32 v8, v8, s9, 0x40e00000
	v_med3_f32 v6, v6, s9, 0x40e00000
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v75, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v9, v79, v43, v9
	v_div_fixup_f32 v7, v70, v43, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v48
	v_rndne_f32_e32 v48, v50
	v_rndne_f32_e32 v50, v54
	v_rndne_f32_e32 v54, v58
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v66
	v_rndne_f32_e32 v4, v4
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v41, v41, s9, 0x40e00000
	v_med3_f32 v28, v28, s9, 0x40e00000
	v_med3_f32 v27, v27, s9, 0x40e00000
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v74, v40
	v_cvt_i32_f32_e32 v101, v8
	v_cvt_i32_f32_e32 v103, v6
	v_and_b32_e32 v6, 15, v42
	v_and_b32_e32 v8, 15, v45
	v_and_b32_e32 v42, 15, v0
	v_and_b32_e32 v45, 15, v75
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v104
	v_and_b32_e32 v75, 16, v104
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v73
	v_rndne_f32_e32 v69, v76
	v_rndne_f32_e32 v70, v77
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s9, 0x40e00000
	v_med3_f32 v48, v48, s9, 0x40e00000
	v_med3_f32 v49, v49, s9, 0x40e00000
	v_med3_f32 v50, v50, s9, 0x40e00000
	v_med3_f32 v53, v53, s9, 0x40e00000
	v_med3_f32 v54, v54, s9, 0x40e00000
	v_med3_f32 v61, v61, s9, 0x40e00000
	v_med3_f32 v62, v62, s9, 0x40e00000
	v_med3_f32 v68, v68, s9, 0x40e00000
	v_med3_f32 v67, v67, s9, 0x40e00000
	v_med3_f32 v64, v64, s9, 0x40e00000
	v_med3_f32 v63, v63, s9, 0x40e00000
	v_med3_f32 v60, v60, s9, 0x40e00000
	v_med3_f32 v59, v59, s9, 0x40e00000
	v_med3_f32 v46, v46, s9, 0x40e00000
	v_med3_f32 v38, v38, s9, 0x40e00000
	v_med3_f32 v25, v25, s9, 0x40e00000
	v_med3_f32 v24, v24, s9, 0x40e00000
	v_med3_f32 v23, v23, s9, 0x40e00000
	v_med3_f32 v22, v22, s9, 0x40e00000
	v_med3_f32 v4, v4, s9, 0x40e00000
	v_cvt_i32_f32_e32 v73, v41
	v_cvt_i32_f32_e32 v86, v28
	v_cvt_i32_f32_e32 v87, v27
	v_and_b32_e32 v27, 15, v71
	v_and_b32_e32 v28, 15, v72
	v_and_b32_e32 v41, 15, v44
	v_and_b32_e32 v44, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v71, 4, v105
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v72, 6, v75
	v_lshlrev_b32_e32 v74, 6, v104
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s9, 0x40e00000
	v_med3_f32 v58, v58, s9, 0x40e00000
	v_med3_f32 v65, v65, s9, 0x40e00000
	v_med3_f32 v66, v66, s9, 0x40e00000
	v_med3_f32 v69, v69, s9, 0x40e00000
	v_med3_f32 v70, v70, s9, 0x40e00000
	v_med3_f32 v56, v56, s9, 0x40e00000
	v_med3_f32 v55, v55, s9, 0x40e00000
	v_med3_f32 v52, v52, s9, 0x40e00000
	v_med3_f32 v51, v51, s9, 0x40e00000
	v_med3_f32 v47, v47, s9, 0x40e00000
	v_med3_f32 v33, v33, s9, 0x40e00000
	v_med3_f32 v32, v32, s9, 0x40e00000
	v_med3_f32 v31, v31, s9, 0x40e00000
	v_med3_f32 v30, v30, s9, 0x40e00000
	v_med3_f32 v17, v17, s9, 0x40e00000
	v_med3_f32 v16, v16, s9, 0x40e00000
	v_med3_f32 v15, v15, s9, 0x40e00000
	v_med3_f32 v9, v9, s9, 0x40e00000
	v_med3_f32 v34, v34, s9, 0x40e00000
	v_med3_f32 v29, v29, s9, 0x40e00000
	v_med3_f32 v21, v21, s9, 0x40e00000
	v_med3_f32 v18, v18, s9, 0x40e00000
	v_med3_f32 v7, v7, s9, 0x40e00000
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v76, v38
	v_cvt_i32_f32_e32 v89, v25
	v_cvt_i32_f32_e32 v90, v24
	v_cvt_i32_f32_e32 v91, v23
	v_cvt_i32_f32_e32 v92, v22
	v_cvt_i32_f32_e32 v4, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v13, v71, v13
	v_add3_u32 v0, 0, v0, v72
	v_and_or_b32 v11, 0x1b00, v74, v11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s9, 0x40e00000
	v_med3_f32 v36, v36, s9, 0x40e00000
	v_med3_f32 v35, v35, s9, 0x40e00000
	v_med3_f32 v26, v26, s9, 0x40e00000
	v_med3_f32 v20, v20, s9, 0x40e00000
	v_med3_f32 v19, v19, s9, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v81, v33
	v_cvt_i32_f32_e32 v82, v32
	v_cvt_i32_f32_e32 v83, v31
	v_cvt_i32_f32_e32 v84, v30
	v_cvt_i32_f32_e32 v97, v17
	v_cvt_i32_f32_e32 v98, v16
	v_cvt_i32_f32_e32 v99, v15
	v_cvt_i32_f32_e32 v100, v9
	v_cvt_i32_f32_e32 v80, v34
	v_cvt_i32_f32_e32 v85, v29
	v_cvt_i32_f32_e32 v93, v21
	v_cvt_i32_f32_e32 v96, v18
	v_cvt_i32_f32_e32 v102, v7
	v_and_b32_e32 v7, 15, v43
	v_and_b32_e32 v9, 15, v48
	v_and_b32_e32 v15, 15, v49
	v_and_b32_e32 v16, 15, v50
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v21, 15, v61
	v_and_b32_e32 v22, 15, v62
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v67
	v_and_b32_e32 v31, 15, v64
	v_and_b32_e32 v32, 15, v63
	v_and_b32_e32 v33, 15, v60
	v_and_b32_e32 v34, 15, v59
	v_and_b32_e32 v40, 15, v46
	v_and_b32_e32 v43, 15, v73
	v_and_b32_e32 v46, 15, v76
	v_and_b32_e32 v59, 15, v89
	v_and_b32_e32 v60, 15, v90
	v_and_b32_e32 v61, 15, v91
	v_and_b32_e32 v62, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v13, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v4, v11, v106, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v18, 15, v54
	v_cvt_i32_f32_e32 v77, v37
	v_cvt_i32_f32_e32 v78, v36
	v_cvt_i32_f32_e32 v79, v35
	v_cvt_i32_f32_e32 v88, v26
	v_cvt_i32_f32_e32 v94, v20
	v_cvt_i32_f32_e32 v95, v19
	v_and_b32_e32 v19, 15, v57
	v_and_b32_e32 v20, 15, v58
	v_and_b32_e32 v23, 15, v65
	v_and_b32_e32 v24, 15, v66
	v_and_b32_e32 v25, 15, v69
	v_and_b32_e32 v26, 15, v70
	v_and_b32_e32 v35, 15, v56
	v_and_b32_e32 v36, 15, v55
	v_and_b32_e32 v37, 15, v52
	v_and_b32_e32 v38, 15, v51
	v_and_b32_e32 v39, 15, v47
	v_and_b32_e32 v51, 15, v81
	v_and_b32_e32 v52, 15, v82
	v_and_b32_e32 v53, 15, v83
	v_and_b32_e32 v54, 15, v84
	v_and_b32_e32 v67, 15, v97
	v_and_b32_e32 v68, 15, v98
	v_and_b32_e32 v69, 15, v99
	v_and_b32_e32 v70, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[19:22] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v4
	ds_load_b128 v[19:22], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[27:30]
	ds_store_b128 v0, v[35:38] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[27:30], v4
	ds_load_b128 v[35:38], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[43:46]
	ds_store_b128 v0, v[51:54] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[43:46], v4
	ds_load_b128 v[51:54], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[59:62]
	ds_store_b128 v0, v[67:70] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[59:62], v4
	ds_load_b128 v[67:70], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[15:18]
	ds_store_b128 v0, v[23:26] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[15:18], v4
	ds_load_b128 v[23:26], v4 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[31:34]
	ds_store_b128 v0, v[39:42] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[31:34], v4
	ds_load_b128 v[39:42], v4 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v47, 15, v77
	v_and_b32_e32 v48, 15, v78
	v_and_b32_e32 v49, 15, v79
	v_and_b32_e32 v50, 15, v80
	v_and_b32_e32 v55, 15, v85
	v_and_b32_e32 v56, 15, v86
	v_and_b32_e32 v57, 15, v87
	v_and_b32_e32 v58, 15, v88
	v_and_b32_e32 v63, 15, v93
	v_and_b32_e32 v64, 15, v94
	v_and_b32_e32 v65, 15, v95
	v_and_b32_e32 v66, 15, v96
	v_and_b32_e32 v71, 15, v101
	v_and_b32_e32 v72, 15, v102
	v_and_b32_e32 v73, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[47:50]
	ds_store_b128 v0, v[55:58] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[47:50], v4
	ds_load_b128 v[55:58], v4 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v26, 4, v18
	v_lshl_or_b32 v26, v42, 4, v34
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v42, 3, v105
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[63:66]
	ds_store_b128 v0, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[63:66], v4
	ds_load_b128 v[71:74], v4 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v4, v19, 4, v6
	v_lshl_or_b32 v6, v20, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, s28, v10
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_lshr_b32 s9, s33, 31
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v0, s37, 7, v42
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v13, v22, 4, v9
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s9, s33, s9
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, 16, v7
	v_add_nc_u32_e32 v10, 32, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v12, v21, 4, v8
	v_lshl_or_b32 v15, v23, 4, v15
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s9, s9, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s9, v[0:1]
	v_mad_u64_u32 v[8:9], null, v9, s9, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s9, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v23, v39, 4, v31
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[10:11], null, v11, s9, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v13.l
	v_and_b16 v0.h, 0xff, v12.l
	v_lshlrev_b16 v1.l, 8, v6.l
	v_and_b16 v2.l, 0xff, v4.l
	v_lshlrev_b16 v4.l, 8, v18.l
	v_and_b16 v4.h, 0xff, v17.l
	v_lshlrev_b16 v5.l, 8, v16.l
	v_and_b16 v6.l, 0xff, v15.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v35, 4, v27
	v_lshl_or_b32 v20, v36, 4, v28
	v_lshl_or_b32 v21, v37, 4, v29
	v_lshl_or_b32 v22, v38, 4, v30
	v_lshl_or_b32 v31, v55, 4, v47
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	v_lshl_or_b32 v34, v58, 4, v50
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v4.l, 8, v26.l
	v_and_b16 v4.h, 0xff, v25.l
	v_lshlrev_b16 v5.l, 8, v24.l
	v_and_b16 v6.l, 0xff, v23.l
	s_mov_b32 s12, s16
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v51, 4, v43
	v_lshl_or_b32 v28, v52, 4, v44
	v_lshl_or_b32 v29, v53, 4, v45
	v_lshl_or_b32 v30, v54, 4, v46
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v39, v71, 4, v63
	v_lshl_or_b32 v40, v72, 4, v64
	v_lshl_or_b32 v41, v73, 4, v65
	v_lshl_or_b32 v43, v74, 4, v66
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v22.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v1.l, 8, v20.l
	v_and_b16 v2.l, 0xff, v19.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	v_lshlrev_b16 v4.l, 8, v34.l
	v_and_b16 v4.h, 0xff, v33.l
	v_lshlrev_b16 v5.l, 8, v32.l
	v_and_b16 v6.l, 0xff, v31.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v35, v67, 4, v59
	v_lshl_or_b32 v36, v68, 4, v60
	v_lshl_or_b32 v37, v69, 4, v61
	v_lshl_or_b32 v38, v70, 4, v62
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_or_b16 v11.l, v2.l, v1.l
	v_cndmask_b32_e32 v7, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v0.l, 8, v30.l
	v_and_b16 v0.h, 0xff, v29.l
	v_lshlrev_b16 v1.l, 8, v28.l
	v_and_b16 v2.l, 0xff, v27.l
	v_or_b16 v8.h, v4.h, v4.l
	v_or_b16 v8.l, v6.l, v5.l
	v_lshlrev_b16 v4.l, 8, v43.l
	v_and_b16 v4.h, 0xff, v41.l
	v_lshlrev_b16 v5.l, 8, v40.l
	v_and_b16 v6.l, 0xff, v39.l
	buffer_store_b64 v[11:12], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v0.h, v0.l
	v_or_b16 v7.l, v2.l, v1.l
	v_lshlrev_b16 v0.l, 8, v38.l
	v_and_b16 v0.h, 0xff, v37.l
	v_lshlrev_b16 v1.l, 8, v36.l
	v_and_b16 v2.l, 0xff, v35.l
	v_or_b16 v12.h, v4.h, v4.l
	v_or_b16 v12.l, v6.l, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v4, 4, v104
	v_lshrrev_b32_e32 v6, 2, v75
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s3, s4
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.h, v0.h, v0.l
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v11.l, v2.l, v1.l
	v_cndmask_b32_e32 v0, 0x80000000, v10, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 2, v4
	v_add_nc_u32_e32 v6, 0, v6
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v9, s[12:15], 0 offen
	buffer_store_b64 v[11:12], v0, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v42
	v_mov_b16_e32 v2.l, v14.h
	v_mov_b16_e32 v1.l, v5.h
	v_add3_u32 v4, v6, v4, v42
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
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v104
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s37, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp42:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 220
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 220
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 19744
; TotalNumSgprs: 42
; NumVgprs: 256
; ScratchSize: 220
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 220
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tn_sc128_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 54
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
