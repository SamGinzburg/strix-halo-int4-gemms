	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s33, s[0:1], 0x54
	s_load_b64 s[44:45], s[0:1], 0x5c
	v_mov_b32_e32 v160, v0
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s7, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	v_and_b32_e32 v12, 16, v160
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s3, s33, 0xff
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s4, s3, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s4, s4, 24
	s_add_i32 s3, s3, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_ashr_i32 s3, s3, 8
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s4, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	v_rcp_iflag_f32_e32 v0, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v0
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s6, s5
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	s_xor_b32 s6, s2, s3
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s6, s6, 31
	s_mul_i32 s8, s5, s4
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
	s_sub_i32 s8, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s4, s45, s8
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s3, s8, s3
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s9, s4, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s3
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s10, s9
	s_cvt_f32_u32 s4, s10
	s_sub_i32 s5, 0, s10
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v0, s4
	v_readfirstlane_b32 s4, v0
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s4, s4
	s_mul_i32 s5, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s3, s4, s5
	s_abs_i32 s5, s2
	s_add_i32 s4, s4, s3
	s_mul_hi_u32 s3, s5, s4
	s_xor_b32 s4, s2, s9
	s_mul_i32 s6, s3, s10
	s_ashr_i32 s11, s4, 31
	s_sub_i32 s12, s5, s6
	s_add_i32 s13, s3, 1
	s_sub_i32 s14, s12, s10
	s_cmp_ge_u32 s12, s10
	s_load_b128 s[4:7], s[0:1], 0x28
	s_cselect_b32 s3, s13, s3
	s_cselect_b32 s12, s14, s12
	s_add_i32 s13, s3, 1
	s_cmp_ge_u32 s12, s10
	s_cselect_b32 s3, s13, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s3, s3, s11
	s_sub_i32 s45, s3, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s45, s9
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s8
	s_load_b64 s[8:9], s[0:1], 0x38
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	s_load_b64 s[34:35], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s6, s2
	s_addc_u32 s5, s7, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_gt_i32 s44, 0
	s_mov_b32 s8, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v5, 16, v160
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; ragged.py:0:22
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow540
	s_load_b128 s[20:23], s[0:1], 0x40
	s_load_b64 s[40:41], s[4:5], 0x0
	s_load_b64 s[42:43], s[6:7], 0x0
	v_dual_mov_b32 v60, 0 :: v_dual_and_b32 v165, 15, v160
	v_dual_mov_b32 v61, 0 :: v_dual_and_b32 v116, 0xf0, v160
	v_dual_mov_b32 v54, 0 :: v_dual_and_b32 v53, 3, v160
	v_dual_mov_b32 v55, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v63, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v254, 0
	v_dual_mov_b32 v255, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v229, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v92, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v58, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v56, 0
	v_dual_mov_b32 v57, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v236, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v142, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v110, 0
	v_dual_mov_b32 v233, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v109, 0 :: v_dual_mov_b32 v118, 0
	v_dual_mov_b32 v111, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v227, 0 :: v_dual_mov_b32 v144, 0
	v_dual_mov_b32 v119, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v123, 0 :: v_dual_mov_b32 v228, 0
	v_dual_mov_b32 v127, 0 :: v_dual_mov_b32 v126, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v106, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v104, 0
	v_dual_mov_b32 v105, 0 :: v_dual_mov_b32 v128, 0
	v_dual_mov_b32 v129, 0 :: v_dual_mov_b32 v134, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v194, 0
	v_dual_mov_b32 v193, 0 :: v_dual_mov_b32 v146, 0
	v_dual_mov_b32 v145, 0 :: v_dual_mov_b32 v122, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v139, 0 :: v_dual_mov_b32 v240, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v195, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v197, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v199, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v201, 0
	v_dual_mov_b32 v196, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v52, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v198, 0 :: v_dual_mov_b32 v203, 0
	v_dual_mov_b32 v200, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v202, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v218, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v155, 0
	v_dual_mov_b32 v150, 0 :: v_dual_mov_b32 v159, 0
	v_mov_b32_e32 v156, 0
	v_mov_b32_e32 v158, 0
	v_mov_b32_e32 v214, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_clause 0x2
	s_load_b64 s[4:5], s[0:1], 0x20
	s_load_b256 s[12:19], s[0:1], 0x0
	s_load_b32 s9, s[0:1], 0x58
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 2, v160
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v0, s0, s34, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v1, null, s35, 0, s0
	v_add_co_u32 v2, s0, s34, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_add_co_u32 v4, vcc_lo, v0, 16
	v_add_co_ci_u32_e64 v3, null, s35, 0, s0
	v_add_co_ci_u32_e64 v5, null, 0, v1, vcc_lo
	v_add_co_u32 v6, vcc_lo, v0, 32
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v7, null, 0, v1, vcc_lo
	v_add_co_u32 v8, vcc_lo, v0, 48
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_add_u32 s10, s4, s2
	s_addc_u32 s11, s5, s3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v9, null, 0, v1, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[2:3]
	v_dual_mov_b32 v65, 0 :: v_dual_add_nc_u32 v2, s34, v165
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[40:41], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[42:43], v[4:5]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[0:1]
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v51, 0 :: v_dual_add_nc_u32 v4, 16, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[42:43], v[0:1]
	v_dual_mov_b32 v203, 0 :: v_dual_and_b32 v0, 1, v160
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[6:7]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[6:7]
	v_dual_mov_b32 v202, 0 :: v_dual_add_nc_u32 v5, 32, v2
	v_dual_mov_b32 v201, 0 :: v_dual_add_nc_u32 v6, 48, v2
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	v_mul_lo_u32 v2, v2, s44
	v_mul_lo_u32 v4, v4, s44
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_load_b32 s10, s[10:11], 0x0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v50, 0 :: v_dual_lshlrev_b32 v3, 4, v0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, s2, s7
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_lshl_b32 s7, s45, 8
	.loc	1 1045 36 is_stmt 0             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 1, v160
	.loc	1 1045 18                       ; ragged.py:1045:18
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v2, off offset:168
	scratch_store_b32 off, v3, off offset:164
	v_or_b32_e32 v13, s7, v160
	.loc	1 1205 25 is_stmt 1             ; ragged.py:1205:25
	scratch_store_b32 off, v4, off offset:172 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, v5, s44
	v_dual_mov_b32 v155, 0 :: v_dual_add_nc_u32 v10, s34, v10
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[40:41], v[8:9]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[42:43], v[8:9]
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_or_b32_e32 v3, s7, v1
	v_dual_mov_b32 v198, 0 :: v_dual_lshlrev_b32 v9, 3, v160
	v_dual_mov_b32 v52, 0 :: v_dual_and_b32 v1, 24, v1
	v_mul_lo_u32 v10, v10, s9
	.loc	1 1205 25                       ; ragged.py:1205:25
	scratch_store_b32 off, v4, off offset:176 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, v6, s44
	v_dual_mov_b32 v200, 0 :: v_dual_lshlrev_b32 v5, 1, v160
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s3
	s_and_b32 s3, s5, s8
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s5, s33, 1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v2, 0x80, v3
	v_xor_b32_e32 v1, v9, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, s0, s4
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s4, s9, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s6
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s6, s44, s10
	.loc	1 1149 29                       ; ragged.py:1149:29
	s_mul_i32 s10, s4, s10
	v_bfe_u32 v7, v160, 4, 1
	v_dual_mov_b32 v195, 0 :: v_dual_and_b32 v8, 24, v5
	scratch_store_b32 off, v12, off offset:260 ; 4-byte Folded Spill
	v_cmp_eq_u32_e64 s4, 0, v12
	v_dual_mov_b32 v153, 0 :: v_dual_lshlrev_b32 v12, 2, v116
	v_dual_mov_b32 v159, 0 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_mov_b32 v197, 0 :: v_dual_add_nc_u32 v6, s33, v3
	v_dual_mov_b32 v154, 0 :: v_dual_add_nc_u32 v1, 0, v1
	scratch_store_b32 off, v13, off offset:184 ; 4-byte Folded Spill
	v_mad_u64_u32 v[13:14], null, v3, s9, s[10:11]
	.loc	1 1214 25                       ; ragged.py:1214:25
	scratch_store_b32 off, v4, off offset:180 ; 4-byte Folded Spill
	v_dual_mov_b32 v199, 0 :: v_dual_add_nc_u32 v4, s33, v2
	v_mad_u64_u32 v[2:3], null, s9, v2, s[10:11]
	v_and_or_b32 v7, v5, 30, v7
	v_lshl_or_b32 v8, v165, 5, v8
	v_dual_mov_b32 v196, 0 :: v_dual_and_b32 v5, 28, v5
	v_add3_u32 v0, 0, v12, v0
	scratch_store_b32 off, v10, off offset:188 ; 4-byte Folded Spill
	v_dual_mov_b32 v214, 0 :: v_dual_mov_b32 v125, 0
	v_dual_mov_b32 v157, 0 :: v_dual_lshlrev_b32 v166, 2, v7
	v_add_nc_u32_e32 v0, v0, v5
	scratch_store_b32 off, v1, off offset:224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v1, 0, v8
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b64 off, v[2:3], off offset:200
	scratch_store_b32 off, v160, off offset:248
	v_mad_u64_u32 v[2:3], null, v6, s9, s[10:11]
	v_xor_b32_e32 v7, 8, v8
	v_xor_b32_e32 v9, 16, v8
	s_clause 0x1                            ; 12-byte Folded Spill
	scratch_store_b32 off, v1, off offset:228
	scratch_store_b64 off, v[13:14], off offset:192
	v_dual_mov_b32 v158, 0 :: v_dual_add_nc_u32 v1, 0, v7
	scratch_store_b64 off, v[2:3], off offset:208 ; 8-byte Folded Spill
	v_mad_u64_u32 v[2:3], null, v4, s9, s[10:11]
	v_xor_b32_e32 v11, 24, v8
	scratch_store_b32 off, v1, off offset:232 ; 4-byte Folded Spill
	v_dual_mov_b32 v156, 0 :: v_dual_add_nc_u32 v1, 0, v9
	v_dual_mov_b32 v151, 0 :: v_dual_lshlrev_b32 v12, 1, v116
	s_clause 0x2                            ; 16-byte Folded Spill
	scratch_store_b64 off, v[2:3], off offset:216
	scratch_store_b32 off, v165, off offset:252
	scratch_store_b32 off, v1, off offset:236
	v_dual_mov_b32 v150, 0 :: v_dual_add_nc_u32 v1, 0, v11
	s_and_b32 s13, s13, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_mov_b32 s8, 0
	s_mov_b32 s24, s12
	s_mov_b32 s25, s13
	s_mov_b32 s28, s14
	s_mov_b32 s29, s15
	s_mov_b32 s9, s8
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v116, off offset:256
	scratch_store_b32 off, v1, off offset:240
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v1, s8
	v_xor_b32_e32 v239, 4, v166
	v_dual_mov_b32 v117, 0 :: v_dual_add_nc_u32 v176, 0, v12
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v220, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v218, 0
	v_dual_mov_b32 v206, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v216, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v221, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v238, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v64, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v124, 0 :: v_dual_mov_b32 v137, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v135, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v138, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v193, 0
	v_dual_mov_b32 v136, 0 :: v_dual_mov_b32 v131, 0
	v_dual_mov_b32 v230, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v240, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v120, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v122, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v194, 0 :: v_dual_mov_b32 v123, 0
	v_dual_mov_b32 v134, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v128, 0 :: v_dual_mov_b32 v227, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v126, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v228, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v231, 0
	v_dual_mov_b32 v246, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v118, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v59, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v229, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v255, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v63, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v61, 0
	v_dual_mov_b32 v232, 0 :: v_dual_mov_b32 v3, s10
	v_dual_mov_b32 v254, 0 :: v_dual_mov_b32 v5, s12
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v7, s14
	v_mov_b32_e32 v62, 0
	v_mov_b32_e32 v54, 0
	v_mov_b32_e32 v60, 0
	v_mov_b32_e32 v2, s9
	v_mov_b32_e32 v4, s11
	v_mov_b32_e32 v6, s13
	v_mov_b32_e32 v8, s15
	s_mov_b32 s27, 0x31027000
	s_mov_b32 s26, 0x7ffffffe
	s_and_b32 s17, s17, 0xffff
	s_and_b32 s19, s19, 0xffff
	s_mov_b32 s30, s26
	s_mov_b32 s31, s27
	s_mov_b32 s36, s16
	s_mov_b32 s37, s17
	s_mov_b32 s38, s26
	s_mov_b32 s39, s27
	s_mov_b32 s16, s18
	s_mov_b32 s17, s19
	s_mov_b32 s18, s26
	s_mov_b32 s19, s27
	scratch_store_b32 off, v0, off offset:244 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 25 is_stmt 0                ; ragged.py:0:25
	s_clause 0x2                            ; 20-byte Folded Reload
	scratch_load_b32 v0, off, off offset:164
	scratch_load_b64 v[9:10], off, off offset:192
	scratch_load_b64 v[10:11], off, off offset:200
	.loc	1 1138 28 is_stmt 1             ; ragged.py:1138:28
	s_lshl_b32 s7, s8, 5
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v199, off offset:4
	scratch_store_b32 off, v198, off
	v_dual_mov_b32 v99, v255 :: v_dual_mov_b32 v152, v118
	v_dual_mov_b32 v143, v113 :: v_dual_mov_b32 v118, v110
	v_dual_mov_b32 v110, v102 :: v_dual_mov_b32 v75, v216
	v_mov_b32_e32 v148, v104
	v_mov_b32_e32 v222, v142
	v_mov_b32_e32 v104, v56
	v_mov_b32_e32 v46, v52
	v_dual_mov_b32 v102, v95 :: v_dual_mov_b32 v95, v93
	v_mov_b32_e32 v93, v87
	v_dual_mov_b32 v192, v115 :: v_dual_mov_b32 v115, v66
	v_dual_mov_b32 v87, v84 :: v_dual_mov_b32 v216, v38
	v_mov_b32_e32 v84, v77
	v_mov_b32_e32 v77, v61
	s_waitcnt vmcnt(2)
	v_or_b32_e32 v177, s7, v0
	scratch_load_b32 v0, off, off offset:188 ; 4-byte Folded Reload
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, v9, v177
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v13, v10, v177
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_clause 0x1
	buffer_load_b128 v[9:12], v9, s[28:31], 0 offen
	buffer_load_b128 v[168:171], v13, s[28:31], 0 offen
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v13, v166, v9
	ds_bpermute_b32 v17, v239, v9
	.loc	1 1131 28                       ; ragged.py:1131:28
	v_lshlrev_b32_e32 v9, 3, v53
	.loc	1 1156 34                       ; ragged.py:1156:34
	ds_bpermute_b32 v14, v166, v10
	ds_bpermute_b32 v18, v239, v10
	ds_bpermute_b32 v15, v166, v11
	ds_bpermute_b32 v16, v166, v12
	v_or_b32_e32 v9, s7, v9
	ds_bpermute_b32 v11, v239, v11
	ds_bpermute_b32 v12, v239, v12
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v30, v239, v168
	ds_bpermute_b32 v31, v166, v169
	v_add_nc_u32_e32 v9, v0, v9
	ds_bpermute_b32 v32, v239, v169
	ds_bpermute_b32 v33, v166, v170
	ds_bpermute_b32 v34, v239, v170
	ds_bpermute_b32 v35, v166, v171
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	ds_bpermute_b32 v36, v239, v171
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_add_i32 s7, s8, s6
	.loc	1 1156 34                       ; ragged.py:1156:34
	s_waitcnt lgkmcnt(13)
	v_cndmask_b32_e64 v23, v17, v13, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	buffer_load_b64 v[9:10], v9, s[24:27], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v21, v13, v17, s4
	v_cndmask_b32_e64 v24, v18, v14, s4
	v_cndmask_b32_e64 v22, v14, v18, s4
	v_cndmask_b32_e64 v27, v11, v15, s4
	v_cndmask_b32_e64 v25, v15, v11, s4
	v_cndmask_b32_e64 v28, v12, v16, s4
	v_cndmask_b32_e64 v26, v16, v12, s4
	v_cndmask_b32_e64 v169, v32, v31, s4
	v_cndmask_b32_e64 v171, v31, v32, s4
	v_cndmask_b32_e64 v186, v34, v33, s4
	v_cndmask_b32_e64 v198, v33, v34, s4
	.loc	1 1214 25                       ; ragged.py:1214:25
	s_mul_i32 s7, s7, s5
	.loc	1 1156 34                       ; ragged.py:1156:34
	v_cndmask_b32_e64 v187, v36, v35, s4
	v_cndmask_b32_e64 v199, v35, v36, s4
	.loc	1 1155 34                       ; ragged.py:1155:34
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[9:10]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x2                            ; 12-byte Folded Reload
	scratch_load_b32 v0, off, off offset:228
	scratch_load_b32 v17, off, off offset:232
	scratch_load_b32 v29, off, off offset:240
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[13:16], v17 offset1:1
	ds_load_2addr_stride64_b64 v[188:191], v0 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[161:164], v17 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[9:12], v0 offset1:1
	scratch_load_b32 v0, off, off offset:236 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[172:175], v0 offset1:1
	ds_load_2addr_stride64_b64 v[17:20], v0 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[223:226], v29 offset1:1
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[23:24], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_dual_mov_b32 v0, v195 :: v_dual_mov_b32 v195, v193
	v_mov_b32_e32 v193, v145
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[27:28], v[13:14], v[178:185] neg_lo:[1,1,0]
	v_mov_b32_e32 v145, v98
	v_mov_b32_e32 v98, v254
	.loc	1 1155 34                       ; ragged.py:1155:34
	ds_load_2addr_stride64_b64 v[252:255], v29 offset0:2 offset1:3
	v_mov_b32_e32 v127, v137
	v_mov_b32_e32 v137, v88
	v_mov_b32_e32 v88, v68
	.loc	1 1161 31                       ; ragged.py:1161:31
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[21:22], v[172:173], v[178:185] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[25:26], v[223:224], v[178:185] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v29, v182
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v165, v178
	v_cvt_f32_i32_e32 v205, v179
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v210, v180
	v_cvt_f32_i32_e32 v217, v181
	scratch_store_b32 off, v29, off offset:156 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v183
	scratch_store_b32 off, v29, off offset:148 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v184
	scratch_store_b32 off, v29, off offset:160 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v185
	.loc	1 1156 34                       ; ragged.py:1156:34
	scratch_store_b32 off, v29, off offset:152 ; 4-byte Folded Spill
	ds_bpermute_b32 v29, v166, v168
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v168, v30, v29, s4
	v_cndmask_b32_e64 v170, v29, v30, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[168:169], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[13:14], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[170:171], v[172:173], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[198:199], v[223:224], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v29, v178
	scratch_store_b32 off, v29, off offset:140 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v183
	scratch_store_b32 off, v29, off offset:40 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v184
	scratch_store_b32 off, v29, off offset:44 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v185
	scratch_store_b32 off, v29, off offset:48 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v179
	scratch_store_b32 off, v29, off offset:96 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v180
	scratch_store_b32 off, v29, off offset:92 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v181
	scratch_store_b32 off, v29, off offset:88 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v182
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[23:24], v[11:12], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v29, off offset:52 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[178:185], v[27:28], v[15:16], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[21:22], v[174:175], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[25:26], v[225:226], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v48, v178
	v_cvt_f32_i32_e32 v49, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v47, v180
	v_cvt_f32_i32_e32 v73, v181
	v_cvt_f32_i32_e32 v160, v182
	v_cvt_f32_i32_e32 v204, v183
	v_cvt_f32_i32_e32 v207, v184
	v_cvt_f32_i32_e32 v215, v185
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[168:169], v[11:12], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[15:16], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[170:171], v[174:175], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[198:199], v[225:226], v[178:185] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v29, v178
	scratch_store_b32 off, v29, off offset:112 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v183
	scratch_store_b32 off, v29, off offset:80 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v184
	scratch_store_b32 off, v29, off offset:76 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v185
	scratch_store_b32 off, v29, off offset:72 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v179
	scratch_store_b32 off, v29, off offset:124 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v180
	scratch_store_b32 off, v29, off offset:120 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v181
	scratch_store_b32 off, v29, off offset:116 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v182
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[23:24], v[188:189], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v29, off offset:84 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[178:185], v[27:28], v[161:162], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[21:22], v[17:18], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[25:26], v[252:253], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v56, v178
	v_cvt_f32_i32_e32 v149, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v208, v180
	v_cvt_f32_i32_e32 v167, v181
	v_cvt_f32_i32_e32 v52, v182
	v_cvt_f32_i32_e32 v39, v183
	v_cvt_f32_i32_e32 v116, v184
	v_cvt_f32_i32_e32 v45, v185
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[168:169], v[188:189], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[186:187], v[161:162], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[170:171], v[17:18], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[198:199], v[252:253], v[178:185] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v29, v183
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v245, v178
	v_cvt_f32_i32_e32 v113, v179
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v250, v180
	v_cvt_f32_i32_e32 v247, v181
	scratch_store_b32 off, v29, off offset:136 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v184
	scratch_store_b32 off, v29, off offset:132 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v185
	scratch_store_b32 off, v29, off offset:128 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v29, v182
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[178:185], v[23:24], v[190:191], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v29, off offset:144 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[178:185], v[27:28], v[163:164], v[178:185] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[21:22], v[19:20], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[25:26], v[254:255], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[168:169], v[190:191], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v66, v178
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[21:28], v[186:187], v[163:164], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v209, v179
	v_cvt_f32_i32_e32 v213, v180
	v_cvt_f32_i32_e32 v211, v181
	v_cvt_f32_i32_e32 v61, v182
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[21:28], v[170:171], v[19:20], v[21:28] neg_lo:[1,1,0]
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v140, v183
	v_cvt_f32_i32_e32 v142, v184
	v_cvt_f32_i32_e32 v72, v185
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1161 31                       ; ragged.py:1161:31
	v_wmma_i32_16x16x16_iu4 v[21:28], v[198:199], v[254:255], v[21:28] neg_lo:[1,1,0]
	v_mov_b32_e32 v199, v37
	.loc	1 1201 27                       ; ragged.py:1201:27
	v_cvt_f32_i32_e32 v74, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_cvt_f32_i32_e32 v68, v22
	scratch_load_b64 v[21:22], off, off offset:208 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v144, v23
	scratch_load_b64 v[22:23], off, off offset:216 ; 8-byte Folded Reload
	v_cvt_f32_i32_e32 v108, v25
	v_cvt_f32_i32_e32 v44, v24
	v_cvt_f32_i32_e32 v198, v26
	v_cvt_f32_i32_e32 v219, v27
	v_cvt_f32_i32_e32 v249, v28
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v21, v21, v177
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v25, v22, v177
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_clause 0x1
	buffer_load_b128 v[21:24], v21, s[28:31], 0 offen
	buffer_load_b128 v[168:171], v25, s[28:31], 0 offen
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v25, v166, v21
	ds_bpermute_b32 v21, v239, v21
	ds_bpermute_b32 v26, v166, v22
	ds_bpermute_b32 v22, v239, v22
	ds_bpermute_b32 v27, v166, v23
	ds_bpermute_b32 v23, v239, v23
	ds_bpermute_b32 v28, v166, v24
	ds_bpermute_b32 v24, v239, v24
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v234, v21, v25, s4
	v_cndmask_b32_e64 v29, v25, v21, s4
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v235, v22, v26, s4
	v_cndmask_b32_e64 v30, v26, v22, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v31, v23, v27, s4
	v_cndmask_b32_e64 v33, v27, v23, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v32, v24, v28, s4
	v_cndmask_b32_e64 v34, v28, v24, s4
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[21:28], v[234:235], v[9:10], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[31:32], v[13:14], v[21:28] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[21:28], v[29:30], v[172:173], v[21:28] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[21:28], v[33:34], v[223:224], v[21:28] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v212, v21
	s_delay_alu instid0(VALU_DEP_2)
	v_cvt_f32_i32_e32 v21, v22
	.loc	1 1185 39                       ; ragged.py:1185:39
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v22, v239, v168
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v21, off offset:108 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v23
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v23, v166, v169
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v21, off offset:104 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v24
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v24, v239, v169
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v21, off offset:100 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v25
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v25, v166, v170
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v21, off offset:68 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v26
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v26, v239, v170
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v21, off offset:64 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v27
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v27, v166, v171
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v41, v24, v23, s4
	v_cndmask_b32_e64 v43, v23, v24, s4
	.loc	1 1202 32                       ; ragged.py:1202:32
	scratch_store_b32 off, v21, off offset:60 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v21, v28
	.loc	1 1185 39                       ; ragged.py:1185:39
	ds_bpermute_b32 v28, v239, v171
	scratch_store_b32 off, v21, off offset:56 ; 4-byte Folded Spill
	ds_bpermute_b32 v21, v166, v168
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v35, v26, v25, s4
	v_cndmask_b32_e64 v37, v25, v26, s4
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v36, v28, v27, s4
	v_cndmask_b32_e64 v38, v27, v28, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v40, v22, v21, s4
	v_cndmask_b32_e64 v42, v21, v22, s4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[177:184], v[40:41], v[9:10], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[35:36], v[13:14], v[177:184] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[177:184], v[42:43], v[172:173], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[37:38], v[223:224], v[177:184] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v182
	v_cvt_f32_i32_e32 v25, v177
	scratch_store_b32 off, v9, off offset:8 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v183
	scratch_store_b32 off, v9, off offset:12 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v184
	scratch_store_b32 off, v9, off offset:16 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v178
	scratch_store_b32 off, v9, off offset:32 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v179
	scratch_store_b32 off, v9, off offset:28 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v180
	scratch_store_b32 off, v9, off offset:24 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v9, v181
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[177:184], v[234:235], v[11:12], v[1:8] neg_lo:[1,1,0]
	scratch_store_b32 off, v9, off offset:20 ; 4-byte Folded Spill
	v_wmma_i32_16x16x16_iu4 v[177:184], v[31:32], v[15:16], v[177:184] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[177:184], v[29:30], v[174:175], v[177:184] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[177:184], v[33:34], v[225:226], v[177:184] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v10, v178
	v_cvt_f32_i32_e32 v13, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v14, v180
	v_cvt_f32_i32_e32 v21, v181
	v_cvt_f32_i32_e32 v22, v182
	v_cvt_f32_i32_e32 v23, v183
	v_cvt_f32_i32_e32 v24, v184
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[178:185], v[40:41], v[11:12], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v9, v177
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[178:185], v[35:36], v[15:16], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[178:185], v[42:43], v[174:175], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[40:41], v[188:189], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[178:185], v[37:38], v[225:226], v[178:185] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[35:36], v[161:162], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v28, v178
	v_cvt_f32_i32_e32 v11, v183
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v12, v184
	v_cvt_f32_i32_e32 v15, v185
	v_cvt_f32_i32_e32 v178, v180
	v_cvt_f32_i32_e32 v177, v181
	v_cvt_f32_i32_e32 v16, v182
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[180:187], v[234:235], v[188:189], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[42:43], v[17:18], v[168:175] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v179, v179
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[180:187], v[31:32], v[161:162], v[180:187] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[37:38], v[252:253], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[180:187], v[29:30], v[17:18], v[180:187] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v17, v174
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v26, v175
	v_cvt_f32_i32_e32 v27, v172
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[180:187], v[33:34], v[252:253], v[180:187] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v252, v173
	scratch_store_b32 off, v17, off offset:36 ; 4-byte Folded Spill
	v_cvt_f32_i32_e32 v241, v183
	v_cvt_f32_i32_e32 v226, v184
	v_cvt_f32_i32_e32 v224, v186
	v_cvt_f32_i32_e32 v223, v187
	v_cvt_f32_i32_e32 v183, v168
	v_cvt_f32_i32_e32 v187, v169
	v_cvt_f32_i32_e32 v186, v170
	v_cvt_f32_i32_e32 v184, v171
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[168:175], v[234:235], v[190:191], v[1:8] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v244, v180
	v_cvt_f32_i32_e32 v243, v181
	v_cvt_f32_i32_e32 v242, v182
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[168:175], v[31:32], v[163:164], v[168:175] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v225, v185
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[168:175], v[29:30], v[19:20], v[168:175] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[33:34], v[254:255], v[168:175] neg_lo:[1,1,0]
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v29, v168
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v251, v169
	v_cvt_f32_i32_e32 v248, v170
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v34, v171
	v_cvt_f32_i32_e32 v235, v172
	v_cvt_f32_i32_e32 v234, v173
	v_cvt_f32_i32_e32 v180, v174
	v_cvt_f32_i32_e32 v253, v175
	.loc	1 1190 36                       ; ragged.py:1190:36
	v_wmma_i32_16x16x16_iu4 v[168:175], v[40:41], v[190:191], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[168:175], v[35:36], v[163:164], v[168:175] neg_lo:[1,1,0]
	scratch_load_b32 v36, off, off offset:184 ; 4-byte Folded Reload
	v_wmma_i32_16x16x16_iu4 v[168:175], v[42:43], v[19:20], v[168:175] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[168:175], v[37:38], v[254:255], v[168:175] neg_lo:[1,1,0]
	v_mov_b32_e32 v254, v98
	v_mov_b32_e32 v98, v145
	v_mov_b32_e32 v145, v193
	v_mov_b32_e32 v193, v195
	v_mov_b32_e32 v195, v0
	.loc	1 1204 40                       ; ragged.py:1204:40
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	v_mov_b32_e32 v38, v216
	.loc	1 1202 32                       ; ragged.py:1202:32
	v_cvt_f32_i32_e32 v35, v173
	v_cvt_f32_i32_e32 v182, v175
	v_cvt_f32_i32_e32 v188, v168
	v_cvt_f32_i32_e32 v191, v169
	v_cvt_f32_i32_e32 v190, v170
	v_cvt_f32_i32_e32 v189, v171
	v_cvt_f32_i32_e32 v181, v174
	v_cvt_f32_i32_e32 v185, v172
	.loc	1 1213 40                       ; ragged.py:1213:40
	s_waitcnt vmcnt(1)
	v_add_lshl_u32 v30, v36, s7, 1
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v17, s8, v0, 1
	scratch_load_b32 v0, off, off offset:172 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v17, 0x80000000, v17, s0
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v18, s8, v0, 1
	scratch_load_b32 v0, off, off offset:176 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v18, 0x80000000, v18, s1
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v19, s8, v0, 1
	scratch_load_b32 v0, off, off offset:180 ; 4-byte Folded Reload
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	s_waitcnt vmcnt(0)
	v_add_lshl_u32 v20, s8, v0, 1
	.loc	1 1229 17                       ; ragged.py:1229:17
	s_add_i32 s8, s8, 1
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cmp_lg_u32 s8, s44
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_cndmask_b32_e64 v20, 0x80000000, v20, s3
	.loc	1 1213 40                       ; ragged.py:1213:40
	buffer_load_u16 v30, v30, s[16:19], 0 offen
	.loc	1 1204 40                       ; ragged.py:1204:40
	s_clause 0x3
	buffer_load_u16 v17, v17, s[36:39], 0 offen
	buffer_load_u16 v31, v18, s[36:39], 0 offen
	buffer_load_u16 v32, v19, s[36:39], 0 offen
	buffer_load_u16 v33, v20, s[36:39], 0 offen
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v43, off, off offset:244 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_dual_mov_b32 v37, v199 :: v_dual_lshlrev_b32 v18, 16, v30
	s_waitcnt vmcnt(4)
	v_dual_mov_b32 v216, v75 :: v_dual_lshlrev_b32 v199, 16, v17
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v199, v205
	.loc	1 1216 21                       ; ragged.py:1216:21
	s_waitcnt vmcnt(0)
	ds_store_b32 v43, v18
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v176
	ds_load_b128 v[161:164], v176 offset:16
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v199, v165
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v146, v0, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v199, v210
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v194, v0, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v0, v199, v217
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v193, v0, v20 :: v_dual_lshlrev_b32 v0, 16, v31
	v_mov_b32_e32 v255, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v145, v30, v17 :: v_dual_mul_f32 v30, v0, v48
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v11, v11, v0
	v_mul_f32_e32 v15, v15, v0
	v_dual_mul_f32 v12, v12, v0 :: v_dual_fmac_f32 v37, v30, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v0, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v38, v30, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v0, v47
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v246, v30, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v30, v0, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v98, v30, v20
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v30, 16, v32
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v31, v30, v56 :: v_dual_mov_b32 v56, v104
	v_mov_b32_e32 v104, v148
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v236, v31, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v30, v149
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v233, v31, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v30, v208
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v231, v31, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v31, v30, v167
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v71, v31, v20
	.loc	1 1204 40                       ; ragged.py:1204:40
	v_lshlrev_b32_e32 v31, 16, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v31, v66
	v_dual_mov_b32 v66, v115 :: v_dual_mov_b32 v115, v192
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v229, v32, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v31, v209
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v232, v17, v18 :: v_dual_mul_f32 v17, v31, v213
	v_fmac_f32_e32 v255, v17, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v31, v211
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v254, v17, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:156 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v199, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v135, v17, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:148 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v199, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v136, v17, v162
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:160 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v199, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v230, v17, v163
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:152 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v199, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v240, v17, v164
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v0, v160
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v130, v17, v161 :: v_dual_mul_f32 v17, v0, v204
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v132, v17, v162 :: v_dual_mul_f32 v17, v0, v207
	v_fmac_f32_e32 v90, v17, v163
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v0, v215
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v133, v17, v164
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v30, v52
	v_dual_mov_b32 v52, v46 :: v_dual_fmac_f32 v237, v17, v161
	v_mul_f32_e32 v17, v30, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v238, v17, v162 :: v_dual_mul_f32 v17, v30, v116
	v_dual_fmac_f32 v64, v17, v163 :: v_dual_mul_f32 v17, v30, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v66, v17, v164 :: v_dual_mul_f32 v17, v31, v61
	v_mov_b32_e32 v61, v77
	v_dual_mov_b32 v77, v84 :: v_dual_mov_b32 v84, v87
	v_dual_fmac_f32 v76, v17, v161 :: v_dual_mul_f32 v17, v31, v140
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v17, v162
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v17, v31, v142 :: v_dual_mov_b32 v142, v222
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v78, v17, v163 :: v_dual_mul_f32 v17, v31, v72
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v79, v17, v164
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:140 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v17, v199
	.loc	1 1216 21                       ; ragged.py:1216:21
	ds_load_b128 v[17:20], v176 offset:512
	ds_load_b128 v[161:164], v176 offset:528
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v214, v32, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v32, off, off offset:96 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v199, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v104, v32, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v32, off, off offset:92 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v199, v32
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v105, v32, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v32, off, off offset:88 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v199, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v106, v32, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v32, off, off offset:112 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v87, v93 :: v_dual_mul_f32 v32, v32, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v155, v32, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v32, off, off offset:124 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v93, v95 :: v_dual_mul_f32 v32, v0, v32
	v_mov_b32_e32 v95, v102
	v_mov_b32_e32 v102, v110
	v_mov_b32_e32 v110, v118
	v_mov_b32_e32 v118, v152
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v118, v32, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v32, off, off offset:120 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v0, v32
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v81, v32, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v32, off, off offset:116 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v0, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v82, v32, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v245, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v117, v32, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v32, v30, v113 :: v_dual_mov_b32 v113, v143
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v56, v32, v18
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v30, v250
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v57, v32, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v30, v247
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v58, v32, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v32, v74, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v141, v32, v17
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_dual_mul_f32 v17, v31, v68 :: v_dual_mov_b32 v68, v88
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v199, v212
	v_dual_mov_b32 v88, v137 :: v_dual_mov_b32 v137, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v54, v17, v18 :: v_dual_mul_f32 v17, v31, v144
	v_fmac_f32_e32 v55, v17, v19
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v31, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v61, v17, v20
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:52 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v199, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v107, v17, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v159, v17, v162
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:44 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v199
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v158, v17, v163
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:48 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v199
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v156, v17, v164
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:84 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v0, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v83, v17, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:80 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v151, v17, v162
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:76 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v0
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v150, v17, v163
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:72 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v125, v17, v164
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:144 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v30, v17
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v59, v17, v161
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:136 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v112, v17, v162
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:132 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v30
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v147, v17, v163
	.loc	1 1209 21                       ; ragged.py:1209:21
	scratch_load_b32 v17, off, off offset:128 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v17, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v220, v17, v164
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v31, v108
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_dual_fmac_f32 v60, v17, v161 :: v_dual_mul_f32 v17, v198, v31
	scratch_load_b32 v198, off, off         ; 4-byte Folded Reload
	v_fmac_f32_e32 v113, v17, v162
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v219, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v218, v17, v163
	.loc	1 1209 21                       ; ragged.py:1209:21
	v_mul_f32_e32 v17, v249, v31
	.loc	1 1226 17                       ; ragged.py:1226:17
	v_fmac_f32_e32 v206, v17, v164
	v_add_nc_u32_e32 v17, s33, v36
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1218 45                       ; ragged.py:1218:45
	v_add_lshl_u32 v17, v17, s7, 1
	buffer_load_u16 v17, v17, s[16:19], 0 offen
	.loc	1 1225 25                       ; ragged.py:1225:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1218 45                       ; ragged.py:1218:45
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v17, 16, v17
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_store_b32 v43, v17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v176
	ds_load_b128 v[161:164], v176 offset:16
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v29, v31, v29
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(1)
	v_fmac_f32_e32 v139, v32, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v32, off, off offset:108 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v93, v29, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v29, v25, v199 :: v_dual_mul_f32 v32, v199, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v121, v32, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v32, off, off offset:104 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v199, v32
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v120, v32, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v32, off, off offset:100 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v32, v199, v32
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v122, v32, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v0, v9
	scratch_load_b32 v9, off, off offset:68 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v126, v32, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v0, v10
	scratch_load_b32 v10, off, off offset:12 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v228, v32, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v0, v13
	scratch_load_b32 v13, off, off offset:16 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v97, v32, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v0, v14
	scratch_load_b32 v14, off, off offset:20 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v96, v32, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v32, v30, v244
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v111, v32, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v31, v251
	v_mul_f32_e32 v32, v30, v243
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v92, v17, v18 :: v_dual_mul_f32 v17, v31, v248
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v110, v32, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_dual_mul_f32 v32, v30, v242 :: v_dual_fmac_f32 v87, v17, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v17, v31, v34 :: v_dual_fmac_f32 v142, v32, v19
	v_mul_f32_e32 v32, v30, v241
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(3)
	v_dual_fmac_f32 v86, v17, v20 :: v_dual_mul_f32 v17, v199, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v9, off, off offset:64 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_fmac_f32_e32 v138, v17, v161
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(3)
	v_mul_f32_e32 v10, v10, v199
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v13, v13, v199 :: v_dual_mul_f32 v14, v199, v14
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v199, v9
	scratch_load_b32 v9, off, off offset:60 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v137, v17, v162
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v17, v199, v9
	scratch_load_b32 v9, off, off offset:56 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v114, v17, v163 :: v_dual_mul_f32 v17, v199, v9
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v9, off, off offset:32 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v115, v17, v164
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v109, v32, v20 :: v_dual_fmac_f32 v124, v17, v161
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v22
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v91, v17, v162
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v89, v17, v163
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v0, v24
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v88, v17, v164 :: v_dual_mul_f32 v17, v30, v226
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v17, v161
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v30, v225
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v102, v17, v162 :: v_dual_mul_f32 v17, v30, v224
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v221, v17, v163
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v30, v223
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v67, v17, v164
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v31, v235
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v85, v17, v161
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v31, v234
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v84, v17, v162 :: v_dual_mul_f32 v17, v31, v180
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v216, v17, v163 :: v_dual_mul_f32 v17, v31, v253
	v_fmac_f32_e32 v70, v17, v164
	.loc	1 1225 25                       ; ragged.py:1225:25
	ds_load_b128 v[17:20], v176 offset:512
	ds_load_b128 v[161:164], v176 offset:528
	.loc	1 1228 21                       ; ragged.py:1228:21
	s_waitcnt lgkmcnt(0)
	v_dual_fmac_f32 v201, v11, v162 :: v_dual_fmac_f32 v200, v12, v163
	v_fmac_f32_e32 v128, v14, v161
	v_dual_fmac_f32 v202, v10, v163 :: v_dual_fmac_f32 v65, v13, v164
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v23, v199, v9
	scratch_load_b32 v9, off, off offset:28 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v134, v23, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v23, v31, v185
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v62, v23, v161
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v22, v199, v9
	scratch_load_b32 v9, off, off offset:24 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v50, v29, v17 :: v_dual_fmac_f32 v131, v22, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v22, v182, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v153, v22, v164
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(0)
	v_mul_f32_e32 v21, v199, v9
	scratch_load_b32 v9, off, off offset:8  ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v129, v21, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v28, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v51, v21, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v0, v179
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v123, v21, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v0, v178
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v119, v21, v19
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v0, v177
	v_mul_f32_e32 v0, v0, v16
	v_mul_f32_e32 v16, v252, v30
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v80, v21, v20 :: v_dual_mul_f32 v21, v183, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v227, v0, v161
	v_fmac_f32_e32 v52, v16, v162
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v198, v21, v17 :: v_dual_mul_f32 v21, v30, v187
	v_fmac_f32_e32 v101, v21, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v30, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v100, v21, v19 :: v_dual_mul_f32 v21, v30, v184
	v_fmac_f32_e32 v95, v21, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v21, v188, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v195, v21, v17
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v31, v191
	v_mul_f32_e32 v21, v181, v31
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v69, v17, v18
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v17, v31, v190
	v_mul_f32_e32 v18, v26, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v154, v21, v163
	v_dual_fmac_f32 v68, v17, v19 :: v_dual_mul_f32 v17, v31, v189
	.loc	1 1211 25                       ; ragged.py:1211:25
	v_mul_f32_e32 v19, v30, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v196, v18, v164
	v_fmac_f32_e32 v63, v17, v20
	.loc	1 1211 25                       ; ragged.py:1211:25
	scratch_load_b32 v17, off, off offset:36 ; 4-byte Folded Reload
	v_mul_f32_e32 v20, v35, v31
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_dual_fmac_f32 v94, v19, v161 :: v_dual_fmac_f32 v157, v20, v162
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v9, v9, v199
	scratch_load_b32 v199, off, off offset:4 ; 4-byte Folded Reload
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v203, v9, v162
	.loc	1 1211 25                       ; ragged.py:1211:25
	s_waitcnt vmcnt(1)
	v_mul_f32_e32 v17, v17, v30
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 1228 21                       ; ragged.py:1228:21
	v_fmac_f32_e32 v197, v17, v163
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v199, v15, v164
	.loc	1 1135 19                       ; ragged.py:1135:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v5, off, off offset:260
	scratch_load_b32 v160, off, off offset:248
	scratch_load_b32 v165, off, off offset:252
	scratch_load_b32 v116, off, off offset:256
	v_dual_mov_b32 v127, v37 :: v_dual_mov_b32 v144, v38
.LBB0_7:                                ; %._crit_edge
	.loc	1 1232 38 is_stmt 1             ; ragged.py:1232:38
	v_dual_mul_f32 v0, 0xbfb8aa3b, v50 :: v_dual_mul_f32 v9, 0xbfb8aa3b, v121
	v_dual_mul_f32 v10, 0xbfb8aa3b, v139 :: v_dual_mul_f32 v1, 0xbfb8aa3b, v202
	v_dual_mul_f32 v14, 0xbfb8aa3b, v199 :: v_dual_mul_f32 v171, 0xbfb8aa3b, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_dual_mul_f32 v0, 0xbfb8aa3b, v203 :: v_dual_mul_f32 v27, 0xbfb8aa3b, v114
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v1
	v_dual_mul_f32 v6, 0xbfb8aa3b, v120 :: v_dual_mul_f32 v7, 0xbfb8aa3b, v122
	v_cndmask_b32_e64 v3, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_mul_f32_e32 v191, 0xbfb8aa3b, v137
	v_cndmask_b32_e64 v8, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v189, 0xbfb8aa3b, v131 :: v_dual_fmac_f32 v4, 0xbfb8aa3b, v50
	v_cndmask_b32_e64 v1, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v2, 0xbfb8aa3b, v65
	v_cndmask_b32_e64 v0, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v8, 0xbfb8aa3b, v202
	v_exp_f32_e32 v4, v4
	v_fmac_f32_e32 v1, 0xbfb8aa3b, v203
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, s0
	v_exp_f32_e32 v13, v8
	v_dual_mul_f32 v8, 0xbfb8aa3b, v138 :: v_dual_mul_f32 v183, 0xbfb8aa3b, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v12, 0, 0x42800000, s1
	v_mul_f32_e32 v185, 0xbfb8aa3b, v228
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, s1
	v_ldexp_f32 v3, v4, v3
	v_mul_f32_e32 v4, 0xbfb8aa3b, v51
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v65
	v_exp_f32_e32 v1, v1
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v14
	v_ldexp_f32 v13, v13, v2
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_exp_f32_e32 v12, v12
	v_dual_mul_f32 v2, 0xbfb8aa3b, v201 :: v_dual_mul_f32 v181, 0xbfb8aa3b, v91
	v_cndmask_b32_e64 v17, 0, 0x42800000, s1
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_mul_f32_e32 v175, 0xbfb8aa3b, v227
	v_mul_f32_e32 v173, 0xbfb8aa3b, v110
	v_ldexp_f32 v0, v1, v0
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_ldexp_f32 v11, v12, v11
	v_mul_f32_e32 v12, 0xbfb8aa3b, v200
	v_dual_mul_f32 v184, 0xbfb8aa3b, v96 :: v_dual_fmac_f32 v17, 0xbfb8aa3b, v199
	v_exp_f32_e32 v4, v4
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v12
	v_cndmask_b32_e64 v16, 0, 0xffffffc0, s1
	v_exp_f32_e32 v17, v17
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v3
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_mul_f32_e32 v190, 0xbfb8aa3b, v134
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v18, v4, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v198
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v200
	v_cndmask_b32_e64 v14, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v201
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v36, null, v34, v34, v50
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v15, v15
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_dual_mul_f32 v30, 0xbfb8aa3b, v100 :: v_dual_add_f32 v13, 1.0, v13
	v_mul_f32_e32 v29, 0xbfb8aa3b, v86
	v_mul_f32_e32 v161, 0xbfb8aa3b, v92
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_mul_f32 v162, 0xbfb8aa3b, v93 :: v_dual_add_f32 v11, 1.0, v11
	s_delay_alu instid0(TRANS32_DEP_2)
	v_ldexp_f32 v14, v15, v14
	v_ldexp_f32 v15, v17, v16
	v_dual_mul_f32 v16, 0xbfb8aa3b, v197 :: v_dual_mul_f32 v17, 0xbfb8aa3b, v196
	v_exp_f32_e32 v12, v12
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v198
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v14, 1.0, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v16
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v17
	v_dual_mul_f32 v22, 0xbfb8aa3b, v70 :: v_dual_add_f32 v15, 1.0, v15
	v_exp_f32_e32 v4, v4
	v_cndmask_b32_e64 v19, 0, 0x42800000, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v21, 0, 0x42800000, s1
	v_ldexp_f32 v12, v12, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v52
	v_mul_f32_e32 v180, 0xbfb8aa3b, v89
	v_dual_mul_f32 v182, 0xbfb8aa3b, v124 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v197
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v196
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v31, v4, v1
	v_mul_f32_e32 v1, 0xbfb8aa3b, v195
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	v_exp_f32_e32 v19, v19
	v_exp_f32_e32 v21, v21
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s1
	v_dual_mul_f32 v4, 0xbfb8aa3b, v154 :: v_dual_add_f32 v31, 1.0, v31
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v46, s1, v202, v13, v202
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v52
	v_ldexp_f32 v17, v19, v17
	s_delay_alu instid0(TRANS32_DEP_1)
	v_ldexp_f32 v19, v21, v20
	v_mul_f32_e32 v21, 0xbfb8aa3b, v153
	v_cndmask_b32_e64 v1, 0, 0xffffffc0, vcc_lo
	v_exp_f32_e32 v16, v16
	v_dual_mul_f32 v26, 0xbfb8aa3b, v87 :: v_dual_add_f32 v17, 1.0, v17
	v_dual_mul_f32 v24, 0xbfb8aa3b, v115 :: v_dual_mul_f32 v187, 0xbfb8aa3b, v128
	v_dual_mul_f32 v188, 0xbfb8aa3b, v129 :: v_dual_mul_f32 v179, 0xbfb8aa3b, v88
	v_dual_mul_f32 v186, 0xbfb8aa3b, v126 :: v_dual_mul_f32 v177, 0xbfb8aa3b, v119
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v16, v16, v2
	v_mul_f32_e32 v2, 0xbfb8aa3b, v157
	v_dual_mul_f32 v178, 0xbfb8aa3b, v123 :: v_dual_mul_f32 v169, 0xbfb8aa3b, v102
	v_dual_mul_f32 v176, 0xbfb8aa3b, v80 :: v_dual_mul_f32 v167, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v2
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v4
	v_dual_mul_f32 v174, 0xbfb8aa3b, v111 :: v_dual_mul_f32 v23, 0xbfb8aa3b, v216
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, s0
	v_cndmask_b32_e64 v28, 0, 0x42800000, s0
	v_cndmask_b32_e64 v4, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0xffffffc0, vcc_lo
	v_dual_mul_f32 v172, 0xbfb8aa3b, v109 :: v_dual_mul_f32 v163, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v4, 0xbfb8aa3b, v154
	v_cndmask_b32_e64 v33, 0, 0x42800000, s0
	v_mul_f32_e32 v170, 0xbfb8aa3b, v103
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, s0
	v_fmac_f32_e32 v28, 0xbfb8aa3b, v157
	v_exp_f32_e32 v37, v4
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v153
	v_dual_mul_f32 v168, 0xbfb8aa3b, v221 :: v_dual_mul_f32 v25, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v35, v28
	v_dual_mul_f32 v166, 0xbfb8aa3b, v101 :: v_dual_mul_f32 v3, 0xbfb8aa3b, v68
	v_exp_f32_e32 v33, v33
	v_mul_f32_e32 v164, 0xbfb8aa3b, v95
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp4:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v21, v37, v21
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_div_scale_f32 v37, null, v13, v13, v202
.Ltmp5:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_barrier
.Ltmp6:
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v20, v35, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v41, v37
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v33, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v36, v39, 1.0
	v_fmac_f32_e32 v39, v33, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v45, -v37, v41, 1.0
	v_fmac_f32_e32 v41, v45, v41
	v_div_scale_f32 v40, vcc_lo, v50, v34, v50
	v_div_scale_f32 v45, null, v11, v11, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v48, v46, v41
	v_mul_f32_e32 v42, v40, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v47, v45
	v_fma_f32 v44, -v36, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v44, v39
	v_fma_f32 v36, -v36, v42, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v36, v36, v39, v42
	v_fma_f32 v42, -v45, v47, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v28, 0xbfb8aa3b, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v36, v34, v50
	v_dual_fmac_f32 v47, v42, v47 :: v_dual_add_f32 v18, 1.0, v18
	v_div_scale_f32 v36, s2, v65, v11, v65
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v4, 0xbfb8aa3b, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v49, null, v18, v18, v51
	v_rcp_f32_e32 v39, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v0, v0, v203
	v_rcp_f32_e32 v33, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v35, v33, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v195 :: v_dual_fmac_f32 v33, v43, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s0, v203, v0, v203
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v44, v43, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v40, -v35, v44, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v1, 0xbfb8aa3b, v62 :: v_dual_fmac_f32 v44, v40, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v37, v48, v46
	v_fma_f32 v35, -v35, v44, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v41
	v_fma_f32 v40, -v49, v39, 1.0
	v_div_fmas_f32 v33, v35, v33, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v37, v48, v46
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v46, null, v14, v14, v200
	v_mul_f32_e32 v37, v36, v47
	v_div_fmas_f32 v35, v35, v41, v48
	v_fmac_f32_e32 v39, v40, v39
	v_div_fixup_f32 v0, v33, v0, v203
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v43, -v45, v37, v36
	v_div_fixup_f32 v13, v35, v13, v202
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v43, v47
	v_div_scale_f32 v42, s0, v51, v18, v51
	v_fma_f32 v36, -v45, v37, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v44, v42, v39
	v_fma_f32 v48, -v46, v35, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v12, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v15, v15, v199
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v33, -v49, v44, v42
	v_fmac_f32_e32 v35, v48, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_scale_f32 v40, null, v12, v12, v201
	v_div_fmas_f32 v36, v36, v47, v37
	v_fmac_f32_e32 v44, v33, v39
	v_div_scale_f32 v33, s1, v201, v12, v201
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v40
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v37, -v49, v44, v42
	v_div_scale_f32 v49, null, v31, v31, v198
	v_div_scale_f32 v50, s0, v199, v15, v199
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v37, v37, v39, v44
	v_div_fixup_f32 v11, v36, v11, v65
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v43, -v40, v41, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v63
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v36, v37, v18, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v43, v41
	v_rcp_f32_e32 v43, v45
	v_mul_f32_e32 v42, v33, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v39, -v40, v42, v33
	v_fma_f32 v48, -v45, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v42, v39, v41 :: v_dual_fmac_f32 v43, v48, v43
	v_div_scale_f32 v47, s2, v200, v14, v200
	v_rcp_f32_e32 v48, v49
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v16, 1.0, v16 :: v_dual_mul_f32 v37, v50, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v44, v47, v35
	v_fma_f32 v33, -v40, v42, v33
	v_div_scale_f32 v39, null, v16, v16, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v18, -v46, v44, v47
	v_div_fmas_f32 v33, v33, v41, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v49, v48, 1.0
	s_mov_b32 vcc_lo, s2
	v_rcp_f32_e32 v40, v39
	v_fmac_f32_e32 v44, v18, v35
	v_fma_f32 v18, -v45, v37, v50
	v_fmac_f32_e32 v48, v51, v48
	v_div_scale_f32 v51, s3, v198, v31, v198
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_fmac_f32 v37, v18, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v46, v44, v47
	v_mul_f32_e32 v18, v51, v48
	v_div_fixup_f32 v12, v33, v12, v201
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v39, v40, 1.0
	v_div_fmas_f32 v35, v41, v35, v44
	v_fma_f32 v41, -v45, v37, v50
	v_fma_f32 v44, -v49, v18, v51
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v45, s1, v52, v16, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v37, v41, v43, v37
	v_div_fixup_f32 v14, v35, v14, v200
	v_fmac_f32_e32 v18, v44, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v33, v37, v15, v199
	v_div_scale_f32 v37, null, v19, v19, v196
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v15, -v49, v18, v51
	v_div_fmas_f32 v15, v15, v48, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v18, v37
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v31, v15, v31, v198
	v_fmac_f32_e32 v40, v42, v40
	v_div_scale_f32 v42, null, v17, v17, v197
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v43, v45, v40
	v_rcp_f32_e32 v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v39, v43, v45
	v_fmac_f32_e32 v43, v35, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v42, v41, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v20, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, s0, v197, v17, v197
	v_fma_f32 v15, -v39, v43, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, null, v38, v38, v195
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v37, v18, 1.0
	v_mul_f32_e32 v39, v35, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v46, v44
	v_div_fmas_f32 v15, v15, v40, v43
	v_div_scale_f32 v43, null, v20, v20, v157
	v_fma_f32 v40, -v42, v39, v35
	v_fmac_f32_e32 v18, v45, v18
	v_div_scale_f32 v45, s1, v196, v19, v196
	v_div_fixup_f32 v48, v15, v16, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v39, v40, v41
	v_fma_f32 v47, -v44, v46, 1.0
	v_rcp_f32_e32 v15, v43
	v_mul_f32_e32 v16, v45, v18
	v_div_scale_f32 v40, s2, v195, v38, v195
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v46, v47, v46
	v_div_scale_f32 v47, null, v21, v21, v154
	v_fma_f32 v35, -v42, v39, v35
	v_fma_f32 v42, -v37, v16, v45
	v_mul_f32_e32 v49, v40, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v47
	v_div_scale_f32 v52, null, v32, v32, v153
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v50, -v43, v15, 1.0
	v_div_fmas_f32 v35, v35, v41, v39
	v_fmac_f32_e32 v16, v42, v18
	v_fma_f32 v39, -v44, v49, v40
	v_rcp_f32_e32 v41, v52
	v_fmac_f32_e32 v15, v50, v15
	v_div_scale_f32 v42, s0, v157, v20, v157
	v_fma_f32 v50, -v47, v51, 1.0
	v_div_fixup_f32 v35, v35, v17, v197
	v_fma_f32 v17, -v37, v16, v45
	v_fmac_f32_e32 v49, v39, v46
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v37, v42, v15
	v_fmac_f32_e32 v51, v50, v51
	v_div_scale_f32 v39, s3, v154, v21, v154
	v_fma_f32 v45, -v52, v41, 1.0
	v_div_fmas_f32 v16, v17, v18, v16
	v_fma_f32 v17, -v44, v49, v40
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v18, -v43, v37, v42
	v_dual_mul_f32 v40, v39, v51 :: v_dual_fmac_f32 v41, v45, v41
	v_div_scale_f32 v44, s1, v153, v32, v153
	v_div_fmas_f32 v17, v17, v46, v49
	v_div_fixup_f32 v45, v16, v19, v196
	v_fmac_f32_e32 v37, v18, v15
	v_fma_f32 v16, -v47, v40, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v38, v17, v38, v195
	v_mul_f32_e32 v18, v44, v41
	v_fma_f32 v10, -v43, v37, v42
	v_fmac_f32_e32 v40, v16, v51
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v16, -v52, v18, v44
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v9
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v10, v10, v15, v37
	v_fma_f32 v15, -v47, v40, v39
	v_dual_fmac_f32 v18, v16, v41 :: v_dual_fmac_f32 v19, 0xbfb8aa3b, v139
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v37, v10, v20, v157
	v_div_fmas_f32 v15, v15, v51, v40
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v16, -v52, v18, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v19, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v20, v159, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v39, v15, v21, v154
	v_div_fmas_f32 v9, v16, v41, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v15, 0, 0x42800000, s0
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v214, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v10, 0, 0xffffffc0, s0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v9, v32, v153
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v7, v19, v17
	v_fmac_f32_e32 v15, 0xbfb8aa3b, v121
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v19, v156, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v9, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v15
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v122
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v158, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v0, v0, v139
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v11, v34
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v13, v117, v31
	v_mul_f32_e32 v17, v155, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v40
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v7, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v15, v150, v14 :: v_dual_mul_f32 v14, v125, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v7, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v6
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v6, v11, v9
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v120
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, vcc_lo, v139, v0, v139
	v_fma_f32 v9, -v40, v34, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v6
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v31, v31, v121
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v10
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v9, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v44, null, v36, v36, v122
	v_rcp_f32_e32 v42, v33
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v147, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v41, v34
	v_rcp_f32_e32 v35, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v11, v220, v45
	v_mul_f32_e32 v6, v113, v37
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v43, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v40, v46, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v9, v141, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, s0, v121, v31, v121
	v_fma_f32 v47, -v33, v42, 1.0
	v_fmac_f32_e32 v46, v45, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v44, v35, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v7, v218, v39 :: v_dual_fmac_f32 v42, v47, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v40, v46, v41
	v_fmac_f32_e32 v35, v43, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v43, null, v37, v37, v120
	v_mul_f32_e32 v40, v38, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v39, v34, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v8
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v43
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v16, v151, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v33, v40, v38
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v112, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v34, v0, v139
	v_fmac_f32_e32 v40, v45, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v191
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v8, v206, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v43, v39, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v138
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, s2, v120, v37, v120
	v_fmac_f32_e32 v39, v34, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v137
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v42, v40
	v_mul_f32_e32 v40, v45, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v27
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v181
	v_exp_f32_e32 v27, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v33, v31, v121
	v_fma_f32 v38, -v43, v40, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v121, v146, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, s1, v122, v36, v122
	v_fmac_f32_e32 v40, v38, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v27, v27, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v46, v41, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v44, v46, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v38, null, v33, v33, v137
	v_fmac_f32_e32 v46, v32, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v32, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v46, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fmas_f32 v35, v41, v35, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v32, v32, v47
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v114
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v189
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v35, v36, v122
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v43, v40, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v36, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v193, v27
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v47, null, v32, v32, v138
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v35, v39, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v24
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v38
	v_rcp_f32_e32 v34, v47
	v_div_scale_f32 v40, s0, v138, v32, v138
	v_div_fixup_f32 v24, v35, v37, v120
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, vcc_lo
	v_ldexp_f32 v36, v36, v42
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v120, v145, v0 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v115
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v47, v34, 1.0
	v_fma_f32 v42, -v38, v39, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_fmac_f32 v34, v41, v34 :: v_dual_fmac_f32 v39, v42, v39
	v_div_scale_f32 v42, s1, v137, v33, v137
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v44, null, v36, v36, v114
	v_mul_f32_e32 v41, v40, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v31, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v37, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v47, v41, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v35 :: v_dual_fmac_f32 v41, v43, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v42, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v44, v31, 1.0
	v_div_scale_f32 v37, null, v0, v0, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v47, v41, v40
	v_fma_f32 v45, -v38, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v31, v35, v31
	v_div_scale_f32 v35, s0, v114, v36, v114
	v_div_fmas_f32 v34, v40, v34, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v190
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v45, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v32, v34, v32, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v38, v43, v42
	v_rcp_f32_e32 v38, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v134
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v34, v34, v39, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v35, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v188
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v34, v33, v137
	v_fma_f32 v45, -v37, v38, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v131
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v44, v43, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, s1, v115, v0, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v34, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v41, v40
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v40, v45, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v129
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v187
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v44, v43, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v37, v40, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_ldexp_f32 v39, v42, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v42, null, v34, v34, v134
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v40, v44, v38 :: v_dual_add_f32 v39, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v44, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v42
	v_div_fmas_f32 v31, v35, v31, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v37, v40, v45
	v_div_scale_f32 v47, null, v39, v39, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v45, v47
	v_div_fmas_f32 v35, v35, v38, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v42, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v128
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, vcc_lo, v134, v34, v134
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v44, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v48, v46
	v_div_fixup_f32 v0, v35, v0, v115
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v43
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v47, v45, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v40, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v115, v240, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v36, v114
	v_fmac_f32_e32 v45, v41, v45
	v_div_scale_f32 v41, s0, v131, v39, v131
	v_fma_f32 v0, -v42, v43, v40
	v_div_scale_f32 v44, null, v38, v38, v129
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v36, v41, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v114, v230, v31 :: v_dual_fmac_f32 v43, v0, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v35, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v47, v36, v41
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v112, v135, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v42, v43, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v113, v136, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_fmac_f32 v36, v0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v37, s1, v129, v38, v129
	v_div_fmas_f32 v32, v32, v46, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v186
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v44, v48, 1.0
	v_div_scale_f32 v33, null, v31, v31, v128
	v_fma_f32 v35, -v47, v36, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v48, v0, v48
	v_rcp_f32_e32 v0, v33
	v_div_fmas_f32 v35, v35, v45, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v126
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v185
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v34, v134
	v_mul_f32_e32 v34, v37, v48
	v_div_fixup_f32 v35, v35, v39, v131
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v41
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s0, v128, v31, v128
	v_fma_f32 v36, -v33, v0, 1.0
	v_fma_f32 v41, -v44, v34, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v228
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v24, v194, v24 :: v_dual_mul_f32 v105, v105, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v0, v36, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v184
	v_ldexp_f32 v39, v39, v40
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v34, v41, v48
	v_mul_f32_e32 v40, v43, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v44, v34, v37
	v_fma_f32 v46, -v33, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v96
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v44, null, v39, v39, v126
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v46, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v183
	v_exp_f32_e32 v45, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v44
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v33, v40, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v36, v36, v228
	v_div_fmas_f32 v34, v37, v48, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v45, v41
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v97
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v44, v42, 1.0
	v_div_fmas_f32 v0, v33, v0, v40
	v_rcp_f32_e32 v40, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v41, v42
	v_div_scale_f32 v41, vcc_lo, v126, v39, v126
	v_div_fixup_f32 v34, v34, v38, v129
	v_div_fixup_f32 v0, v0, v31, v128
	v_div_scale_f32 v31, null, v37, v37, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v38, v41, v42
	v_fma_f32 v45, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v107, v107, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v33, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v33, v31
	v_fma_f32 v46, -v44, v38, v41
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s0, v228, v36, v228
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v106, v106, v34
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v34, v45, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v104, v104, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v31, v33, 1.0
	v_div_scale_f32 v46, null, v0, v0, v97
	v_fma_f32 v32, -v44, v38, v41
	v_fma_f32 v41, -v43, v34, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v182
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v33, v35, v33
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v44, s1, v96, v37, v96
	v_fmac_f32_e32 v34, v41, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v32, v42, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v44, v33
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v124
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_fixup_f32 v32, v32, v39, v126
	v_fma_f32 v39, -v43, v34, v45
	v_div_scale_f32 v45, s2, v97, v0, v97
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v43, -v31, v42, v44
	v_div_fmas_f32 v34, v39, v40, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v180
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v39, v45, v35 :: v_dual_fmac_f32 v42, v43, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_ldexp_f32 v38, v41, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v46, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v31, v42, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_fmac_f32 v39, v43, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v43, v47
	v_fmac_f32_e32 v48, 0xbfb8aa3b, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v38, v38, v124
	v_div_fmas_f32 v31, v31, v33, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v48
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v179
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v44
	v_fma_f32 v45, -v46, v39, v45
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v43, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v34, v34, v36, v228
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v31, v31, v37, v96
	v_div_fmas_f32 v35, v45, v35, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v44, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v88
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v35, v0, v97
	v_div_scale_f32 v41, null, v39, v39, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v33, 1.0, v33 :: v_dual_fmac_f32 v42, v40, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, vcc_lo, v124, v38, v124
	v_rcp_f32_e32 v45, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v47, null, v33, v33, v89
	v_mul_f32_e32 v48, v40, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v46, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v99, v246, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v35, v47
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v97, v144, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v44, v48, v40
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v98, v98, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v41, v45, 1.0
	v_div_scale_f32 v31, s0, v91, v39, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v48, v36, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v46, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v45, v37, v45
	v_fma_f32 v36, -v47, v35, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v96, v127, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v44, v48, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v0, 1.0, v0 :: v_dual_mul_f32 v37, v31, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v36, v35
	v_div_scale_f32 v36, s1, v89, v33, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v42, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v178
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v0, v0, v88
	v_mul_f32_e32 v44, v36, v35
	v_fma_f32 v43, -v41, v37, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v48, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v32, v34, v38, v124
	v_fma_f32 v34, -v47, v44, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v123 :: v_dual_fmac_f32 v37, v43, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v177
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v34, v35
	v_div_scale_f32 v43, s2, v88, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v48
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v40, v42, 1.0
	v_fma_f32 v31, -v41, v37, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v47, v44, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v38, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v119
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v45, v37
	v_mul_f32_e32 v37, v43, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v41
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v176
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v39, v91
	v_fma_f32 v45, -v40, v37, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v48, null, v34, v34, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v37, v45, v42
	v_div_fmas_f32 v35, v36, v35, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v41, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v38, v48
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v80
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v33, v35, v33, v89
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v40, v37, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v89, v132, v31 :: v_dual_mul_f32 v90, v90, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v36, v36, v119
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v48, v38, 1.0
	v_div_fmas_f32 v35, v35, v42, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v175
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v173
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v38, v41, v38
	v_div_scale_f32 v41, s0, v123, v34, v123
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v35, v0, v88
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v39, v39, v46
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v43, v41, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v227
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v40, v37, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v91, v133, v0 :: v_dual_add_f32 v0, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v39, -v48, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v44, v37
	v_div_scale_f32 v44, s1, v119, v36, v119
	v_div_scale_f32 v45, null, v0, v0, v80
	v_fmac_f32_e32 v43, v39, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v39, v44, v37
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v31, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v42, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v48, v43, v41
	v_fma_f32 v41, -v40, v39, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v88, v130, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v32, 1.0, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v38, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v174
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v41, v37
	v_fma_f32 v35, -v45, v31, 1.0
	v_div_scale_f32 v38, null, v32, v32, v227
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v34, v123
	v_fma_f32 v34, -v40, v39, v44
	v_fmac_f32_e32 v31, v35, v31
	v_div_scale_f32 v35, s0, v80, v0, v80
	v_rcp_f32_e32 v40, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v42, 0xbfb8aa3b, v111
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_mul_f32_e32 v43, v35, v31
	v_div_fmas_f32 v34, v34, v37, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s2
	v_exp_f32_e32 v42, v42
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v172
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v44, -v38, v40, 1.0
	v_div_fixup_f32 v34, v34, v36, v119
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v110
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v45, v43, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v46, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s1, v227, v32, v227
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v43, v36, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v41, v44, v40 :: v_dual_fmac_f32 v46, 0xbfb8aa3b, v109
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v171
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v45, v43, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v45, -v38, v41, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_ldexp_f32 v37, v39, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v39, null, v36, v36, v111
	v_fmac_f32_e32 v41, v45, v40
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v46, v39
	v_div_fmas_f32 v31, v35, v31, v43
	v_fma_f32 v35, -v38, v41, v44
	v_div_scale_f32 v47, null, v37, v37, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v43, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v31, v0, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v44, v47
	v_div_fmas_f32 v35, v35, v40, v41
	v_fma_f32 v48, -v39, v46, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v43, 0xbfb8aa3b, v142
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, vcc_lo, v111, v36, v111
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v40, v45, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v46, v48, v46
	v_div_fixup_f32 v32, v35, v32, v227
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v43
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v42, -v47, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_mul_f32 v43, v41, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, s2
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v83, v83, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v42, v44
	v_div_scale_f32 v42, s0, v110, v37, v110
	v_fma_f32 v31, -v39, v43, v41
	v_div_scale_f32 v45, null, v40, v40, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v32, v42, v44
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v82, v82, v0 :: v_dual_fmac_f32 v43, v31, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v48, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v35, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v47, v32, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v80, v118, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v33, -v39, v43, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v81, v81, v34 :: v_dual_add_f32 v0, 1.0, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v31, v44
	v_div_scale_f32 v38, s1, v109, v40, v109
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v46, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v170
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v45, v48, 1.0
	v_div_scale_f32 v34, null, v0, v0, v142
	v_fma_f32 v35, -v47, v32, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v48, v31, v48
	v_rcp_f32_e32 v31, v34
	v_div_fmas_f32 v32, v35, v44, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v103
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v169
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v33, v36, v111
	v_mul_f32_e32 v35, v38, v48
	v_div_fixup_f32 v32, v32, v37, v110
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v37, v41
	v_cndmask_b32_e64 v42, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v43, s0, v142, v0, v142
	v_fma_f32 v36, -v34, v31, 1.0
	v_fma_f32 v41, -v45, v35, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v42, 0xbfb8aa3b, v102 :: v_dual_mul_f32 v73, v233, v32
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v72, v236, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v31, v36, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v168
	v_ldexp_f32 v37, v37, v39
	v_exp_f32_e32 v42, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v41, v48
	v_mul_f32_e32 v39, v43, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0x42800000, vcc_lo
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v37, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v38, -v45, v35, v38
	v_fma_f32 v46, -v34, v39, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v44, 0xbfb8aa3b, v221
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v45, null, v37, v37, v103
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v36, v42, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v46, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v167
	v_exp_f32_e32 v44, v44
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v45
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v34, -v34, v39, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v46, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v36, v36, v102
	v_div_fmas_f32 v35, v38, v48, v35
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v38, v44, v41
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v67
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v45, v42, 1.0
	v_div_fmas_f32 v31, v34, v31, v39
	v_rcp_f32_e32 v39, v43
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v38, 1.0, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v47
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v41, v42
	v_div_scale_f32 v41, vcc_lo, v103, v37, v103
	v_div_fixup_f32 v35, v35, v40, v109
	v_div_fixup_f32 v0, v31, v0, v142
	v_div_scale_f32 v31, null, v38, v38, v221
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v40, v41, v42
	v_fma_f32 v44, -v43, v39, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v75, v231, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v34, v46
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v34, v31
	v_fma_f32 v46, -v45, v40, v41
	v_fmac_f32_e32 v39, v44, v39
	v_div_scale_f32 v44, s0, v102, v36, v102
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v40, v46, v42
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v108, v71, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v44, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v166
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v31, v34, 1.0
	v_div_scale_f32 v46, null, v0, v0, v67
	v_fma_f32 v33, -v45, v40, v41
	v_fma_f32 v41, -v43, v32, v44
	v_fmac_f32_e32 v34, v35, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v45, s1, v221, v38, v221
	v_fmac_f32_e32 v32, v41, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v41, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v33, v33, v42, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v42, v45, v34
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v101
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_fixup_f32 v33, v33, v37, v103
	v_fma_f32 v37, -v43, v32, v44
	v_div_scale_f32 v44, s2, v67, v0, v67
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v41, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v43, -v31, v42, v45
	v_div_fmas_f32 v30, v37, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, s3
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v164
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v32, v44, v35
	v_fmac_f32_e32 v42, v43, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0xffffffc0, s3
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v100
	v_ldexp_f32 v40, v41, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v43, -v46, v32, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v31, -v31, v42, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v40, 1.0, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v32, v43, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v95
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v40, v40, v101
	v_div_fmas_f32 v31, v31, v34, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v34, v47
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v163
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v42, v43
	v_fma_f32 v44, -v46, v32, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v37, v39, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v36, v102
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v31, v31, v38, v221
	v_div_fmas_f32 v32, v44, v35, v32
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v35, 1.0, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v34, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v37, -v43, v42, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v94
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v32, v0, v67
	v_div_scale_f32 v41, null, v35, v35, v100
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v42, v37, v42
	v_div_scale_f32 v37, vcc_lo, v101, v40, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v41
	v_div_scale_f32 v46, null, v34, v34, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v47, v37, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v45
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v67, v66, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v32, v46
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v66, v64, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v36, -v43, v47, v37
	v_div_scale_f32 v31, s0, v100, v35, v100
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v41, v44, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v65, v238, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v47, v36, v42
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v45, v39
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v64, v237, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v38, v44
	v_fma_f32 v36, -v46, v32, 1.0
	v_fma_f32 v30, -v43, v47, v37
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v31, v44
	v_fmac_f32_e32 v32, v36, v32
	v_div_scale_f32 v36, s1, v95, v34, v95
	v_div_fmas_f32 v30, v30, v42, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v162
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v0, v0, v94
	v_fma_f32 v42, -v41, v37, v31
	v_mul_f32_e32 v43, v36, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v47, 0, 0x42800000, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v39, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v42, v44
	v_fma_f32 v33, -v46, v43, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v47, 0xbfb8aa3b, v93
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v161
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v30, v30, v40, v101
	v_fma_f32 v31, -v41, v37, v31
	v_fmac_f32_e32 v43, v33, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v33, v47
	v_cndmask_b32_e64 v41, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v38, v39, 1.0
	v_div_scale_f32 v42, s2, v94, v0, v94
	v_fma_f32 v36, -v46, v43, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v41, 0xbfb8aa3b, v92
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v39, v40, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v33, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v31, v31, v44, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v29
	v_exp_f32_e32 v29, v41
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v42, v39
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v31, v31, v35, v100
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v44, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v38, v37, v42
	v_div_scale_f32 v46, null, v33, v33, v93
	s_mov_b32 vcc_lo, s1
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v29, v29, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v32, v36, v32, v43
	v_rcp_f32_e32 v36, v46
	v_fmac_f32_e32 v37, v41, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v86
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v29, 1.0, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v32, v32, v34, v95
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v34, -v38, v37, v42
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v35, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v29, v29, v92
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v46, v36, 1.0
	v_div_fmas_f32 v34, v34, v39, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v26
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v37, v38
	v_div_scale_f32 v26, s0, v93, v33, v93
	v_fmac_f32_e32 v36, v40, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v34, v0, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v35, v35, v44
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_dual_mul_f32 v40, v26, v36 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v87
	v_fma_f32 v41, -v38, v37, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v59, v59, v0 :: v_dual_add_f32 v0, 1.0, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v35, -v46, v40, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v39, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s1, v92, v29, v92
	v_div_scale_f32 v42, null, v0, v0, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v35, v36 :: v_dual_mul_f32 v35, v41, v37
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v58, v32 :: v_dual_mul_f32 v57, v57, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v26, -v46, v40, v26
	v_fma_f32 v32, -v38, v35, v41
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v34, v39, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v56, v56, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v26, v26, v36, v40
	v_dual_fmac_f32 v35, v32, v37 :: v_dual_add_f32 v30, 1.0, v34
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v28
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v32, -v42, v31, 1.0
	v_div_fixup_f32 v26, v26, v33, v93
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v33, -v38, v35, v41
	v_div_scale_f32 v34, null, v30, v30, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v25
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v31, v32, v31
	v_rcp_f32_e32 v32, v34
	v_div_fmas_f32 v25, v33, v37, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v85
	v_cndmask_b32_e64 v35, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v28, s0, v86, v0, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v33, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_exp_f32_e32 v38, v38
	v_fmac_f32_e32 v35, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v28, v31
	v_fma_f32 v39, -v34, v32, 1.0
	v_div_fixup_f32 v25, v25, v29, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_exp_f32_e32 v35, v35
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v29, -v42, v37, v28
	v_fmac_f32_e32 v32, v39, v32
	v_div_scale_f32 v39, s1, v87, v30, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v23, v38, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v37, v29, v31
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v38, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v29, v39, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v22
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v33, v35, v33
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v216
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v40, -v34, v29, v39
	v_fma_f32 v28, -v42, v37, v28
	v_div_scale_f32 v35, null, v23, v23, v85
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v33, 1.0, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v40, v32
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v38, v38
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v22, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v36, 0, 0xffffffc0, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v33, v33, v84
	s_mov_b32 vcc_lo, s0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v49, v232, v25
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v28, v28, v31, v37
	v_fma_f32 v31, -v34, v29, v39
	v_rcp_f32_e32 v39, v40
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v37, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v41, -v35, v22, 1.0
	v_div_fmas_f32 v29, v31, v32, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v31, v38, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, vcc_lo, v85, v23, v85
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v37, 0xbfb8aa3b, v70
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v22, v41, v22
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v40, v39, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v31, 1.0, v31
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v29, v29, v30, v87
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v30, v37
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v37, v32, v22
	v_fmac_f32_e32 v39, v36, v39
	v_div_scale_f32 v36, s0, v84, v33, v84
	v_div_scale_f32 v38, null, v31, v31, v216
	v_div_fixup_f32 v0, v28, v0, v86
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v51, v255, v29
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v35, v37, v32
	v_mul_f32_e32 v29, v36, v39
	v_rcp_f32_e32 v41, v38
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0xffffffc0, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v50, v254, v0 :: v_dual_fmac_f32 v37, v28, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v28, -v40, v29, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v48, v229, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v0, v30, v34
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v4
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v25, -v35, v37, v32
	v_fmac_f32_e32 v29, v28, v39
	v_fma_f32 v26, -v38, v41, 1.0
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v32, 0, 0x42800000, s2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v22, v25, v22, v37
	v_fma_f32 v25, -v40, v29, v36
	v_fmac_f32_e32 v41, v26, v41
	v_div_scale_f32 v26, s1, v216, v31, v216
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v28, null, v0, v0, v70
	v_div_fmas_f32 v4, v25, v39, v29
	v_mul_f32_e32 v25, v26, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v3
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v29, v28
	v_div_fixup_f32 v22, v22, v23, v85
	v_div_fixup_f32 v4, v4, v33, v84
	v_fma_f32 v3, -v38, v25, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v32, 0xbfb8aa3b, v69
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v25, v3, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v3, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v2, -v28, v29, 1.0
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v68
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v1
	v_cndmask_b32_e64 v30, 0, 0xffffffc0, s2
	v_exp_f32_e32 v1, v33
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v38, v25, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v63
	v_cndmask_b32_e64 v33, 0, 0x42800000, vcc_lo
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v29, v2, v29
	v_div_scale_f32 v35, s0, v70, v0, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v33, 0xbfb8aa3b, v62
	v_ldexp_f32 v3, v3, v30
	v_exp_f32_e32 v30, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v1, v1, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v25, v26, v41, v25
	v_mul_f32_e32 v26, v35, v29
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v23, v33
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v3, 1.0, v3
	v_add_f32_e32 v1, 1.0, v1
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v25, v25, v31, v216
	v_fma_f32 v34, -v28, v26, v35
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v30, v30, v32
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v33, null, v3, v3, v69
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v26, v34, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_ldexp_f32 v2, v23, v2
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v30, 1.0, v30
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_rcp_f32_e32 v31, v33
	v_div_scale_f32 v23, null, v1, v1, v68
	v_fma_f32 v28, -v28, v26, v35
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v30, v30, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v35, v23
	v_div_fmas_f32 v26, v28, v29, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v28, null, v2, v2, v62
	v_rcp_f32_e32 v36, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v33, v31, 1.0
	v_div_scale_f32 v29, vcc_lo, v69, v3, v69
	v_rcp_f32_e32 v37, v28
	v_div_fixup_f32 v0, v26, v0, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_fmac_f32_e32 v31, v34, v31
	v_fma_f32 v34, -v23, v35, 1.0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v42, v78, v25 :: v_dual_mul_f32 v41, v77, v4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v26, -v32, v36, 1.0
	v_mul_f32_e32 v38, v29, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v34, v35
	v_div_scale_f32 v34, s0, v68, v1, v68
	v_fma_f32 v39, -v28, v37, 1.0
	v_fmac_f32_e32 v36, v26, v36
	v_div_scale_f32 v26, s1, v63, v30, v63
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v79, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v0, -v33, v38, v29
	v_dual_mul_f32 v40, v34, v35 :: v_dual_fmac_f32 v37, v39, v37
	v_div_scale_f32 v39, s2, v62, v2, v62
	v_mul_f32_e32 v44, v26, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v38, v0, v31
	v_fma_f32 v0, -v23, v40, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v39, v37
	v_fma_f32 v25, -v32, v44, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v4, -v33, v38, v29
	v_fmac_f32_e32 v40, v0, v35
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v0, -v28, v45, v39
.Ltmp7:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v29, |v72|, |v73|
.Ltmp8:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fmac_f32_e32 v44, v25, v36
	v_div_fmas_f32 v4, v4, v31, v38
	v_fma_f32 v23, -v23, v40, v34
	v_fmac_f32_e32 v45, v0, v37
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v0, -v32, v44, v26
	v_div_fixup_f32 v3, v4, v3, v69
	v_div_fmas_f32 v23, v23, v35, v40
	v_fma_f32 v25, -v28, v45, v39
	s_mov_b32 vcc_lo, s1
	.loc	1 1232 13 is_stmt 0             ; ragged.py:1232:13
	v_mul_f32_e32 v40, v76, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v23, v1, v68
	v_div_fmas_f32 v25, v25, v37, v45
.Ltmp9:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v4, |v120|, |v121|
	v_max3_f32 v22, |v27|, |v112|, |v113|
	v_max3_f32 v23, |v104|, |v105|, |v106|
.Ltmp10:
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v0, v0, v30, v63
	v_div_fixup_f32 v2, v25, v2, v62
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v25, |v107|, |v20|, |v18|
	v_max3_f32 v26, |v80|, |v81|, |v82|
	v_max3_f32 v28, |v83|, |v16|, |v15|
	v_max3_f32 v30, |v108|, |v64|, |v65|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v60, v2
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v4, |v24|, v22
	v_max3_f32 v4, v23, v25, |v19|
	v_max_f32_e64 v22, |v96|, |v97|
	v_max3_f32 v23, |v98|, |v88|, |v89|
	v_max3_f32 v31, |v56|, |v57|, |v58|
	v_max3_f32 v32, |v59|, |v12|, |v10|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v35, v61, v0
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, |v114|, |v115|, |v21|
	v_max3_f32 v25, |v90|, |v91|, |v17|
	v_max3_f32 v22, v22, |v99|, v23
	v_max3_f32 v23, v26, v28, |v14|
	v_max3_f32 v26, |v66|, |v67|, |v13|
	v_max3_f32 v28, v29, |v75|, v30
	v_max3_f32 v29, v31, v32, |v11|
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v33, v55, v1 :: v_dual_mul_f32 v36, v54, v3
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v2, v0, v4
	v_max3_f32 v1, v22, v25, v23
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v2, v28, v26, v29
	s_mov_b32 s0, 0x76543210
	v_max_f32_e64 v3, |v48|, |v49|
	v_max3_f32 v4, |v50|, |v40|, |v41|
	v_max3_f32 v23, |v36|, |v33|, |v35|
	v_max3_f32 v25, |v34|, |v6|, |v7|
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v26, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v28, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v22, |v42|, |v43|, |v9|
	v_max3_f32 v3, v3, |v51|, v4
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v0, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v23, v23, v25, |v8|
	v_dual_max_f32 v25, v26, v26 :: v_dual_max_f32 v26, v28, v28
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v32, 0x60, v160
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max3_f32 v3, v3, v22, v23
	v_dual_max_f32 v1, v1, v25 :: v_dual_max_f32 v2, v2, v26
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v26, 5, v53
	v_and_b32_e32 v22, 4, v160
	v_lshl_add_u32 v23, v53, 9, 0
	v_lshlrev_b32_e32 v25, 4, v160
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v4
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v4, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v29, 0x80, v160
	v_and_b32_e32 v30, 8, v160
	v_lshl_add_u32 v23, v22, 2, v23
	v_and_or_b32 v25, 0x680, v25, v26
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v28, 1, v29
	v_xor_b32_e32 v31, v26, v32
	v_lshl_add_u32 v23, v30, 4, v23
	v_lshrrev_b32_e32 v37, 3, v29
	v_xor_b32_e32 v25, v25, v32
	v_lshl_add_u32 v38, v22, 6, 0
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v4
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v4, v23, v28, v31
	v_add_nc_u32_e32 v29, 0, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v23, v38, v37, v25
	ds_store_b128 v4, v[0:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v23
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v4, v0 :: v_dual_mov_b32 v23, v1
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v0, v0, v0 :: v_dual_max_f32 v31, v3, v3
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v3, v3 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v23, v23 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v25, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v4, v4, v4
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v31, v3 :: v_dual_max_f32 v0, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v1, v1, v23
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v31, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v23, v0
	v_mov_b32_dpp v31, v31 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v23, v23 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v23, v23, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v0, v0, v23
	v_max_f32_e32 v23, v31, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v3, v3, v23
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v23, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v23, v23 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v23, v23, v23 :: v_dual_max_f32 v4, v25, v25
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v25, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v23 :: v_dual_max_f32 v2, v2, v4
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v4, v2 :: v_dual_max_f32 v25, v25, v25
	v_mov_b32_dpp v4, v4 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v25
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v25, v0
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_mov_b32 v31, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v30, 3, v30
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v31, v31 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v25, v25, v25 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v31, v31, v31 :: v_dual_max_f32 v0, v0, v25
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v25, 1, v32
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v31
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v23, v29, v25, v30
.Ltmp55:
	.loc	1 1044 32                       ; ragged.py:1044:32
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v25, 4, v116
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v37, 32, v25
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v4
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v4, 5, v22
	v_lshl_add_u32 v22, v53, 4, 0
	ds_store_b128 v23, v[0:3]
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v4, v22, v4, v30
	s_barrier
.Ltmp60:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v22, 63, v160
	v_or_b32_e32 v3, 48, v25
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_load_b128 v[44:47], v4
.Ltmp62:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s34, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s35, 0, s0
	v_add_co_u32 v3, s0, s34, v3
	v_add_co_ci_u32_e64 v4, null, s35, 0, s0
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[42:43], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v0, v44, v44 :: v_dual_max_f32 v29, v46, v46
	v_max_f32_e32 v45, v45, v45
	v_dual_max_f32 v47, v47, v47 :: v_dual_max_f32 v0, 0x2b8cbccc, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v38, 0x2b8cbccc, v29
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v29, s0, s34, v37
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v45, 0x2b8cbccc, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_scale_f32 v23, null, 0x40e00000, 0x40e00000, v0
	v_div_scale_f32 v39, vcc_lo, v0, 0x40e00000, v0
	v_div_scale_f32 v44, null, 0x40e00000, 0x40e00000, v38
	v_rcp_f32_e32 v31, v23
	v_div_scale_f32 v53, null, 0x40e00000, 0x40e00000, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v46, v44
	v_max_f32_e32 v47, 0x2b8cbccc, v47
	v_div_scale_f32 v54, null, 0x40e00000, 0x40e00000, v47
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v30, -v23, v31, 1.0
	v_fma_f32 v52, -v44, v46, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v30, v31
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v30, null, s35, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[40:41], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v46, v52, v46 :: v_dual_mul_f32 v37, v39, v31
	v_div_scale_f32 v52, s6, v38, 0x40e00000, v38
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v4, 16, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[40:41], v[29:30]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v23, v37, v39
	v_fmac_f32_e32 v37, v3, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s3, s34, v4
	v_add_co_ci_u32_e64 v4, null, s35, 0, s3
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v23, -v23, v37, v39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[42:43], v[29:30]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v30.h, 0
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_rcp_f32_e32 v39, v53
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[40:41], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v23, v23, v31, v37
	v_mul_f32_e32 v31, v52, v46
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[42:43], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s6
	v_rcp_f32_e32 v37, v54
	v_div_fixup_f32 v0, v23, 0x40e00000, v0
	v_fma_f32 v23, -v44, v31, v52
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v29, -v53, v39, 1.0
	v_fmac_f32_e32 v31, v23, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v23.l, v0.h
	v_mov_b16_e32 v23.h, v30.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v39, v29, v39
	v_div_scale_f32 v29, s7, v45, 0x40e00000, v45
	v_fma_f32 v3, -v44, v31, v52
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v55, -v54, v37, 1.0
	v_mul_f32_e32 v60, v29, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v23, v0, v4, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v37, v55, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v53, v60, v29
	v_div_scale_f32 v55, s8, v47, 0x40e00000, v47
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v61, 0xffff0000, v23
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v31, v3, v46, v31
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s6, s34, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v4, null, s35, 0, s6
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v31, v31, 0x40e00000, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v68, null, v61, v61, v113
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s7
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[40:41], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v30.l, v31.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v69, v68
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v60, v44, v39
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[42:43], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v46.h, v30.h
	v_and_b32_e32 v44, 1, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v63, null, v61, v61, v112
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v29, -v53, v60, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v53, null, v61, v61, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v31, v44, 0x7fff
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_mul_f32_e32 v52, v55, v37
	v_div_fmas_f32 v29, v29, v39, v60
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v79, null, v61, v61, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v0, -v54, v52, v55
	v_div_fixup_f32 v29, v29, 0x40e00000, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v77, null, v61, v61, v106
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v85, v79
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v52, v0, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v61, v61, v120
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v46.l, v29.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v78, null, v61, v61, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v38, v0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v39, -v54, v52, v55
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v46
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v54, s8, v121, v61, v121
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v55, 0xffff0000, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fmas_f32 v37, v39, v37, v52
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v39, null, v61, v61, v121
	v_div_scale_f32 v52, null, v61, v61, v24
	v_fma_f32 v45, -v0, v38, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v37, v37, 0x40e00000, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v47, v39
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v31, v29, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v38, v45, v38
	v_div_scale_f32 v45, vcc_lo, v120, v61, v120
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v30.l, v37.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v44, v45, v38
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v39, v47, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v30, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v29, -v0, v44, v45
	v_fmac_f32_e32 v47, v46, v47
	v_rcp_f32_e32 v46, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v37, v30, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v44, v29, v38
	v_rcp_f32_e32 v29, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v30, v54, v47 :: v_dual_and_b32 v37, 0xffff0000, v4
	v_fma_f32 v0, -v0, v44, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v60, -v52, v46, 1.0
	v_fma_f32 v45, -v39, v30, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v38, v44
	v_fma_f32 v62, -v53, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v46, v60, v46
	v_div_scale_f32 v60, s9, v24, v61, v24
	v_dual_fmac_f32 v30, v45, v47 :: v_dual_fmac_f32 v29, v62, v29
	v_rcp_f32_e32 v45, v63
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v60, v46
	v_div_scale_f32 v62, s10, v27, v61, v27
	v_div_fixup_f32 v38, v0, v61, v120
	v_fma_f32 v0, -v39, v30, v54
	v_fma_f32 v39, -v52, v44, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v54, v62, v29
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v70, -v63, v45, 1.0
	v_div_fmas_f32 v0, v0, v47, v30
	v_fmac_f32_e32 v44, v39, v46
	v_fma_f32 v30, -v53, v54, v62
	v_div_scale_f32 v47, s8, v112, v61, v112
	v_fmac_f32_e32 v45, v70, v45
	v_fma_f32 v70, -v68, v69, 1.0
	v_div_fixup_f32 v39, v0, v61, v121
	v_fma_f32 v0, -v52, v44, v60
	v_fmac_f32_e32 v54, v30, v29
	v_div_scale_f32 v60, null, v61, v61, v114
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v30, v47, v45
	v_fmac_f32_e32 v69, v70, v69
	v_div_scale_f32 v52, s11, v113, v61, v113
	v_div_fmas_f32 v0, v0, v46, v44
	v_fma_f32 v44, -v53, v54, v62
	v_rcp_f32_e32 v53, v60
	v_fma_f32 v46, -v63, v30, v47
	v_mul_f32_e32 v62, v52, v69
	v_div_scale_f32 v70, null, v61, v61, v115
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v30, v46, v45
	v_div_fmas_f32 v29, v44, v29, v54
	v_rcp_f32_e32 v46, v70
	v_fma_f32 v44, -v68, v62, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v54, -v60, v53, 1.0
	v_div_fixup_f32 v24, v0, v61, v24
	v_fma_f32 v0, -v63, v30, v47
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v62, v44, v69
	v_fmac_f32_e32 v53, v54, v53
	v_div_scale_f32 v54, null, v61, v61, v21
	v_div_fixup_f32 v27, v29, v61, v27
	v_div_scale_f32 v29, s9, v114, v61, v114
	v_fma_f32 v44, -v70, v46, 1.0
	v_div_fmas_f32 v0, v0, v45, v30
	v_fma_f32 v30, -v68, v62, v52
	v_rcp_f32_e32 v52, v54
	v_div_scale_f32 v68, null, v61, v61, v104
	v_dual_mul_f32 v47, v29, v53 :: v_dual_fmac_f32 v46, v44, v46
	v_div_scale_f32 v63, s8, v115, v61, v115
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v76, v68
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v44, v0, v61, v112
	v_div_fmas_f32 v30, v30, v69, v62
	v_fma_f32 v62, -v60, v47, v29
	v_mul_f32_e32 v69, v63, v46
	v_fma_f32 v71, -v54, v52, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v45, v30, v61, v113
	v_fmac_f32_e32 v47, v62, v53
	v_fma_f32 v0, -v70, v69, v63
	v_fmac_f32_e32 v52, v71, v52
	v_div_scale_f32 v30, s10, v21, v61, v21
	v_div_scale_f32 v62, null, v61, v61, v105
	v_fma_f32 v71, -v68, v76, 1.0
	v_dual_fmac_f32 v69, v0, v46 :: v_dual_and_b32 v84, 0xffff0000, v31
	v_fma_f32 v29, -v60, v47, v29
	v_mul_f32_e32 v0, v30, v52
	v_rcp_f32_e32 v60, v62
	v_fmac_f32_e32 v76, v71, v76
	v_div_scale_f32 v71, s11, v104, v61, v104
	v_div_fmas_f32 v29, v29, v53, v47
	v_fma_f32 v47, -v70, v69, v63
	v_fma_f32 v53, -v54, v0, v30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v63, v71, v76
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v84, v84, v17
	v_fma_f32 v70, -v62, v60, 1.0
	v_div_fmas_f32 v47, v47, v46, v69
	v_fmac_f32_e32 v0, v53, v52
	v_rcp_f32_e32 v69, v77
	v_fma_f32 v53, -v68, v63, v71
	v_fmac_f32_e32 v60, v70, v60
	v_div_scale_f32 v70, s8, v105, v61, v105
	v_div_fixup_f32 v46, v29, v61, v114
	v_fma_f32 v29, -v54, v0, v30
	v_fmac_f32_e32 v63, v53, v76
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v30, v70, v60
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v53, -v77, v69, 1.0
	v_div_fmas_f32 v0, v29, v52, v0
	v_fma_f32 v29, -v68, v63, v71
	v_rcp_f32_e32 v68, v78
	v_div_scale_f32 v71, null, v61, v61, v20
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v52, -v62, v30, v70
	v_fmac_f32_e32 v69, v53, v69
	v_div_scale_f32 v54, s9, v106, v61, v106
	v_div_fmas_f32 v29, v29, v76, v63
	v_rcp_f32_e32 v63, v71
	v_fmac_f32_e32 v30, v52, v60
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v76, v54, v69
	v_fma_f32 v53, -v78, v68, 1.0
	v_div_fixup_f32 v21, v0, v61, v21
	v_div_fixup_f32 v52, v29, v61, v104
	v_fma_f32 v0, -v62, v30, v70
	v_fma_f32 v29, -v77, v76, v54
	v_fmac_f32_e32 v68, v53, v68
	v_div_scale_f32 v62, s10, v107, v61, v107
	v_fma_f32 v53, -v71, v63, 1.0
	v_div_scale_f32 v70, null, v61, v61, v18
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v76, v29, v69
	v_div_fmas_f32 v0, v0, v60, v30
	v_mul_f32_e32 v29, v62, v68
	v_fmac_f32_e32 v63, v53, v63
	v_rcp_f32_e32 v30, v70
	v_div_scale_f32 v60, s8, v20, v61, v20
	v_div_fixup_f32 v53, v0, v61, v105
	v_fma_f32 v0, -v77, v76, v54
	v_fma_f32 v54, -v78, v29, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v77, v60, v63
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v47, v47, v61, v115
	v_div_fmas_f32 v0, v0, v69, v76
	v_fma_f32 v86, -v70, v30, 1.0
	v_fmac_f32_e32 v29, v54, v68
	v_fma_f32 v69, -v71, v77, v60
	v_div_scale_f32 v76, s9, v18, v61, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v30, v86, v30
	v_fma_f32 v86, -v79, v85, 1.0
	v_div_fixup_f32 v54, v0, v61, v106
	v_fma_f32 v0, -v78, v29, v62
	v_fmac_f32_e32 v77, v69, v63
	v_div_scale_f32 v78, null, v84, v84, v96
	s_mov_b32 vcc_lo, s10
	v_dual_mul_f32 v62, v76, v30 :: v_dual_fmac_f32 v85, v86, v85
	v_div_scale_f32 v69, s11, v19, v61, v19
	v_div_fmas_f32 v0, v0, v68, v29
	v_fma_f32 v29, -v71, v77, v60
	v_rcp_f32_e32 v68, v78
	v_div_scale_f32 v86, null, v84, v84, v97
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v60, -v70, v62, v76
	v_mul_f32_e32 v71, v69, v85
	v_div_fmas_f32 v29, v29, v63, v77
	v_rcp_f32_e32 v63, v86
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v62, v60, v30
	v_fma_f32 v77, -v79, v71, v69
	v_fma_f32 v87, -v78, v68, 1.0
	v_div_fixup_f32 v60, v0, v61, v107
	v_div_fixup_f32 v20, v29, v61, v20
	v_fma_f32 v0, -v70, v62, v76
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v71, v77, v85 :: v_dual_fmac_f32 v68, v87, v68
	v_div_scale_f32 v29, s8, v96, v84, v96
	v_fma_f32 v70, -v86, v63, 1.0
	v_div_scale_f32 v76, null, v84, v84, v99
	v_div_fmas_f32 v0, v0, v30, v62
	v_fma_f32 v30, -v79, v71, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v62, v29, v68 :: v_dual_fmac_f32 v63, v70, v63
	v_rcp_f32_e32 v69, v76
	v_div_scale_f32 v70, s9, v97, v84, v97
	v_div_scale_f32 v77, null, v84, v84, v98
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v79, v70, v63
	v_div_fmas_f32 v30, v30, v85, v71
	v_fma_f32 v71, -v78, v62, v29
	v_rcp_f32_e32 v87, v77
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v85, -v76, v69, 1.0
	v_div_fixup_f32 v18, v0, v61, v18
	v_fma_f32 v0, -v86, v79, v70
	v_fmac_f32_e32 v62, v71, v68
	v_div_scale_f32 v71, null, v84, v84, v88
	v_div_fixup_f32 v19, v30, v61, v19
	v_fmac_f32_e32 v69, v85, v69
	v_div_scale_f32 v30, s10, v99, v84, v99
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v77, v87, 1.0
	v_fma_f32 v29, -v78, v62, v29
	v_fmac_f32_e32 v79, v0, v63
	v_rcp_f32_e32 v78, v71
	v_dual_mul_f32 v0, v30, v69 :: v_dual_fmac_f32 v87, v61, v87
	v_div_scale_f32 v85, s11, v98, v84, v98
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v61, -v86, v79, v70
	v_div_scale_f32 v86, null, v84, v84, v89
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v84, v84, v80
	v_div_fmas_f32 v29, v29, v68, v62
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v62, -v76, v0, v30
	v_mul_f32_e32 v68, v85, v87
	v_fma_f32 v70, -v71, v78, 1.0
	v_div_fmas_f32 v63, v61, v63, v79
	v_rcp_f32_e32 v79, v86
	v_fmac_f32_e32 v0, v62, v69
	v_fma_f32 v92, -v77, v68, v85
	v_fmac_f32_e32 v78, v70, v78
	v_div_scale_f32 v70, s8, v88, v84, v88
	v_div_fixup_f32 v61, v29, v84, v96
	v_div_fixup_f32 v62, v63, v84, v97
	v_fma_f32 v29, -v76, v0, v30
	v_fmac_f32_e32 v68, v92, v87
	v_mul_f32_e32 v30, v70, v78
	v_fma_f32 v63, -v86, v79, 1.0
	v_div_scale_f32 v76, null, v84, v84, v90
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, null, v84, v84, v91
	v_div_fmas_f32 v0, v29, v69, v0
	v_fma_f32 v29, -v77, v68, v85
	v_fma_f32 v69, -v71, v30, v70
	v_fmac_f32_e32 v79, v63, v79
	v_rcp_f32_e32 v77, v76
	v_div_scale_f32 v85, s9, v89, v84, v89
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v30, v69, v78
	v_div_fmas_f32 v29, v29, v87, v68
	v_rcp_f32_e32 v87, v92
	v_mul_f32_e32 v93, v85, v79
	v_div_fixup_f32 v63, v0, v84, v99
	v_fma_f32 v0, -v71, v30, v70
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v69, -v76, v77, 1.0
	v_div_fixup_f32 v68, v29, v84, v98
	v_fma_f32 v29, -v86, v93, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v71, s10, v90, v84, v90
	v_fmac_f32_e32 v77, v69, v77
	v_fma_f32 v69, -v92, v87, 1.0
	v_div_fmas_f32 v0, v0, v78, v30
	v_fmac_f32_e32 v93, v29, v79
	v_rcp_f32_e32 v30, v94
	v_mul_f32_e32 v29, v71, v77
	v_fmac_f32_e32 v87, v69, v87
	v_div_scale_f32 v78, s8, v91, v84, v91
	v_div_fixup_f32 v69, v0, v84, v88
	v_fma_f32 v0, -v86, v93, v85
	v_rcp_f32_e32 v86, v95
	v_fma_f32 v70, -v76, v29, v71
	v_mul_f32_e32 v85, v78, v87
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v94, v30, 1.0
	v_div_fmas_f32 v0, v0, v79, v93
	v_fmac_f32_e32 v29, v70, v77
	v_fma_f32 v79, -v92, v85, v78
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v30, v88, v30
	v_fma_f32 v93, -v95, v86, 1.0
	v_div_scale_f32 v88, s9, v17, v84, v17
	v_div_fixup_f32 v70, v0, v84, v89
	v_fma_f32 v0, -v76, v29, v71
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v85, v79, v87 :: v_dual_fmac_f32 v86, v93, v86
	v_div_scale_f32 v93, null, v84, v84, v81
	v_mul_f32_e32 v79, v88, v30
	v_div_scale_f32 v89, s11, v80, v84, v80
	v_div_fmas_f32 v0, v0, v77, v29
	v_fma_f32 v29, -v92, v85, v78
	v_rcp_f32_e32 v78, v93
	v_div_scale_f32 v92, null, v84, v84, v82
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v71, -v94, v79, v88
	v_mul_f32_e32 v77, v89, v86
	v_div_fmas_f32 v29, v29, v87, v85
	v_rcp_f32_e32 v85, v92
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v79, v71, v30
	v_fma_f32 v87, -v95, v77, v89
	v_fma_f32 v96, -v93, v78, 1.0
	v_div_fixup_f32 v71, v0, v84, v90
	v_div_fixup_f32 v76, v29, v84, v91
	v_fma_f32 v0, -v94, v79, v88
	v_fmac_f32_e32 v77, v87, v86
	v_fmac_f32_e32 v78, v96, v78
	v_div_scale_f32 v29, s8, v81, v84, v81
	v_fma_f32 v87, -v92, v85, 1.0
	v_div_scale_f32 v88, null, v84, v84, v83
	v_div_fmas_f32 v0, v0, v30, v79
	v_fma_f32 v30, -v95, v77, v89
	v_mul_f32_e32 v79, v29, v78
	v_fmac_f32_e32 v85, v87, v85
	v_rcp_f32_e32 v87, v88
	v_div_scale_f32 v89, s9, v82, v84, v82
	v_div_scale_f32 v90, null, v84, v84, v16
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v91, v89, v85
	v_div_fmas_f32 v30, v30, v86, v77
	v_fma_f32 v86, -v93, v79, v29
	v_rcp_f32_e32 v95, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v87, 1.0
	v_div_fixup_f32 v17, v0, v84, v17
	v_fma_f32 v0, -v92, v91, v89
	v_fmac_f32_e32 v79, v86, v78
	v_div_fixup_f32 v77, v30, v84, v80
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v30, s10, v83, v84, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v29, -v93, v79, v29
	v_fma_f32 v80, -v90, v95, 1.0
	v_fmac_f32_e32 v91, v0, v85
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v0, v30, v87
	v_div_fmas_f32 v29, v29, v78, v79
	v_fmac_f32_e32 v95, v80, v95
	v_div_scale_f32 v80, s11, v16, v84, v16
	v_fma_f32 v78, -v92, v91, v89
	v_div_scale_f32 v94, null, v84, v84, v14
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v86, null, v84, v84, v15
	v_fma_f32 v79, -v88, v0, v30
	v_mul_f32_e32 v89, v80, v95
	v_div_fmas_f32 v85, v78, v85, v91
	v_rcp_f32_e32 v91, v94
	v_rcp_f32_e32 v93, v86
	v_fmac_f32_e32 v0, v79, v87
	v_fma_f32 v96, -v90, v89, v80
	v_div_fixup_f32 v78, v29, v84, v81
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v79, v85, v84, v82
	v_fma_f32 v29, -v88, v0, v30
	v_fmac_f32_e32 v89, v96, v95
	v_div_scale_f32 v85, s9, v14, v84, v14
	v_fma_f32 v81, -v94, v91, 1.0
	v_fma_f32 v92, -v86, v93, 1.0
	v_div_fmas_f32 v0, v29, v87, v0
	v_fma_f32 v29, -v90, v89, v80
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v91, v81, v91
	v_fmac_f32_e32 v93, v92, v93
	v_div_scale_f32 v92, s8, v15, v84, v15
	v_div_scale_f32 v82, null, v55, v55, v72
	v_div_fmas_f32 v29, v29, v95, v89
	v_mul_f32_e32 v89, v85, v91
	v_div_scale_f32 v87, null, v55, v55, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v81, v82
	v_div_fixup_f32 v16, v29, v84, v16
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v29, -v94, v89, v85
	v_mul_f32_e32 v30, v92, v93
	v_rcp_f32_e32 v88, v87
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v89, v29, v91
	v_fma_f32 v80, -v86, v30, v92
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v82, v81, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v21, v21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v30, v80, v93
	v_div_fixup_f32 v80, v0, v84, v83
	v_fmac_f32_e32 v81, v90, v81
	v_div_scale_f32 v83, s10, v72, v55, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v0, -v86, v30, v92
	v_fma_f32 v86, -v87, v88, 1.0
	v_div_scale_f32 v90, null, v55, v55, v75
	v_mul_f32_e32 v29, v83, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v93, v30
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v30, v90
	v_div_scale_f32 v92, null, v55, v55, v108
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v15, v0, v84, v15
	v_fma_f32 v0, -v94, v89, v85
	v_fma_f32 v85, -v82, v29, v83
	v_fmac_f32_e32 v88, v86, v88
	v_div_scale_f32 v86, s8, v73, v55, v73
	v_div_fmas_f32 v0, v0, v91, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v29, v85, v81
	v_rcp_f32_e32 v94, v92
	v_mul_f32_e32 v93, v86, v88
	v_fma_f32 v95, -v90, v30, 1.0
	v_div_fixup_f32 v14, v0, v84, v14
	v_div_scale_f32 v84, null, v55, v55, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v85, -v87, v93, v86
	v_fmac_f32_e32 v30, v95, v30
	v_div_scale_f32 v89, s9, v75, v55, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v91, -v92, v94, 1.0
	v_fmac_f32_e32 v93, v85, v88
	v_rcp_f32_e32 v85, v84
	v_fma_f32 v0, -v82, v29, v83
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v94, v91, v94
	v_div_scale_f32 v83, s11, v108, v55, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v0, v0, v81, v29
	v_fma_f32 v29, -v87, v93, v86
	v_div_scale_f32 v87, null, v55, v55, v65
	v_fma_f32 v91, -v84, v85, 1.0
	v_mul_f32_e32 v82, v89, v30
	v_mul_f32_e32 v86, v83, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v72, v0, v55, v72
	v_fmac_f32_e32 v85, v91, v85
	v_fma_f32 v81, -v90, v82, v89
	v_div_fmas_f32 v29, v29, v88, v93
	v_fma_f32 v88, -v92, v86, v83
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v82, v81, v30
	v_rcp_f32_e32 v81, v87
	v_div_fixup_f32 v73, v29, v55, v73
	v_fmac_f32_e32 v86, v88, v94
	v_div_scale_f32 v29, s8, v64, v55, v64
	v_fma_f32 v0, -v90, v82, v89
	v_div_scale_f32 v89, null, v55, v55, v66
	v_div_scale_f32 v90, null, v55, v55, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v88, -v87, v81, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	v_rndne_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v93, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v88, v81
	v_div_fmas_f32 v0, v0, v30, v82
	v_fma_f32 v30, -v92, v86, v83
	v_mul_f32_e32 v82, v29, v85
	v_rcp_f32_e32 v83, v89
	v_div_scale_f32 v88, s9, v65, v55, v65
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v75, v0, v55, v75
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v17, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v91, v88, v81
	v_div_fmas_f32 v30, v30, v94, v86
	v_fma_f32 v86, -v84, v82, v29
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v89, v83, 1.0
	v_fma_f32 v0, -v87, v91, v88
	v_div_fixup_f32 v74, v30, v55, v108
	v_fmac_f32_e32 v82, v86, v85
	v_div_scale_f32 v30, s10, v66, v55, v66
	v_fmac_f32_e32 v83, v92, v83
	v_fma_f32 v92, -v90, v93, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v29, -v84, v82, v29
	v_fmac_f32_e32 v91, v0, v81
	v_div_scale_f32 v94, null, v55, v55, v56
	v_dual_mul_f32 v0, v30, v83 :: v_dual_fmac_f32 v93, v92, v93
	v_div_scale_f32 v92, s11, v67, v55, v67
	v_div_fmas_f32 v29, v29, v85, v82
	v_fma_f32 v82, -v87, v91, v88
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v86, null, v55, v55, v13
	v_fma_f32 v85, -v89, v0, v30
	v_mul_f32_e32 v87, v92, v93
	v_div_fmas_f32 v81, v82, v81, v91
	v_rcp_f32_e32 v82, v94
	v_rcp_f32_e32 v84, v86
	v_fmac_f32_e32 v0, v85, v83
	v_fma_f32 v85, -v90, v87, v92
	v_div_fixup_f32 v65, v81, v55, v65
	v_div_fixup_f32 v64, v29, v55, v64
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v29, -v89, v0, v30
	v_fmac_f32_e32 v87, v85, v93
	v_div_scale_f32 v85, null, v55, v55, v57
	v_fma_f32 v81, -v94, v82, 1.0
	v_fma_f32 v88, -v86, v84, 1.0
	v_div_fmas_f32 v0, v29, v83, v0
	v_fma_f32 v29, -v90, v87, v92
	v_div_scale_f32 v89, s9, v56, v55, v56
	v_fmac_f32_e32 v82, v81, v82
	v_rcp_f32_e32 v81, v85
	v_fmac_f32_e32 v84, v88, v84
	v_div_scale_f32 v88, s8, v13, v55, v13
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v90, null, v55, v55, v58
	v_div_fmas_f32 v29, v29, v93, v87
	v_mul_f32_e32 v87, v89, v82
	v_div_fixup_f32 v66, v0, v55, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v85, v81, 1.0
	v_mul_f32_e32 v30, v88, v84
	v_div_fixup_f32 v67, v29, v55, v67
	v_fma_f32 v29, -v94, v87, v89
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v81, v91, v81
	v_fma_f32 v83, -v86, v30, v88
	v_div_scale_f32 v91, null, v55, v55, v59
	v_fmac_f32_e32 v87, v29, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v75
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v30, v83, v84
	v_rcp_f32_e32 v83, v90
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v0, -v86, v30, v88
	v_div_scale_f32 v86, s10, v57, v55, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v16, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v0, v0, v84, v30
	v_fma_f32 v88, -v90, v83, 1.0
	v_rcp_f32_e32 v30, v91
	v_mul_f32_e32 v29, v86, v81
	v_div_scale_f32 v84, s8, v58, v55, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v88, v83
	v_div_scale_f32 v88, null, v55, v55, v12
	v_div_fixup_f32 v0, v0, v55, v13
	v_fma_f32 v13, -v94, v87, v89
	v_fma_f32 v89, -v85, v29, v86
	v_rcp_f32_e32 v93, v88
	v_mul_f32_e32 v92, v84, v83
	v_fma_f32 v94, -v91, v30, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v29, v89, v81
	v_div_fmas_f32 v13, v13, v82, v87
	v_fma_f32 v82, -v90, v92, v84
	v_div_scale_f32 v87, s9, v59, v55, v59
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v89, -v88, v93, 1.0
	v_fmac_f32_e32 v30, v94, v30
	v_div_fixup_f32 v13, v13, v55, v56
	v_fma_f32 v56, -v85, v29, v86
	v_div_scale_f32 v85, s11, v12, v55, v12
	v_dual_fmac_f32 v93, v89, v93 :: v_dual_fmac_f32 v92, v82, v83
	v_mul_f32_e32 v82, v87, v30
	v_div_scale_f32 v86, null, v55, v55, v10
	v_div_fmas_f32 v29, v56, v81, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v89, v85, v93
	v_fma_f32 v56, -v90, v92, v84
	v_fma_f32 v81, -v91, v82, v87
	v_div_scale_f32 v90, null, v55, v55, v11
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v84, v86
	v_div_fmas_f32 v56, v56, v83, v92
	v_fma_f32 v83, -v88, v89, v85
	v_fmac_f32_e32 v82, v81, v30
	v_rcp_f32_e32 v81, v90
	v_div_fixup_f32 v29, v29, v55, v57
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v89, v83, v93
	v_fma_f32 v57, -v91, v82, v87
	v_div_fixup_f32 v56, v56, v55, v58
	v_fma_f32 v92, -v86, v84, 1.0
	v_div_scale_f32 v58, s8, v10, v55, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v30, v57, v30, v82
	v_fma_f32 v83, -v90, v81, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v92, v84
	v_fma_f32 v57, -v88, v89, v85
	v_div_scale_f32 v85, s9, v11, v55, v11
	v_fmac_f32_e32 v81, v83, v81
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v83, null, v37, v37, v48
	v_div_fmas_f32 v57, v57, v93, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v89, v85, v81
	v_div_scale_f32 v93, null, v37, v37, v50
	v_rcp_f32_e32 v87, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v12, v57, v55, v12
	v_fma_f32 v57, -v90, v89, v85
	v_mul_f32_e32 v82, v58, v84
	v_rcp_f32_e32 v95, v93
	v_div_scale_f32 v91, null, v37, v37, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v89, v57, v81
	v_fma_f32 v88, -v86, v82, v58
	v_div_fixup_f32 v30, v30, v55, v59
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v59, v91
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v57, s10, v48, v37, v48
	v_fmac_f32_e32 v82, v88, v84
	v_fma_f32 v88, -v83, v87, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v86, v82, v58
	v_div_scale_f32 v86, null, v37, v37, v51
	v_fmac_f32_e32 v87, v88, v87
	v_fma_f32 v92, -v91, v59, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v58, v58, v84, v82
	v_rcp_f32_e32 v88, v86
	v_fma_f32 v82, -v90, v89, v85
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, s8, v49, v37, v49
	v_div_fixup_f32 v10, v58, v55, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v81, v82, v81, v89
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v58, -v93, v95, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v90, -v86, v88, 1.0
	v_fmac_f32_e32 v59, v92, v59
	v_div_fixup_f32 v11, v81, v55, v11
	v_div_scale_f32 v81, null, v37, v37, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v88, v90, v88
	v_div_scale_f32 v90, s11, v51, v37, v51
	v_mul_f32_e32 v84, v57, v87
	v_mul_f32_e32 v94, v85, v59
	v_fmac_f32_e32 v95, v58, v95
	v_mul_f32_e32 v89, v90, v88
	v_div_scale_f32 v58, s9, v50, v37, v50
	v_fma_f32 v92, -v83, v84, v57
	v_fma_f32 v82, -v91, v94, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v12, v12
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	v_rndne_f32_e32 v11, v11
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v83, v84, v57
	v_fma_f32 v57, -v86, v89, v90
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v89, v57, v88
	v_rcp_f32_e32 v57, v81
	v_fmac_f32_e32 v94, v82, v59
	v_div_fmas_f32 v55, v55, v87, v84
	v_div_scale_f32 v84, null, v37, v37, v41
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v82, -v91, v94, v85
	v_div_fixup_f32 v48, v55, v37, v48
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v81, v57, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v57, v85, v57
	v_div_fmas_f32 v59, v82, v59, v94
	v_fma_f32 v82, -v86, v89, v90
	v_rcp_f32_e32 v86, v84
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s8, v40, v37, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v88, v89
	v_div_fixup_f32 v49, v59, v37, v49
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v55, v85, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v51, v82, v37, v51
	v_fma_f32 v59, -v84, v86, 1.0
	v_mul_f32_e32 v83, v58, v95
	v_div_scale_f32 v82, null, v37, v37, v42
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v59, v86
	v_fma_f32 v87, -v93, v83, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v88, v82
	v_div_scale_f32 v59, s10, v41, v37, v41
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v87, v95
	v_fma_f32 v87, -v81, v55, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v93, v83, v58
	v_fmac_f32_e32 v55, v87, v57
	v_div_scale_f32 v87, null, v37, v37, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v58, v58, v95, v83
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v89, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v50, v58, v37, v50
	v_fma_f32 v58, -v81, v55, v85
	v_fma_f32 v85, -v82, v88, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v50, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v58, v57, v55
	v_fmac_f32_e32 v88, v85, v88
	v_div_scale_f32 v85, null, v37, v37, v36
	v_div_scale_f32 v57, null, v37, v37, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v40, v55, v37, v40
	v_rcp_f32_e32 v91, v85
	v_fma_f32 v55, -v87, v89, 1.0
	v_div_scale_f32 v58, s8, v42, v37, v42
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v92, s10, v9, v37, v9
	v_fmac_f32_e32 v89, v55, v89
	v_div_scale_f32 v55, s9, v43, v37, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v93, -v85, v91, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v40, v40
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, s11, v36, v37, v36
	v_mul_f32_e32 v83, v59, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v84, v83, v59
	v_fmac_f32_e32 v83, v81, v86
	v_rcp_f32_e32 v81, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v59, -v84, v83, v59
	v_mul_f32_e32 v84, v58, v88
	v_div_fmas_f32 v59, v59, v86, v83
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v90, -v57, v81, 1.0
	v_fma_f32 v83, -v82, v84, v58
	v_mul_f32_e32 v86, v55, v89
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v41, v59, v37, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v81, v90, v81 :: v_dual_fmac_f32 v84, v83, v88
	v_div_scale_f32 v90, null, v37, v37, v33
	v_fma_f32 v83, -v87, v86, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v82, v84, v58
	v_rcp_f32_e32 v94, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v83, v89
	v_mul_f32_e32 v82, v93, v91
	v_div_fmas_f32 v58, v58, v88, v84
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v84, null, v37, v37, v35
	v_fma_f32 v55, -v87, v86, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v42, v58, v37, v42
	v_fma_f32 v83, -v90, v94, 1.0
	v_mul_f32_e32 v95, v92, v81
	v_div_scale_f32 v88, null, v37, v37, v8
	v_div_fmas_f32 v55, v55, v89, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v83, v94
	v_fma_f32 v59, -v57, v95, v92
	v_div_scale_f32 v83, s8, v33, v37, v33
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v86, v84
	v_fmac_f32_e32 v95, v59, v81
	v_fma_f32 v59, -v85, v82, v93
	v_div_fixup_f32 v43, v55, v37, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v57, v95, v92
	v_fmac_f32_e32 v82, v59, v91
	v_mul_f32_e32 v59, v83, v94
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v84, v86, 1.0
	v_div_fmas_f32 v57, v57, v81, v95
	v_fma_f32 v81, -v85, v82, v93
	v_fma_f32 v85, -v90, v59, v83
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v58, v86
	v_div_fixup_f32 v9, v57, v37, v9
	v_div_scale_f32 v57, null, v37, v37, v34
	v_fmac_f32_e32 v59, v85, v94
	v_div_fmas_f32 v81, v81, v91, v82
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v58, null, v37, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v90, v59, v83
	v_div_fixup_f32 v36, v81, v37, v36
	v_div_scale_f32 v81, null, v37, v37, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v58
	v_div_fmas_f32 v55, v55, v94, v59
	v_div_scale_f32 v82, vcc_lo, v35, v37, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v85, v81
	v_rcp_f32_e32 v59, v57
	v_div_fixup_f32 v33, v55, v37, v33
	v_rcp_f32_e32 v90, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v58, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v81, v85, 1.0
	v_fma_f32 v55, -v57, v59, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v83, v89, v83
	v_div_scale_f32 v89, s9, v6, v37, v6
	v_fmac_f32_e32 v85, v92, v85
	v_div_scale_f32 v92, s10, v7, v37, v7
	v_fmac_f32_e32 v59, v55, v59
	v_div_scale_f32 v55, s8, v34, v37, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v96, v92, v85 :: v_dual_mul_f32 v87, v82, v86
	v_mul_f32_e32 v95, v89, v83
	v_fma_f32 v94, -v88, v90, 1.0
	v_fma_f32 v91, -v84, v87, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v94, v90
	v_div_scale_f32 v94, s11, v8, v37, v8
	v_fmac_f32_e32 v87, v91, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v84, v87, v82
	v_fma_f32 v84, -v58, v95, v89
	v_div_fmas_f32 v82, v82, v86, v87
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v95, v84, v83
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v0, v0, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v58, -v58, v95, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v93, v55, v59
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v82, v37, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v57, v93, v55
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_cvt_i32_f32_e32 v27, v27
	v_cvt_i32_f32_e32 v29, v29
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v91, v59
	v_fma_f32 v91, -v81, v96, v92
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v55, -v57, v93, v55
	v_fmac_f32_e32 v96, v91, v85
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v55, v55, v59, v93
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v58, v58, v83, v95
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v34, v55, v37, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v61
	v_rndne_f32_e32 v61, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v6, v58, v37, v6
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v63
	v_rndne_f32_e32 v63, v76
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v94, v90
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v70, v79
	v_rndne_f32_e32 v6, v6
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v55, v55, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v57, -v88, v97, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v57, v90
	v_fma_f32 v57, -v81, v96, v92
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v99, v34
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v59, -v88, v97, v94
	v_div_fmas_f32 v57, v57, v85, v96
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v59, v59, v90, v97
	v_div_fixup_f32 v7, v57, v37, v7
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v62
	v_rndne_f32_e32 v62, v71
	v_rndne_f32_e32 v71, v80
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v8, v59, v37, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v38
	v_rndne_f32_e32 v38, v39
	v_rndne_f32_e32 v8, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v44
	v_rndne_f32_e32 v44, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v60
	v_rndne_f32_e32 v60, v69
	v_rndne_f32_e32 v68, v77
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s8, 0x40e00000
	v_cvt_i32_f32_e32 v59, v59
	v_and_b32_e32 v34, 15, v57
	v_and_b32_e32 v57, 15, v0
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v0, 10, v160
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v78
	v_rndne_f32_e32 v7, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_cvt_i32_f32_e32 v95, v9
	v_cvt_i32_f32_e32 v96, v36
	v_cvt_i32_f32_e32 v102, v8
	v_and_b32_e32 v8, 15, v24
	v_and_b32_e32 v9, 15, v27
	v_and_b32_e32 v36, 15, v59
	v_and_b32_e32 v59, 15, v29
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v24, 4, v165
	v_and_b32_e32 v0, 0x1800, v0
	v_lshlrev_b32_e32 v27, 6, v5
	v_lshlrev_b32_e32 v29, 6, v160
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v10, v10, s8, 0x40e00000
	v_med3_f32 v11, v11, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v6, v6, s8, 0x40e00000
	v_med3_f32 v7, v7, s8, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v38, v38
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v44, v44
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v87, v48
	v_cvt_i32_f32_e32 v88, v49
	v_cvt_i32_f32_e32 v89, v51
	v_cvt_i32_f32_e32 v90, v50
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v24, v24, v32
	v_add3_u32 v0, 0, v0, v27
	v_and_or_b32 v26, 0x1b00, v29, v26
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_cvt_i32_f32_e32 v21, v21
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v77, v19
	v_cvt_i32_f32_e32 v78, v17
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v79, v16
	v_cvt_i32_f32_e32 v80, v15
	v_cvt_i32_f32_e32 v81, v14
	v_cvt_i32_f32_e32 v82, v13
	v_cvt_i32_f32_e32 v83, v56
	v_cvt_i32_f32_e32 v97, v33
	v_cvt_i32_f32_e32 v98, v35
	v_cvt_i32_f32_e32 v84, v12
	v_cvt_i32_f32_e32 v85, v10
	v_cvt_i32_f32_e32 v86, v11
	v_cvt_i32_f32_e32 v91, v40
	v_cvt_i32_f32_e32 v93, v42
	v_cvt_i32_f32_e32 v100, v6
	v_cvt_i32_f32_e32 v101, v7
	v_and_b32_e32 v6, 15, v37
	v_and_b32_e32 v10, 15, v39
	v_and_b32_e32 v11, 15, v44
	v_and_b32_e32 v12, 15, v45
	v_and_b32_e32 v13, 15, v46
	v_and_b32_e32 v16, 15, v52
	v_and_b32_e32 v18, 15, v54
	v_and_b32_e32 v33, 15, v55
	v_and_b32_e32 v35, 15, v58
	v_and_b32_e32 v37, 15, v60
	v_and_b32_e32 v39, 15, v62
	v_and_b32_e32 v40, 15, v63
	v_and_b32_e32 v42, 15, v68
	v_and_b32_e32 v49, 15, v72
	v_and_b32_e32 v50, 15, v73
	v_and_b32_e32 v51, 15, v75
	v_and_b32_e32 v52, 15, v74
	v_and_b32_e32 v54, 15, v65
	v_and_b32_e32 v55, 15, v66
	v_and_b32_e32 v56, 15, v67
	v_and_b32_e32 v65, 15, v87
	v_and_b32_e32 v66, 15, v88
	v_and_b32_e32 v67, 15, v89
	v_and_b32_e32 v68, 15, v90
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v0, v0, v24, v28
	v_xad_u32 v24, v26, v116, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v7, 15, v38
	v_and_b32_e32 v38, 15, v61
	v_cvt_i32_f32_e32 v92, v41
	v_cvt_i32_f32_e32 v94, v43
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v15, 15, v47
	v_and_b32_e32 v17, 15, v53
	v_and_b32_e32 v19, 15, v20
	v_and_b32_e32 v20, 15, v76
	v_and_b32_e32 v21, 15, v77
	v_and_b32_e32 v41, 15, v78
	v_and_b32_e32 v43, 15, v69
	v_and_b32_e32 v44, 15, v70
	v_and_b32_e32 v45, 15, v71
	v_and_b32_e32 v46, 15, v79
	v_and_b32_e32 v47, 15, v80
	v_and_b32_e32 v48, 15, v81
	v_and_b32_e32 v58, 15, v82
	v_and_b32_e32 v60, 15, v83
	v_and_b32_e32 v73, 15, v95
	v_and_b32_e32 v74, 15, v96
	v_and_b32_e32 v75, 15, v97
	v_and_b32_e32 v76, 15, v98
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v0, v[6:9]
	ds_store_b128 v0, v[14:17] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[6:9], v24
	ds_load_b128 v[14:17], v24 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[33:36]
	ds_store_b128 v0, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[26:29], v24
	ds_load_b128 v[32:35], v24 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[49:52]
	ds_store_b128 v0, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[41:44], v24
	ds_load_b128 v[49:52], v24 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[65:68]
	ds_store_b128 v0, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[57:60], v24
	ds_load_b128 v[65:68], v24 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[10:13]
	ds_store_b128 v0, v[18:21] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v24
	ds_load_b128 v[18:21], v24 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[37:40]
	ds_store_b128 v0, v[45:48] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v24
	ds_load_b128 v[45:48], v24 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_and_b32_e32 v62, 15, v84
	v_and_b32_e32 v63, 15, v85
	v_and_b32_e32 v69, 15, v91
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v30, v30
	v_and_b32_e32 v70, 15, v92
	v_and_b32_e32 v71, 15, v93
	v_and_b32_e32 v72, 15, v94
	v_and_b32_e32 v53, 15, v64
	v_and_b32_e32 v61, 15, v30
	v_and_b32_e32 v64, 15, v86
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[53:56]
	ds_store_b128 v0, v[61:64] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[53:56], v24
	ds_load_b128 v[61:64], v24 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v77, 15, v99
	v_and_b32_e32 v78, 15, v100
	v_and_b32_e32 v79, 15, v101
	v_and_b32_e32 v80, 15, v102
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v6, v14, 4, v6
	v_lshl_or_b32 v14, v16, 4, v8
	v_lshl_or_b32 v16, v18, 4, v10
	v_lshl_or_b32 v18, v20, 4, v12
	v_lshl_or_b32 v20, v33, 4, v27
	v_lshl_or_b32 v27, v46, 4, v37
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v46, 3, v165
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v8, s34, v25
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v0, v[69:72]
	ds_store_b128 v0, v[77:80] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[69:72], v24
	ds_load_b128 v[73:76], v24 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s33, 31
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_lshl_or_b32 v0, s45, 7, v46
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s33, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, 16, v8
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v7, v15, 4, v7
	v_lshl_or_b32 v15, v17, 4, v9
	v_lshl_or_b32 v17, v19, 4, v11
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v11, 32, v8
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v13, v21, 4, v13
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 48, v8
	v_mad_u64_u32 v[8:9], null, v8, s8, v[0:1]
	v_mad_u64_u32 v[9:10], null, v10, s8, v[0:1]
	v_mad_u64_u32 v[10:11], null, v11, s8, v[0:1]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v21, v34, 4, v28
	v_lshl_or_b32 v24, v35, 4, v29
	v_lshl_or_b32 v28, v47, 4, v38
	v_lshl_or_b32 v29, v48, 4, v39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[11:12], null, v12, s8, v[0:1]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v15.l
	v_and_b16 v0.h, 0xff, v14.l
	v_lshlrev_b16 v3.l, 8, v7.l
	v_and_b16 v4.l, 0xff, v6.l
	v_lshlrev_b16 v6.l, 8, v13.l
	v_and_b16 v6.h, 0xff, v18.l
	v_lshlrev_b16 v7.l, 8, v17.l
	v_and_b16 v7.h, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v32, 4, v26
	v_lshl_or_b32 v26, v45, 4, v36
	v_lshl_or_b32 v37, v63, 4, v55
	v_lshl_or_b32 v38, v64, 4, v56
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.h, v6.h, v6.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_lshlrev_b16 v6.l, 8, v29.l
	v_and_b16 v6.h, 0xff, v28.l
	s_and_b32 s9, s21, 0xffff
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	s_mov_b32 s8, s20
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v30, v49, 4, v41
	v_lshl_or_b32 v32, v50, 4, v42
	v_lshl_or_b32 v33, v51, 4, v43
	v_lshl_or_b32 v34, v52, 4, v44
	v_lshl_or_b32 v35, v61, 4, v53
	v_lshl_or_b32 v36, v62, 4, v54
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v45, v75, 4, v71
	v_lshl_or_b32 v25, v76, 4, v72
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v0.l, 8, v24.l
	v_and_b16 v0.h, 0xff, v21.l
	v_lshlrev_b16 v3.l, 8, v20.l
	v_and_b16 v4.l, 0xff, v19.l
	v_lshlrev_b16 v7.l, 8, v27.l
	v_and_b16 v7.h, 0xff, v26.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v13.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v38.l
	v_and_b16 v6.h, 0xff, v37.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v39, v65, 4, v57
	v_lshl_or_b32 v40, v66, 4, v58
	v_lshl_or_b32 v41, v67, 4, v59
	v_lshl_or_b32 v42, v68, 4, v60
	v_lshl_or_b32 v43, v73, 4, v69
	v_lshl_or_b32 v44, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v8, 0x80000000, v9, vcc_lo
	v_lshlrev_b16 v0.l, 8, v34.l
	v_and_b16 v0.h, 0xff, v33.l
	v_lshlrev_b16 v3.l, 8, v32.l
	v_and_b16 v4.l, 0xff, v30.l
	v_lshlrev_b16 v7.l, 8, v36.l
	v_and_b16 v7.h, 0xff, v35.l
	v_or_b16 v9.h, v6.h, v6.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v45.l
	buffer_store_b64 v[12:13], v8, s[8:11], 0 offen
	v_or_b16 v8.h, v0.h, v0.l
	v_or_b16 v8.l, v4.l, v3.l
	v_or_b16 v9.l, v7.h, v7.l
	v_lshlrev_b16 v0.l, 8, v42.l
	v_and_b16 v0.h, 0xff, v41.l
	v_lshlrev_b16 v3.l, 8, v40.l
	v_and_b16 v4.l, 0xff, v39.l
	v_lshlrev_b16 v7.l, 8, v44.l
	v_and_b16 v7.h, 0xff, v43.l
	v_or_b16 v13.h, v6.h, v6.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v6, 4, v160
	v_lshrrev_b32_e32 v5, 2, v5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v0.h, v0.l
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.l, v4.l, v3.l
	v_or_b16 v13.l, v7.h, v7.l
	v_cndmask_b32_e32 v0, 0x80000000, v11, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v6
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s33, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[8:9], v10, s[8:11], 0 offen
	buffer_store_b64 v[12:13], v0, s[8:11], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v46
	v_mov_b16_e32 v4.l, v31.h
	v_mov_b16_e32 v3.l, v23.h
	v_add3_u32 v5, v5, v6, v46
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1254 13 is_stmt 0             ; ragged.py:1254:13
	v_add_nc_u32_e32 v7, s34, v22
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s33, s33, s0
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s33, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	ds_store_b64 v0, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v3, v7, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v4, 0xc0, v160
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[40:41], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[42:43], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s9, s23, 0xffff
	s_mov_b32 s8, s22
	v_cmp_eq_u32_e64 s1, 0, v4
	v_add_lshl_u32 v1, v3, s45, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[8:11], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp63:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 268
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
		.amdhsa_next_free_sgpr 46
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 46
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 268
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 27080
; TotalNumSgprs: 48
; NumVgprs: 256
; ScratchSize: 268
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 48
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 268
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nt_sc64_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 66
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
