	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s19, s[0:1], 0x84
	s_load_b32 s78, s[0:1], 0x60
.Ltmp0:
	.loc	1 773 86 prologue_end           ; attention.py:773:86
	v_and_b32_e32 v41, 1, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v2, 1, v0
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x0
	s_load_b64 s[16:17], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s18, s2, 6
	.loc	1 773 86                        ; attention.py:773:86
	v_lshlrev_b32_e32 v1, 4, v41
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, s18, v2
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s4, s18, s2
	s_mov_b32 s11, 0x31027000
	s_mov_b32 s10, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v168, v0, 4, 1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v4
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v43, 0x60, v0
	v_and_b32_e32 v72, 15, v0
	v_lshlrev_b32_e32 v50, 2, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v46, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[236:237], null, s78, v2, v[1:2]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s67, s78, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s9, s9, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s18, s17
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s6, s18, s16
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s19
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, vcc_lo, s67
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[2:3], null, s78, s4, v[236:237]
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 64
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s6, s6, s19
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s5, s2, 0x800
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s6, s6, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s5, s5, 63
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s79, s6, 0x7fffffc0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s7, s5, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v6, v46, 30, v168
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s7, s7, 26
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[2:5], v1, s[8:11], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v1, 1, v43
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s97, s5, s7
	s_mov_b32 s5, 0
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s97, s97, 63
	.loc	1 774 26 is_stmt 1              ; attention.py:774:26
	v_lshlrev_b32_e32 v6, 2, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v1, v1, v72
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s79, s97
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v8, 4, v6
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v7, s18, v1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v7
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v33, v6, v2
	ds_bpermute_b32 v34, v6, v3
	ds_bpermute_b32 v35, v6, v4
	ds_bpermute_b32 v37, v6, v5
	ds_bpermute_b32 v36, v8, v2
	ds_bpermute_b32 v38, v8, v3
	ds_bpermute_b32 v39, v8, v4
	ds_bpermute_b32 v40, v8, v5
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	v_lshlrev_b32_e32 v42, 2, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_mov_b32 s5, -1
                                        ; implicit-def: $vgpr42
.LBB0_3:                                ; %Flow398
	s_clause 0x1
	s_load_b64 s[76:77], s[0:1], 0x38
	s_load_b32 s96, s[0:1], 0x64
	v_dual_mov_b32 v8, 0 :: v_dual_and_b32 v45, 0x78, v0
	v_or_b32_e32 v235, 2, v168
	v_or_b32_e32 v234, 4, v168
	v_or_b32_e32 v233, 6, v168
	v_or_b32_e32 v232, 8, v168
	v_or_b32_e32 v231, 10, v168
	v_or_b32_e32 v230, 12, v168
	v_or_b32_e32 v229, 14, v168
	v_or_b32_e32 v228, 16, v168
	v_or_b32_e32 v227, 18, v168
	v_or_b32_e32 v226, 20, v168
	v_or_b32_e32 v109, 22, v168
	v_or_b32_e32 v210, 24, v168
	v_or_b32_e32 v151, 26, v168
	v_or_b32_e32 v137, 28, v168
	v_or_b32_e32 v167, 30, v168
	v_or_b32_e32 v177, 32, v168
	v_or_b32_e32 v184, 34, v168
	v_or_b32_e32 v183, 36, v168
	v_or_b32_e32 v182, 38, v168
	v_or_b32_e32 v181, 40, v168
	v_or_b32_e32 v180, 42, v168
	v_or_b32_e32 v179, 44, v168
	v_or_b32_e32 v178, 46, v168
	v_or_b32_e32 v169, 48, v168
	v_or_b32_e32 v176, 50, v168
	v_or_b32_e32 v175, 52, v168
	v_or_b32_e32 v173, 54, v168
	v_or_b32_e32 v171, 56, v168
	v_or_b32_e32 v170, 58, v168
	v_or_b32_e32 v174, 60, v168
	v_or_b32_e32 v172, 62, v168
	v_or_b32_e32 v63, s4, v1
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v141, v8
	v_mov_b32_e32 v139, v8
	v_mov_b32_e32 v140, v8
	v_mov_b32_e32 v138, v8
	s_and_not1_b32 vcc_lo, exec_lo, s5
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[4:11], s[0:1], 0x8
	v_dual_mov_b32 v54, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v63
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	v_dual_mov_b32 v55, 0x7632 :: v_dual_and_b32 v44, 16, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v2, 12, v0
	v_bfe_i32 v4, v0, 5, 1
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v63, off offset:64
	scratch_store_b32 off, v45, off offset:76
	s_clause 0x1
	s_load_b64 s[84:85], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x68
	v_dual_mov_b32 v194, 0xff800000 :: v_dual_lshlrev_b32 v9, 4, v0
	v_dual_mov_b32 v222, 0xff800000 :: v_dual_and_b32 v47, 24, v0
	v_lshlrev_b32_e32 v48, 2, v43
	v_dual_mov_b32 v26, v25 :: v_dual_and_b32 v49, 3, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s81, s9, 0xffff
	s_mov_b32 s80, s8
	v_bfe_i32 v52, v0, 3, 1
	buffer_load_u16 v42, v1, s[80:83], 0 offen
	v_dual_mov_b32 v192, 0xff800000 :: v_dual_and_b32 v1, 7, v0
	v_cmp_eq_u32_e32 vcc_lo, 0, v41
	v_mov_b32_e32 v221, 0xff800000
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v44
	v_dual_mov_b32 v18, v25 :: v_dual_lshlrev_b32 v57, 1, v2
	v_lshlrev_b32_e32 v58, 4, v1
	v_dual_mov_b32 v29, v25 :: v_dual_lshlrev_b32 v60, 5, v2
	v_dual_mov_b32 v22, v25 :: v_dual_and_b32 v63, 0x2040, v4
	v_dual_mov_b32 v28, v25 :: v_dual_and_b32 v3, 0x7c, v50
	v_dual_mov_b32 v30, v25 :: v_dual_lshlrev_b32 v5, 3, v0
	v_cndmask_b32_e64 v6, 0x1020, 0, vcc_lo
	v_bfe_i32 v7, v0, 2, 1
	v_dual_mov_b32 v32, v25 :: v_dual_and_b32 v53, 8, v0
	v_dual_mov_b32 v193, 0xff800000 :: v_dual_and_b32 v8, 4, v0
	v_mov_b32_e32 v41, 0xff800000
	v_lshl_or_b32 v59, v47, 1, v48
	v_dual_mov_b32 v20, v25 :: v_dual_and_b32 v61, 0x630, v9
	v_dual_mov_b32 v31, v25 :: v_dual_lshlrev_b32 v62, 5, v49
	v_dual_mov_b32 v17, v25 :: v_dual_lshlrev_b32 v64, 6, v44
	v_cndmask_b32_e64 v143, v35, v39, s1
	v_cndmask_b32_e64 v146, v34, v38, s1
	v_cndmask_b32_e64 v145, v33, v36, s1
	v_cndmask_b32_e64 v147, v39, v35, s1
	v_cndmask_b32_e64 v150, v38, v34, s1
	v_cndmask_b32_e64 v149, v36, v33, s1
	v_lshl_or_b32 v34, v47, 8, v58
	v_cndmask_b32_e64 v35, 0x2040, 0, s1
	v_lshl_or_b32 v36, v49, 11, v60
	v_lshl_or_b32 v203, v72, 5, v57
	v_and_or_b32 v38, 0x1020, v52, v63
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 3, v45
	v_lshrrev_b32_e32 v51, 3, v43
	v_dual_mov_b32 v27, v25 :: v_dual_and_b32 v46, 0x80, v46
	v_dual_mov_b32 v223, 0xff800000 :: v_dual_lshlrev_b32 v142, 3, v1
	v_xor_b32_e32 v195, v9, v47
	v_lshl_or_b32 v43, v43, 4, v3
	v_dual_mov_b32 v24, v25 :: v_dual_and_b32 v65, 0x310, v5
	v_and_or_b32 v66, 0x2040, v7, v6
	v_lshl_add_u32 v67, v8, 9, 0
	v_lshl_or_b32 v39, v53, 4, v64
	v_xor_b32_e32 v206, v34, v59
	v_or3_b32 v207, v61, v35, v36
	v_xor_b32_e32 v34, v38, v62
	v_xor_b32_e32 v38, 16, v203
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v144, v37, v40, s1
	v_cndmask_b32_e64 v148, v40, v37, s1
	v_xor_b32_e32 v33, 8, v195
	v_xor_b32_e32 v204, v43, v51
	v_cndmask_b32_e64 v40, 0x1054, v54, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[51:52], null, s96, v45, v[142:143]
	scratch_store_b32 off, v9, off          ; 4-byte Folded Spill
	v_dual_mov_b32 v9, v25 :: v_dual_add_nc_u32 v218, 0, v38
	v_or3_b32 v209, v66, v39, v65
	v_xor_b32_e32 v39, 24, v203
	v_add3_u32 v34, v67, v46, v34
	v_xor_b32_e32 v38, 16, v207
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_dual_mov_b32 v4, v25 :: v_dual_add_nc_u32 v33, 0, v33
	v_dual_mov_b32 v140, v25 :: v_dual_add_nc_u32 v219, 0, v39
	v_lshl_or_b32 v35, v40, 8, v40
	v_xor_b32_e32 v40, 0x810, v204
	v_xor_b32_e32 v39, 32, v207
	v_add_nc_u32_e32 v224, v34, v44
	v_dual_mov_b32 v11, v25 :: v_dual_add_nc_u32 v34, 0, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v1, v25 :: v_dual_add_nc_u32 v220, 0, v40
	v_cndmask_b32_e64 v43, 0x3276, v55, s1
	.loc	1 758 19                        ; attention.py:758:19
	s_clause 0x3                            ; 20-byte Folded Spill
	scratch_store_b64 off, v[51:52], off offset:4
	scratch_store_b32 off, v33, off offset:12
	scratch_store_b32 off, v0, off offset:68
	scratch_store_b32 off, v34, off offset:16
	v_xor_b32_e32 v40, 48, v207
	v_add_nc_u32_e32 v34, 0, v39
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v56, s18, v45
	v_mov_b32_e32 v3, v25
	scratch_store_b32 off, v72, off offset:72 ; 4-byte Folded Spill
	v_lshl_or_b32 v36, v43, 8, v43
	v_xor_b32_e32 v43, 64, v207
	scratch_store_b32 off, v34, off offset:20 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v40
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s8, s3, 31
	scratch_store_b32 off, v50, off offset:80 ; 4-byte Folded Spill
	v_dual_mov_b32 v191, 0xff800000 :: v_dual_and_b32 v50, 28, v0
	v_mov_b32_e32 v5, v25
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v68, 16, v56
	v_mul_lo_u32 v33, s15, v45
	v_xor_b32_e32 v45, 0x50, v207
	scratch_store_b32 off, v34, off offset:24 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v43
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s8, 28
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v47, s19, v68
	s_add_i32 s0, s3, s0
	v_mov_b32_e32 v7, v25
	v_lshl_or_b32 v37, v50, 7, v62
	v_xor_b32_e32 v46, 0x60, v207
	scratch_store_b32 off, v34, off offset:28 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v45
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s8, s0, -16
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v214, s17, v47
	s_sub_i32 s3, s3, s8
	v_mov_b32_e32 v139, v25
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s20, s3, 0x10007
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v69, 32, v56
	v_or3_b32 v208, v37, v48, v50
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v211, s16, v47
	v_xor_b32_e32 v47, 0x70, v207
	scratch_store_b32 off, v34, off offset:32 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v46
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s1, s3, s20
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v49, s19, v69
	s_bfe_i32 s1, s1, 0x80000
	v_mov_b32_e32 v141, v25
	v_xor_b32_e32 v48, 4, v208
	scratch_store_b32 off, v34, off offset:36 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v47
	s_sext_i32_i16 s1, s1
	v_dual_mov_b32 v6, v25 :: v_dual_add_nc_u32 v215, s17, v49
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s1, s1, 10
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v70, 48, v56
	.loc	1 821 32                        ; attention.py:821:32
	s_and_b32 s102, s1, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s1, s12, 0x3fb8aa3b
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v212, s16, v49
	v_xor_b32_e32 v49, 8, v208
	scratch_store_b32 off, v34, off offset:40 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v48
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v51, s19, v70
	v_xor_b32_e32 v50, 12, v208
	v_mov_b32_e32 v21, v25
	scratch_store_b32 off, v34, off offset:44 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v49
	v_subrev_nc_u32_e32 v213, s16, v51
	.loc	1 867 47                        ; attention.py:867:47
	v_add_nc_u32_e32 v216, s17, v51
	v_xor_b32_e32 v51, 16, v208
	v_xor_b32_e32 v52, 20, v208
	scratch_store_b32 off, v34, off offset:48 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v50
	v_xor_b32_e32 v37, 8, v203
	v_dual_mov_b32 v8, v25 :: v_dual_and_b32 v35, 0x540054, v35
	v_dual_mov_b32 v23, v25 :: v_dual_and_b32 v36, 0x760076, v36
	scratch_store_b32 off, v34, off offset:52 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v51
	v_dual_mov_b32 v138, v25 :: v_dual_add_nc_u32 v217, 0, v37
	v_xor_b32_e32 v37, 0x2040, v206
	v_lshl_or_b32 v44, v35, 4, v35
	scratch_store_b32 off, v34, off offset:56 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v34, 0, v52
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v71, s19, v56
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v0, 1, v142
	v_or_b32_e32 v73, 2, v142
	scratch_store_b32 off, v34, off offset:60 ; 4-byte Folded Spill
	v_mad_u64_u32 v[34:35], null, s15, 48, v[33:34]
	v_or_b32_e32 v74, 3, v142
	v_or_b32_e32 v75, 4, v142
	v_or_b32_e32 v76, 5, v142
	v_or_b32_e32 v77, 6, v142
	v_or_b32_e32 v78, 7, v142
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v56
	v_xor_b32_e32 v53, 24, v208
	v_xor_b32_e32 v54, 28, v208
	v_xor_b32_e32 v55, 32, v209
	v_xor_b32_e32 v56, 64, v209
	v_xor_b32_e32 v57, 0x60, v209
	v_lshl_or_b32 v36, v36, 4, v36
	v_dual_mov_b32 v156, 0xff800000 :: v_dual_add_nc_u32 v225, 0, v37
	v_lshl_add_u32 v35, s15, 4, v33
	v_lshl_add_u32 v37, s15, 5, v33
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v243, v33, v142
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s9, s0, 4
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s3, s14, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s8, s9, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s9, s13, s9
	v_lshl_add_u32 v190, v72, 1, 0
	v_dual_mov_b32 v2, v25 :: v_dual_add_nc_u32 v205, s17, v71
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s96, v142
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v152, s16, v71
	v_add_nc_u32_e32 v238, 0, v53
	v_add_nc_u32_e32 v239, 0, v54
	v_add_nc_u32_e32 v240, 0, v55
	v_add_nc_u32_e32 v241, 0, v56
	v_add_nc_u32_e32 v242, 0, v57
	v_and_b32_e32 v244, 0x5040504, v44
	v_and_b32_e32 v245, 0x7060706, v36
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v246, v35, v142
	v_add_nc_u32_e32 v247, v35, v0
	v_add_nc_u32_e32 v248, v35, v73
	v_add_nc_u32_e32 v249, v35, v74
	v_add_nc_u32_e32 v250, v35, v75
	v_add_nc_u32_e32 v251, v35, v76
	v_add_nc_u32_e32 v252, v35, v77
	v_add_nc_u32_e32 v253, v35, v78
	v_add_nc_u32_e32 v254, v37, v142
	v_add_nc_u32_e32 v255, v37, v0
	v_add_nc_u32_e32 v188, v37, v73
	v_add_nc_u32_e32 v185, v37, v74
	v_add_nc_u32_e32 v187, v37, v75
	v_add_nc_u32_e32 v186, v37, v76
	v_add_nc_u32_e32 v189, v37, v77
	v_add_nc_u32_e32 v196, v37, v78
	v_add_nc_u32_e32 v197, v34, v142
	v_add_nc_u32_e32 v198, v34, v0
	v_add_nc_u32_e32 v199, v34, v73
	v_add_nc_u32_e32 v200, v34, v74
	v_add_nc_u32_e32 v201, v34, v75
	v_add_nc_u32_e32 v202, v34, v76
	v_add_nc_u32_e32 v153, v34, v77
	v_add_nc_u32_e32 v154, v34, v78
	s_mov_b32 s68, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s12, s15, s18
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_add_i32 s103, s3, s9
	s_lshl_b32 s98, s96, 4
	s_lshl_b32 s99, s96, 5
	s_mul_i32 s100, s96, 48
	s_mov_b32 s101, 0x76543210
	s_mov_b32 s69, s68
	s_mov_b32 s70, s68
	s_mov_b32 s71, s68
	s_mov_b32 s72, s68
	s_mov_b32 s73, s68
	s_mov_b32 s74, s68
	s_mov_b32 s75, s68
	s_mov_b32 s90, s82
	s_mov_b32 s91, s83
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	s_mov_b32 s94, s82
	s_mov_b32 s95, s83
	s_and_b32 s85, s85, 0xffff
	s_and_b32 s93, s7, 0xffff
	s_mov_b32 s88, s10
	s_mov_b32 s92, s6
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s102, s102, s8
	s_mov_b32 s80, s4
	s_mov_b32 s81, s5
	s_mov_b32 s89, s11
	s_add_i32 s103, s103, s12
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v33, 16, v42
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v155, s1, v33
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s104, s79, s102
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v37, 0, v195
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[33:34], null, s104, s78, v[236:237]
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 vcc_hi, s103, s79
	v_or_b32_e32 v102, s102, v232
	v_or_b32_e32 v103, s102, v231
	v_or_b32_e32 v104, s102, v230
	v_or_b32_e32 v105, s102, v229
	v_or_b32_e32 v106, s102, v228
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v33, 0x80000000, v33, s67
	v_or_b32_e32 v107, s102, v227
	v_or_b32_e32 v108, s102, v226
	v_or_b32_e32 v110, s102, v210
	v_or_b32_e32 v111, s102, v151
	buffer_load_b128 v[33:36], v33, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:12 ; 4-byte Folded Reload
	v_or_b32_e32 v112, s102, v137
	v_or_b32_e32 v113, s102, v167
	v_or_b32_e32 v114, s102, v177
	v_or_b32_e32 v115, s102, v184
	v_or_b32_e32 v116, s102, v183
	v_or_b32_e32 v117, s102, v182
	v_or_b32_e32 v118, s102, v181
	v_or_b32_e32 v119, s102, v180
	v_or_b32_e32 v120, s102, v179
	v_or_b32_e32 v121, s102, v178
	v_or_b32_e32 v122, s102, v169
	v_or_b32_e32 v123, s102, v176
	v_or_b32_e32 v124, s102, v175
	v_or_b32_e32 v125, s102, v173
	v_or_b32_e32 v126, s102, v171
	v_or_b32_e32 v127, s102, v170
	v_or_b32_e32 v128, s102, v174
	v_or_b32_e32 v129, s102, v172
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v102, v102, s79, 1
	v_add_lshl_u32 v103, v103, s79, 1
	v_add_lshl_u32 v104, v104, s79, 1
	v_add_lshl_u32 v105, v105, s79, 1
	v_add_lshl_u32 v106, v106, s79, 1
	v_add_lshl_u32 v107, v107, s79, 1
	v_add_lshl_u32 v108, v108, s79, 1
	v_add_lshl_u32 v110, v110, s79, 1
	v_add_lshl_u32 v111, v111, s79, 1
	v_add_lshl_u32 v112, v112, s79, 1
	v_add_lshl_u32 v113, v113, s79, 1
	v_add_lshl_u32 v114, v114, s79, 1
	v_add_lshl_u32 v115, v115, s79, 1
	v_add_lshl_u32 v116, v116, s79, 1
	v_add_lshl_u32 v117, v117, s79, 1
	v_add_lshl_u32 v118, v118, s79, 1
	v_add_lshl_u32 v119, v119, s79, 1
	v_add_lshl_u32 v120, v120, s79, 1
	v_add_lshl_u32 v121, v121, s79, 1
	v_add_lshl_u32 v122, v122, s79, 1
	v_add_lshl_u32 v123, v123, s79, 1
	v_add_lshl_u32 v124, v124, s79, 1
	v_add_lshl_u32 v125, v125, s79, 1
	v_add_lshl_u32 v126, v126, s79, 1
	v_add_lshl_u32 v127, v127, s79, 1
	v_add_lshl_u32 v128, v128, s79, 1
	v_add_lshl_u32 v129, v129, s79, 1
	.loc	1 880 35                        ; attention.py:880:35
	v_add_nc_u32_e32 v130, 0, v206
	.loc	1 881 25                        ; attention.py:881:25
                                        ; kill: def $vgpr236 killed $vgpr236 def $vgpr237
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(1)
	ds_store_b64 v37, v[33:34]
	v_add_nc_u32_e32 v33, 0, v203
	s_waitcnt vmcnt(0)
	ds_store_b64 v0, v[35:36]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[50:53], v33 offset1:1
	ds_load_2addr_stride64_b64 v[80:83], v33 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[54:57], v217 offset1:1
	ds_load_2addr_stride64_b64 v[84:87], v217 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[58:61], v218 offset1:1
	ds_load_2addr_stride64_b64 v[88:91], v218 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v33, s68 :: v_dual_mov_b32 v38, s73
	v_dual_mov_b32 v34, s69 :: v_dual_mov_b32 v35, s70
	v_mov_b32_e32 v40, s75
	v_dual_mov_b32 v36, s71 :: v_dual_mov_b32 v37, s72
	v_mov_b32_e32 v39, s74
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[72:75], v219 offset1:1
	ds_load_2addr_stride64_b64 v[92:95], v219 offset0:2 offset1:3
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v0, 1, v142
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x6
	buffer_load_u16 v106, v106, s[88:91], 0 offen
	buffer_load_u16 v107, v107, s[88:91], 0 offen
	buffer_load_u16 v108, v108, s[88:91], 0 offen
	buffer_load_u16 v110, v110, s[88:91], 0 offen
	buffer_load_u16 v111, v111, s[88:91], 0 offen
	buffer_load_u16 v112, v112, s[88:91], 0 offen
	buffer_load_u16 v113, v113, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[50:51], v[149:150], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v114, v114, s[88:91], 0 offen
	buffer_load_u16 v115, v115, s[88:91], 0 offen
	buffer_load_u16 v116, v116, s[88:91], 0 offen
	buffer_load_u16 v117, v117, s[88:91], 0 offen
	buffer_load_u16 v118, v118, s[88:91], 0 offen
	buffer_load_u16 v119, v119, s[88:91], 0 offen
	buffer_load_u16 v120, v120, s[88:91], 0 offen
	buffer_load_u16 v121, v121, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[54:55], v[147:148], v[42:49] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v122, v122, s[88:91], 0 offen
	buffer_load_u16 v123, v123, s[88:91], 0 offen
	buffer_load_u16 v124, v124, s[88:91], 0 offen
	buffer_load_u16 v125, v125, s[88:91], 0 offen
	buffer_load_u16 v126, v126, s[88:91], 0 offen
	buffer_load_u16 v127, v127, s[88:91], 0 offen
	buffer_load_u16 v128, v128, s[88:91], 0 offen
	buffer_load_u16 v129, v129, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[58:59], v[145:146], v[42:49] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v102, v102, s[88:91], 0 offen
	buffer_load_u16 v103, v103, s[88:91], 0 offen
	buffer_load_u16 v104, v104, s[88:91], 0 offen
	buffer_load_u16 v105, v105, s[88:91], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[72:73], v[143:144], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v73, v42
	v_cvt_f32_i32_e32 v72, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v71, v44
	v_cvt_f32_i32_e32 v70, v45
	v_cvt_f32_i32_e32 v69, v46
	v_cvt_f32_i32_e32 v68, v47
	v_cvt_f32_i32_e32 v66, v48
	v_cvt_f32_i32_e32 v64, v49
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[52:53], v[149:150], v[33:40] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v69, v155, v69
	v_mul_f32_e32 v72, v155, v72
	v_mul_f32_e32 v70, v155, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[56:57], v[147:148], v[42:49] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v68, v155, v68
	v_mul_f32_e32 v66, v155, v66
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[60:61], v[145:146], v[42:49] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[74:75], v[143:144], v[42:49] neg_lo:[1,1,0]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v67, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v65, v43
	v_cvt_f32_i32_e32 v63, v44
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v62, v45
	v_cvt_f32_i32_e32 v61, v46
	v_cvt_f32_i32_e32 v60, v47
	v_cvt_f32_i32_e32 v58, v48
	v_cvt_f32_i32_e32 v56, v49
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[80:81], v[149:150], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[82:83], v[149:150], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[84:85], v[147:148], v[42:49] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v34, 2, v243
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[74:81], v[86:87], v[147:148], v[74:81] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v38, 7, v243
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s5, v33, v152
	v_cmp_ge_i32_e64 s7, v33, v211
	v_cmp_ge_i32_e64 s11, v33, v212
	v_cmp_ge_i32_e64 s3, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v33, v205
	v_cmp_le_i32_e64 s8, v33, v214
	v_cmp_le_i32_e64 s12, v33, v215
	v_cmp_le_i32_e64 s4, v33, v216
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 2, v142
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[42:49], v[88:89], v[145:146], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[90:91], v[145:146], v[74:81] neg_lo:[1,1,0]
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v37, 5, v243
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s19, v33, v152
	v_cmp_ge_i32_e64 s9, v33, v211
	v_cmp_ge_i32_e64 s16, v33, v212
	v_cmp_ge_i32_e64 s13, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v33, v205
	v_cmp_le_i32_e64 s14, v33, v214
	v_cmp_le_i32_e64 s17, v33, v215
	v_cmp_le_i32_e64 s15, v33, v216
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 3, v142
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v36, 3, v243
	v_add_nc_u32_e32 v35, 1, v243
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, s5, s6
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s21, v33, v152
	v_cmp_ge_i32_e64 s23, v33, v211
	v_cmp_ge_i32_e64 s27, v33, v212
	v_cmp_ge_i32_e64 s18, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v33, v205
	v_cmp_le_i32_e64 s25, v33, v214
	v_cmp_le_i32_e64 s28, v33, v215
	v_cmp_le_i32_e64 s24, v33, v216
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 4, v142
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v34, vcc_hi, v34, 2
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[42:49], v[92:93], v[143:144], v[42:49] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[74:81], v[94:95], v[143:144], v[74:81] neg_lo:[1,1,0]
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s61, v33, v152
	v_cmp_ge_i32_e64 s26, v33, v211
	v_cmp_ge_i32_e64 s33, v33, v212
	v_cmp_ge_i32_e64 s30, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s62, v33, v205
	v_cmp_le_i32_e64 s29, v33, v214
	v_cmp_le_i32_e64 s34, v33, v215
	v_cmp_le_i32_e64 s31, v33, v216
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 5, v142
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s21, s22
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v38, vcc_hi, v38, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s5, vcc_lo, s5
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v33, v152
	v_cmp_ge_i32_e64 s40, v33, v211
	v_cmp_ge_i32_e64 s37, v33, v212
	v_cmp_ge_i32_e64 s35, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s58, v33, v205
	v_cmp_le_i32_e64 s42, v33, v214
	v_cmp_le_i32_e64 s38, v33, v215
	v_cmp_le_i32_e64 s36, v33, v216
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 6, v142
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v37, vcc_hi, v37, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, vcc_lo, s6
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v36, vcc_hi, v36, 2
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s63, v33, v152
	v_cmp_ge_i32_e64 s51, v33, v211
	v_cmp_ge_i32_e64 s43, v33, v212
	v_cmp_ge_i32_e64 s39, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s64, v33, v205
	v_cmp_le_i32_e64 s52, v33, v214
	v_cmp_le_i32_e64 s44, v33, v215
	v_cmp_le_i32_e64 s41, v33, v216
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_or_b32_e32 v0, 7, v142
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, s63, s64
	s_and_b32 s19, s19, s20
	s_and_b32 s20, s61, s62
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s10, v33, v152
	v_cmp_ge_i32_e64 s49, v33, v211
	v_cmp_ge_i32_e64 s47, v33, v212
	v_cmp_ge_i32_e64 s45, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s53, v33, v205
	v_cmp_le_i32_e64 s50, v33, v214
	v_cmp_le_i32_e64 s48, v33, v215
	v_cmp_le_i32_e64 s46, v33, v216
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v33, s79, v0
	v_mov_b32_e32 v0, v109
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v35, vcc_hi, v35, 2
	v_cndmask_b32_e64 v34, 0x80000000, v34, s6
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s21, vcc_lo, s21
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s65, v33, v152
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s66, v33, v205
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s59, v33, v211
	v_cmp_ge_i32_e64 s56, v33, v212
	v_cmp_ge_i32_e64 s54, v33, v213
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s60, v33, v214
	v_cmp_le_i32_e64 s57, v33, v215
	v_cmp_le_i32_e64 s55, v33, v216
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v33, vcc_hi, v243, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, s65, s66
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v54, v45
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s22, vcc_lo, s22
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v78
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0x80000000, v33, s5
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s20, vcc_lo, s20
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s22
	v_add_lshl_u32 v78, vcc_hi, v251, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s19, vcc_lo, s19
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v37, 0x80000000, v37, s21
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s7, s7, s8
	s_and_b32 s8, s9, s14
	s_and_b32 s9, s23, s25
	s_and_b32 s23, s51, s52
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v36, 0x80000000, v36, s20
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v53, v46
	v_cvt_f32_i32_e32 v52, v47
	v_cvt_f32_i32_e32 v50, v48
	v_cvt_f32_i32_e32 v48, v49
	v_cvt_f32_i32_e32 v51, v74
	v_cvt_f32_i32_e32 v49, v75
	v_cvt_f32_i32_e32 v47, v76
	v_cvt_f32_i32_e32 v46, v77
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s19
	s_clause 0x5
	buffer_load_b32 v33, v33, s[84:87], 0 offen
	buffer_load_b32 v34, v34, s[84:87], 0 offen
	buffer_load_b32 v74, v38, s[84:87], 0 offen
	buffer_load_b32 v75, v37, s[84:87], 0 offen
	buffer_load_b32 v76, v36, s[84:87], 0 offen
	buffer_load_b32 v77, v35, s[84:87], 0 offen
	v_add_lshl_u32 v37, vcc_hi, v246, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s23, vcc_lo, s23
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v39, vcc_hi, v248, 2
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v44
	v_cvt_f32_i32_e32 v44, v79
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v79, 0x80000000, v78, s23
	v_add_lshl_u32 v78, vcc_hi, v253, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s14, s26, s29
	s_and_b32 s29, s59, s60
	s_and_b32 s7, vcc_lo, s7
	s_and_b32 s25, vcc_lo, s8
	s_and_b32 s8, vcc_lo, s9
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, vcc_hi, v249, 2
	v_cndmask_b32_e64 v37, 0x80000000, v37, s7
	v_add_lshl_u32 v38, vcc_hi, v247, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s29, vcc_lo, s29
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s8
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s26, vcc_lo, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v78, 0x80000000, v78, s29
	v_cndmask_b32_e64 v40, 0x80000000, v40, s26
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v59, v42
	v_cvt_f32_i32_e32 v57, v43
	v_cvt_f32_i32_e32 v43, v80
	v_cvt_f32_i32_e32 v42, v81
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s25
	s_clause 0x5
	buffer_load_b32 v37, v37, s[84:87], 0 offen
	buffer_load_b32 v39, v39, s[84:87], 0 offen
	buffer_load_b32 v78, v78, s[84:87], 0 offen
	buffer_load_b32 v79, v79, s[84:87], 0 offen
	buffer_load_b32 v80, v40, s[84:87], 0 offen
	buffer_load_b32 v81, v38, s[84:87], 0 offen
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v35, 4, v243
	v_add_nc_u32_e32 v36, 6, v243
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s58
	s_and_b32 s10, s10, s53
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v40, vcc_hi, v252, 2
	v_add_lshl_u32 v35, vcc_hi, v35, 2
	v_add_lshl_u32 v36, vcc_hi, v36, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s9, s40, s42
	s_and_b32 s14, s49, s50
	s_and_b32 s1, vcc_lo, s1
	s_and_b32 s10, vcc_lo, s10
	s_and_b32 s9, vcc_lo, s9
	s_and_b32 s14, vcc_lo, s14
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v35, 0x80000000, v35, s1
	v_cndmask_b32_e64 v36, 0x80000000, v36, s10
	v_cndmask_b32_e64 v40, 0x80000000, v40, s14
	v_add_lshl_u32 v91, vcc_hi, v198, 2
	v_add_lshl_u32 v92, vcc_hi, v200, 2
	s_clause 0x2
	buffer_load_b32 v35, v35, s[84:87], 0 offen
	buffer_load_b32 v36, v36, s[84:87], 0 offen
	buffer_load_b32 v40, v40, s[84:87], 0 offen
	v_add_lshl_u32 v93, vcc_hi, v202, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s11, s11, s12
	s_and_b32 s12, s16, s17
	s_and_b32 s16, s27, s28
	s_and_b32 s27, s37, s38
	s_and_b32 s38, s56, s57
	s_and_b32 s3, s3, s4
	s_and_b32 s4, s13, s15
	s_and_b32 s15, s18, s24
	s_and_b32 s18, s30, s31
	s_and_b32 s31, s35, s36
	s_and_b32 s35, s39, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v82, vcc_hi, v254, 2
	v_add_lshl_u32 v84, vcc_hi, v188, 2
	v_add_lshl_u32 v86, vcc_hi, v187, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s42, vcc_lo, s38
	s_and_b32 s36, vcc_lo, s4
	s_and_b32 s38, vcc_lo, s18
	s_and_b32 s39, vcc_lo, s35
	s_and_b32 s11, vcc_lo, s11
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v88, vcc_hi, v189, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s33, s34
	s_and_b32 s33, s43, s44
	s_and_b32 s34, s47, s48
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v83, vcc_hi, v255, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s13, vcc_lo, s16
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v85, vcc_hi, v185, 2
	v_add_lshl_u32 v87, vcc_hi, v186, 2
	v_add_lshl_u32 v89, vcc_hi, v196, 2
	v_add_lshl_u32 v90, vcc_hi, v197, 2
	v_cndmask_b32_e64 v98, 0x80000000, v91, s36
	v_add_lshl_u32 v91, vcc_hi, v199, 2
	v_cndmask_b32_e64 v99, 0x80000000, v92, s38
	v_add_lshl_u32 v92, vcc_hi, v201, 2
	v_cndmask_b32_e64 v100, 0x80000000, v93, s39
	v_add_lshl_u32 v93, vcc_hi, v153, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, s45, s46
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v82, 0x80000000, v82, s11
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s28, vcc_lo, s27
	.loc	1 879 36                        ; attention.py:879:36
	v_add_lshl_u32 v94, vcc_hi, v154, 2
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s43, s54, s55
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v84, 0x80000000, v84, s13
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, vcc_lo, s33
	s_and_b32 s33, vcc_lo, s34
	s_and_b32 s30, vcc_lo, s12
	s_and_b32 s37, vcc_lo, s17
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v86, 0x80000000, v86, s28
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, vcc_lo, s3
	s_and_b32 s24, vcc_lo, s15
	s_and_b32 s27, vcc_lo, s31
	s_and_b32 s31, vcc_lo, s41
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v88, 0x80000000, v88, s33
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s41, vcc_lo, s43
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v83, 0x80000000, v83, s30
	v_cndmask_b32_e64 v85, 0x80000000, v85, s37
	v_cndmask_b32_e64 v87, 0x80000000, v87, s40
	v_cndmask_b32_e64 v89, 0x80000000, v89, s42
	v_cndmask_b32_e64 v90, 0x80000000, v90, s12
	v_cndmask_b32_e64 v91, 0x80000000, v91, s24
	v_cndmask_b32_e64 v92, 0x80000000, v92, s27
	v_cndmask_b32_e64 v93, 0x80000000, v93, s31
	v_cndmask_b32_e64 v101, 0x80000000, v94, s41
	s_clause 0xf
	buffer_load_b32 v94, v82, s[84:87], 0 offen
	buffer_load_b32 v95, v84, s[84:87], 0 offen
	buffer_load_b32 v96, v86, s[84:87], 0 offen
	buffer_load_b32 v97, v88, s[84:87], 0 offen
	buffer_load_b32 v90, v90, s[84:87], 0 offen
	buffer_load_b32 v91, v91, s[84:87], 0 offen
	buffer_load_b32 v92, v92, s[84:87], 0 offen
	buffer_load_b32 v93, v93, s[84:87], 0 offen
	buffer_load_b32 v86, v89, s[84:87], 0 offen
	buffer_load_b32 v87, v87, s[84:87], 0 offen
	buffer_load_b32 v88, v85, s[84:87], 0 offen
	buffer_load_b32 v89, v83, s[84:87], 0 offen
	buffer_load_b32 v82, v101, s[84:87], 0 offen
	buffer_load_b32 v83, v100, s[84:87], 0 offen
	buffer_load_b32 v84, v99, s[84:87], 0 offen
	buffer_load_b32 v85, v98, s[84:87], 0 offen
	v_or_b32_e32 v98, s102, v168
	v_or_b32_e32 v99, s102, v235
	v_or_b32_e32 v100, s102, v234
	v_or_b32_e32 v101, s102, v233
	v_or_b32_e32 v109, s102, v0
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v98, v98, s79, 1
	v_add_lshl_u32 v99, v99, s79, 1
	v_add_lshl_u32 v100, v100, s79, 1
	v_add_lshl_u32 v101, v101, s79, 1
	v_add_lshl_u32 v109, v109, s79, 1
	s_clause 0x4
	buffer_load_u16 v98, v98, s[88:91], 0 offen
	buffer_load_u16 v99, v99, s[88:91], 0 offen
	buffer_load_u16 v100, v100, s[88:91], 0 offen
	buffer_load_u16 v101, v101, s[88:91], 0 offen
	buffer_load_u16 v109, v109, s[88:91], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v73, v155, v73
	v_mul_f32_e32 v71, v155, v71
	v_mul_f32_e32 v64, v155, v64
	v_mul_f32_e32 v61, v155, v61
	v_mul_f32_e32 v58, v155, v58
	v_mul_f32_e32 v55, v155, v55
	v_mul_f32_e32 v60, v155, v60
	v_mul_f32_e32 v50, v155, v50
	v_mul_f32_e32 v48, v155, v48
	v_mul_f32_e32 v46, v155, v46
	v_mul_f32_e32 v54, v155, v54
	v_mul_f32_e32 v52, v155, v52
	v_mul_f32_e32 v42, v155, v42
	v_mul_f32_e32 v44, v155, v44
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s79, s79, 64
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v63, v155, v63
	v_mul_f32_e32 v53, v155, v53
	v_mul_f32_e32 v47, v155, v47
	v_mul_f32_e32 v43, v155, v43
	v_mul_f32_e32 v45, v155, v45
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(35)
	v_cndmask_b32_e64 v33, 0xff800000, v33, s5
	s_waitcnt vmcnt(34)
	v_cndmask_b32_e64 v34, 0xff800000, v34, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s16, 0xff800000, v33
	v_cmp_neq_f32_e64 s17, 0xff800000, v34
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s17, s6, s17
	.loc	1 879 36 is_stmt 1              ; attention.py:879:36
	s_waitcnt vmcnt(29)
	v_cndmask_b32_e64 v37, 0xff800000, v37, s7
	s_waitcnt vmcnt(28)
	v_cndmask_b32_e64 v38, 0xff800000, v39, s8
	v_add_lshl_u32 v39, vcc_hi, v250, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s15, 0xff800000, v37
	v_cmp_neq_f32_e64 s56, 0xff800000, v38
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v39, 0x80000000, v39, s9
	buffer_load_b32 v39, v39, s[84:87], 0 offen
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(24)
	v_cndmask_b32_e64 v35, 0xff800000, v35, s1
	s_waitcnt vmcnt(23)
	v_cndmask_b32_e64 v36, 0xff800000, v36, s10
	s_waitcnt vmcnt(22)
	v_cndmask_b32_e64 v40, 0xff800000, v40, s14
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s4, 0xff800000, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_neq_f32_e64 s18, 0xff800000, v36
	v_cmp_neq_f32_e64 s60, 0xff800000, v40
	.loc	1 881 25 is_stmt 0              ; attention.py:881:25
	s_and_b32 s4, s1, s4
	s_and_b32 s1, s10, s18
	s_and_b32 s18, s5, s16
	s_and_b32 s16, s7, s15
	s_and_b32 s15, s8, s56
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v98, 16, v98
	.loc	1 879 36                        ; attention.py:879:36
	s_waitcnt vmcnt(0)
	v_cndmask_b32_e64 v39, 0xff800000, v39, s9
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v130, v[33:36]
	ds_store_b128 v130, v[37:40] offset:512
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v77, s19
	v_cndmask_b32_e64 v34, 0xff800000, v76, s20
	v_cndmask_b32_e64 v35, 0xff800000, v75, s21
	v_cndmask_b32_e64 v36, 0xff800000, v74, s22
	v_cndmask_b32_e64 v37, 0xff800000, v81, s25
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s59, 0xff800000, v39
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0xff800000, v80, s26
	v_cndmask_b32_e64 v39, 0xff800000, v79, s23
	v_cndmask_b32_e64 v40, 0xff800000, v78, s29
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s34, 0xff800000, v33
	v_cmp_neq_f32_e64 s48, 0xff800000, v34
	v_cmp_neq_f32_e64 s35, 0xff800000, v35
	v_cmp_neq_f32_e64 s53, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v225, v[33:36]
	ds_store_b128 v225, v[37:40] offset:512
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s3, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v94, s11
	v_cndmask_b32_e64 v34, 0xff800000, v95, s13
	v_cndmask_b32_e64 v35, 0xff800000, v96, s28
	v_cndmask_b32_e64 v36, 0xff800000, v97, s33
	v_cndmask_b32_e64 v37, 0xff800000, v90, s12
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s43, 0xff800000, v38
	v_cmp_neq_f32_e64 s46, 0xff800000, v39
	v_cmp_neq_f32_e64 s47, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0xff800000, v91, s24
	v_cndmask_b32_e64 v39, 0xff800000, v92, s27
	v_cndmask_b32_e64 v40, 0xff800000, v93, s31
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s61, 0xff800000, v33
	v_cmp_neq_f32_e64 s62, 0xff800000, v34
	v_cmp_neq_f32_e64 s65, 0xff800000, v35
	v_cmp_neq_f32_e64 s66, 0xff800000, v36
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v130, v[33:36] offset:1024
	ds_store_b128 v130, v[37:40] offset:1536
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s57, 0xff800000, v37
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v33, 0xff800000, v89, s30
	v_cndmask_b32_e64 v34, 0xff800000, v88, s37
	v_cndmask_b32_e64 v35, 0xff800000, v87, s40
	v_cndmask_b32_e64 v36, 0xff800000, v86, s42
	v_cndmask_b32_e64 v37, 0xff800000, v85, s36
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s58, 0xff800000, v38
	v_cmp_neq_f32_e64 s63, 0xff800000, v39
	v_cmp_neq_f32_e64 s64, 0xff800000, v40
	.loc	1 879 36                        ; attention.py:879:36
	v_cndmask_b32_e64 v38, 0xff800000, v84, s38
	v_cndmask_b32_e64 v39, 0xff800000, v83, s39
	v_cndmask_b32_e64 v40, 0xff800000, v82, s41
	.loc	1 880 35                        ; attention.py:880:35
	ds_store_b128 v225, v[33:36] offset:1024
	ds_store_b128 v225, v[37:40] offset:1536
	.loc	1 881 34                        ; attention.py:881:34
	v_cmp_neq_f32_e64 s44, 0xff800000, v37
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v37, off, off offset:16
	scratch_load_b32 v74, off, off offset:20
	scratch_load_b32 v78, off, off offset:24
	scratch_load_b32 v83, off, off offset:32
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s10, s9, s59
	s_and_b32 s9, s14, s60
	s_and_b32 s7, s33, s66
	s_and_b32 s8, s28, s65
	s_and_b32 s13, s13, s62
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s51, 0xff800000, v33
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	v_add_nc_u32_e32 v33, 0, v207
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s14, s11, s61
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s52, 0xff800000, v34
	v_cmp_neq_f32_e64 s54, 0xff800000, v35
	v_cmp_neq_f32_e64 s55, 0xff800000, v36
	.loc	1 880 35 is_stmt 1              ; attention.py:880:35
	ds_load_b128 v[33:36], v33
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s5, s31, s64
	s_and_b32 s6, s27, s63
	s_and_b32 s11, s24, s58
	.loc	1 881 34 is_stmt 0              ; attention.py:881:34
	v_cmp_neq_f32_e64 s45, 0xff800000, v38
	v_cmp_neq_f32_e64 s49, 0xff800000, v39
	v_cmp_neq_f32_e64 s50, 0xff800000, v40
	.loc	1 881 25                        ; attention.py:881:25
	s_and_b32 s12, s12, s57
	s_and_b32 s27, s22, s53
	s_and_b32 s28, s21, s35
	s_and_b32 s35, s19, s34
	s_and_b32 s34, s20, s48
	s_and_b32 s24, s23, s46
	s_and_b32 s23, s29, s47
	s_and_b32 s31, s26, s43
	s_and_b32 s33, s25, s3
	s_and_b32 s21, s42, s55
	s_and_b32 s22, s40, s54
	s_and_b32 s29, s37, s52
	s_and_b32 s30, s30, s51
	s_and_b32 s19, s41, s50
	s_and_b32 s20, s39, s49
	s_and_b32 s25, s38, s45
	s_and_b32 s26, s36, s44
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cmp_lt_i32 s79, s97
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(3)
	ds_load_b128 v[37:40], v37
	s_waitcnt vmcnt(2)
	ds_load_b128 v[74:77], v74
	s_waitcnt vmcnt(1)
	ds_load_b128 v[78:81], v78
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v83
	s_waitcnt lgkmcnt(4)
	v_dual_mul_f32 v33, 0x3fb8aa3b, v33 :: v_dual_mul_f32 v34, 0x3fb8aa3b, v34
	v_dual_mul_f32 v35, 0x3fb8aa3b, v35 :: v_dual_mul_f32 v36, 0x3fb8aa3b, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v33, v73, v98
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v73, 16, v99
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v34, v72, v73
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v37, 0x3fb8aa3b, v37 :: v_dual_lshlrev_b32 v72, 16, v100
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v89, 0x3fb8aa3b, v74 :: v_dual_mul_f32 v74, 0x3fb8aa3b, v75
	v_dual_mul_f32 v91, 0x3fb8aa3b, v76 :: v_dual_mul_f32 v86, 0x3fb8aa3b, v77
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v75, 0x3fb8aa3b, v78 :: v_dual_mul_f32 v76, 0x3fb8aa3b, v79
	scratch_load_b32 v79, off, off offset:28 ; 4-byte Folded Reload
	v_dual_mul_f32 v77, 0x3fb8aa3b, v80 :: v_dual_mul_f32 v78, 0x3fb8aa3b, v81
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v84, 0x3fb8aa3b, v130 :: v_dual_mul_f32 v87, 0x3fb8aa3b, v132
	v_mul_f32_e32 v83, 0x3fb8aa3b, v133
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v35, v71, v72
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v38, 0x3fb8aa3b, v38 :: v_dual_lshlrev_b32 v71, 16, v101
	v_dual_mul_f32 v39, 0x3fb8aa3b, v39 :: v_dual_mul_f32 v40, 0x3fb8aa3b, v40
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v62, v155, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v36, v70, v71
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v70, 16, v102
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v56, v155, v56 :: v_dual_fmac_f32 v37, v69, v70
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v69, 16, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v38, v68, v69
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v68, 16, v104
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v39, v66, v68 :: v_dual_lshlrev_b32 v66, 16, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v40, v64, v66
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v64, v155, v67
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v66, 16, v106
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v89, v64, v66 :: v_dual_mul_f32 v64, v155, v65
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v65, 16, v107
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v74, v64, v65
	.loc	1 880 35 is_stmt 0              ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_b128 v[79:82], v79
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v95, 0x3fb8aa3b, v81 :: v_dual_mul_f32 v90, 0x3fb8aa3b, v82
	scratch_load_b32 v81, off, off offset:36 ; 4-byte Folded Reload
	v_dual_mul_f32 v92, 0x3fb8aa3b, v79 :: v_dual_mul_f32 v79, 0x3fb8aa3b, v80
	v_mul_f32_e32 v80, 0x3fb8aa3b, v131
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_lshlrev_b32_e32 v64, 16, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v91, v63, v64
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v63, 16, v109
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v86, v62, v63
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v62, 16, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v75, v61, v62
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v61, 16, v111
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v76, v60, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v60, 16, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v77, v58, v60 :: v_dual_lshlrev_b32 v58, 16, v113
	v_fmac_f32_e32 v78, v56, v58
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v58, 16, v114
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_b128 v[130:133], v81
	scratch_load_b32 v81, off, off offset:40 ; 4-byte Folded Reload
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v96, 0x3fb8aa3b, v130
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v130, 0, 1, s1
	s_delay_alu instid0(VALU_DEP_1)
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 880 35                        ; attention.py:880:35
	s_waitcnt vmcnt(0)
	ds_load_b128 v[157:160], v81
	v_mul_f32_e32 v81, 0x3fb8aa3b, v131
	.loc	1 881 25                        ; attention.py:881:25
	v_cndmask_b32_e64 v131, 0, 1, s4
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v97, 0x3fb8aa3b, v132
	v_dual_mul_f32 v93, 0x3fb8aa3b, v133 :: v_dual_mul_f32 v56, v155, v59
	.loc	1 881 25                        ; attention.py:881:25
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_or_b16 v132.h, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s17
	v_cndmask_b32_e64 v131, 0, 1, s18
	s_barrier
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_1)
	v_or_b16 v132.l, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s9
	v_cndmask_b32_e64 v131, 0, 1, s10
	.loc	1 880 35                        ; attention.py:880:35
	v_mul_f32_e32 v88, 0x3fb8aa3b, v157
	v_mul_f32_e32 v82, 0x3fb8aa3b, v158
	.loc	1 880 25 is_stmt 0              ; attention.py:880:25
	v_fmac_f32_e32 v92, v56, v58
	.loc	1 881 25 is_stmt 1              ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v56, v155, v57 :: v_dual_lshlrev_b32 v57, 16, v115
	.loc	1 880 35                        ; attention.py:880:35
	v_dual_mul_f32 v94, 0x3fb8aa3b, v159 :: v_dual_mul_f32 v85, 0x3fb8aa3b, v160
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v133.h, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s15
	v_cndmask_b32_e64 v131, 0, 1, s16
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v79, v56, v57 :: v_dual_lshlrev_b32 v56, 16, v116
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.h, 0
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v95, v55, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v55, 16, v117
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v133.l, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s7
	v_cndmask_b32_e64 v131, 0, 1, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v90, v54, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v54, 16, v118
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v84, v53, v54
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v134.h, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s13
	v_cndmask_b32_e64 v131, 0, 1, s14
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v53, 16, v119
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v80, v52, v53
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v52, 16, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v134.l, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s5
	v_cndmask_b32_e64 v131, 0, 1, s6
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v87, v50, v52 :: v_dual_lshlrev_b32 v50, 16, v121
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v83, v48, v50 :: v_dual_mul_f32 v48, v155, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v130.h, v131.l, v130.l
	v_cndmask_b32_e64 v131, 0, 1, s11
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v50, 16, v122
	.loc	1 881 25                        ; attention.py:881:25
	v_mov_b16_e64 v130.l, v131.l
	v_cndmask_b32_e64 v131, 0, 1, s12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v96, v48, v50
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v155, v49 :: v_dual_lshlrev_b32 v49, 16, v123
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v81, v48, v49
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v130.l, v131.l, v130.l
	v_add_nc_u32_e32 v131, 0, v204
	ds_store_2addr_b32 v131, v132, v133 offset1:32
	ds_store_2addr_b32 v131, v134, v130 offset0:64 offset1:96
	v_cndmask_b32_e64 v130, 0, 1, s27
	v_cndmask_b32_e64 v131, 0, 1, s28
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v48, 16, v124
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v97, v47, v48
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v47, 16, v125
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v132.h, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s34
	v_cndmask_b32_e64 v131, 0, 1, s35
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v93, v46, v47 :: v_dual_lshlrev_b32 v46, 16, v126
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 880 25                        ; attention.py:880:25
	v_dual_fmac_f32 v88, v45, v46 :: v_dual_lshlrev_b32 v45, 16, v127
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v132.l, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s23
	v_cndmask_b32_e64 v131, 0, 1, s24
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v82, v44, v45
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v44, 16, v128
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v94, v43, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v133.h, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s31
	v_cndmask_b32_e64 v131, 0, 1, s33
	.loc	1 838 37                        ; attention.py:838:37
	v_lshlrev_b32_e32 v43, 16, v129
	.loc	1 881 25                        ; attention.py:881:25
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 880 25                        ; attention.py:880:25
	v_fmac_f32_e32 v85, v42, v43
	scratch_load_b64 v[42:43], off, off offset:4 ; 8-byte Folded Reload
	.loc	1 881 25                        ; attention.py:881:25
	v_or_b16 v133.l, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s21
	v_cndmask_b32_e64 v131, 0, 1, s22
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v134.h, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s29
	v_cndmask_b32_e64 v131, 0, 1, s30
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or_b16 v134.l, v131.l, v130.l
	v_cndmask_b32_e64 v130, 0, 1, s19
	v_cndmask_b32_e64 v131, 0, 1, s20
	v_lshlrev_b16 v130.l, 8, v130.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_or_b16 v130.h, v131.l, v130.l
	v_cndmask_b32_e64 v131, 0, 1, s25
	v_mov_b16_e64 v130.l, v131.l
	v_cndmask_b32_e64 v131, 0, 1, s26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshlrev_b16 v130.l, 8, v130.l
	v_or_b16 v130.l, v131.l, v130.l
	ds_store_2addr_b32 v220, v132, v133 offset1:32
	ds_store_2addr_b32 v220, v134, v130 offset0:64 offset1:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v47, off, off offset:44
	scratch_load_b32 v48, off, off offset:48
	scratch_load_b32 v49, off, off offset:52
	scratch_load_b32 v50, off, off offset:56
	scratch_load_b32 v51, off, off offset:60
	s_waitcnt vmcnt(0)
	ds_load_b32 v51, v51
	ds_load_b32 v52, v238
	ds_load_b32 v53, v239
	v_mad_u64_u32 v[45:46], null, s104, s96, v[42:43]
	v_add_nc_u32_e32 v46, 0, v208
	ds_load_b32 v47, v47
	ds_load_b32 v48, v48
	ds_load_b32 v49, v49
	ds_load_b32 v50, v50
	ds_load_b32 v46, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v42, 1, v45
	v_add_lshl_u32 v43, v45, s98, 1
	v_add_lshl_u32 v44, v45, s99, 1
	v_add_lshl_u32 v45, v45, s100, 1
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 882 26                        ; attention.py:882:26
	s_barrier
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v54, 0x10000, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_ne_u32_e64 s62, 0, v54
	v_and_b32_e32 v54, 0x10000, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v35, 0xff800000, v35, s62
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s60, 0, v54
	v_and_b32_e32 v54, 0x10000, v48
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v39, s60
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s54, 0, v54
	v_and_b32_e32 v54, 0x10000, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v68, 0xff800000, v91, s54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s52, 0, v54
	v_and_b32_e32 v54, 0x10000, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, 0xff800000, v77, s52
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s45, 0, v54
	v_and_b32_e32 v54, 0x10000, v51
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, 0xff800000, v95, s45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s44, 0, v54
	v_and_b32_e32 v54, 0x10000, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v87, s44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s37, 0, v54
	v_and_b32_e32 v54, 0x10000, v53
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v91, 0xff800000, v97, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s36, 0, v54
	v_and_b32_e32 v54, 1, v46
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v95, 0xff800000, v94, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s66, 1, v54
	v_and_b32_e32 v54, 0x1000000, v46
	v_lshrrev_b16 v46.l, 8, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v33, s66
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s64, 0, v54
	v_and_b16 v46.l, 1, v46.l
	v_and_b32_e32 v54, 1, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s64
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s3, 1, v46.l
	v_lshrrev_b16 v46.l, 8, v47.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_eq_u32_e64 s63, 1, v54
	v_and_b32_e32 v54, 0x1000000, v47
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, 0xff800000, v34, s3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v46.l, 1, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s61, 0, v54
	v_and_b32_e32 v54, 1, v48
	v_cmp_eq_u16_e64 s65, 1, v46.l
	v_lshrrev_b16 v46.l, 8, v48.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s61
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s57, 1, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v38, s65
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v46.l, 1, v46.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v66, 0xff800000, v89, s57
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u16_e64 s59, 1, v46.l
	v_lshrrev_b16 v46.l, 8, v49.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v67, 0xff800000, v74, s59
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v46.l, 1, v46.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s58, 1, v46.l
	v_lshrrev_b16 v46.l, 8, v50.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s58
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v46.l, 1, v46.l
	v_cmp_eq_u16_e64 s51, 1, v46.l
	v_lshrrev_b16 v46.l, 8, v51.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v79, s51
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v46.l, 1, v46.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s50, 1, v46.l
	v_lshrrev_b16 v46.l, 8, v52.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v80, s50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b16 v46.l, 1, v46.l
	v_cmp_eq_u16_e64 s43, 1, v46.l
	v_lshrrev_b16 v46.l, 8, v53.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b16 v46.l, 1, v46.l
	v_cmp_eq_u16_e64 s42, 1, v46.l
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v46, 0, v209
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v94, 0xff800000, v82, s42
	.loc	1 881 25                        ; attention.py:881:25
	v_and_b32_e32 v54, 0x1000000, v48
	v_cmp_ne_u32_e64 s56, 0, v54
	v_and_b32_e32 v54, 1, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v69, 0xff800000, v86, s56
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s55, 1, v54
	v_and_b32_e32 v54, 0x1000000, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v75, 0xff800000, v75, s55
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s53, 0, v54
	v_and_b32_e32 v54, 1, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, 0xff800000, v78, s53
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s49, 1, v54
	v_and_b32_e32 v54, 0x1000000, v50
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v50, 0x80000000, v44, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v129, 0xff800000, v92, s49
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s48, 0, v54
	v_and_b32_e32 v54, 1, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v90, s48
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s47, 1, v54
	v_and_b32_e32 v54, 0x1000000, v51
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_b128 v46, v[33:36]
	ds_store_b128 v46, v[129:132] offset:2048
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v46, 0x80000000, v43, s0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, 0xff800000, v84, s47
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s46, 0, v54
	v_and_b32_e32 v54, 1, v52
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v90, 0xff800000, v81, s43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v136, 0xff800000, v83, s46
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s41, 1, v54
	v_and_b32_e32 v54, 0x1000000, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v89, 0xff800000, v96, s41
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s40, 0, v54
	v_and_b32_e32 v54, 1, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v92, 0xff800000, v93, s40
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_eq_u32_e64 s39, 1, v54
	v_and_b32_e32 v54, 0x1000000, v53
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v93, 0xff800000, v88, s39
	.loc	1 881 25                        ; attention.py:881:25
	v_cmp_ne_u32_e64 s38, 0, v54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v54, 0x80000000, v45, s0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v96, 0xff800000, v85, s38
	ds_store_b128 v240, v[37:40]
	ds_store_b128 v240, v[133:136] offset:2048
	ds_store_b128 v241, v[66:69]
	ds_store_b128 v241, v[89:92] offset:2048
	ds_store_b128 v242, v[75:78]
	ds_store_b128 v242, v[93:96] offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[42:45], v42, s[92:95], 0 offen
	buffer_load_b128 v[46:49], v46, s[92:95], 0 offen
	buffer_load_b128 v[50:53], v50, s[92:95], 0 offen
	buffer_load_b128 v[54:57], v54, s[92:95], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_load_b128 v[125:128], v224
	ds_load_b128 v[117:120], v224 offset:256
	ds_load_b128 v[121:124], v224 offset:1024
	ds_load_b128 v[113:116], v224 offset:1280
	ds_load_b128 v[109:112], v224 offset:512
	ds_load_b128 v[101:104], v224 offset:768
	ds_load_b128 v[105:108], v224 offset:1536
	ds_load_b128 v[97:100], v224 offset:1792
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v58, off, off          ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v58, 0, v58
	ds_store_b128 v58, v[42:45]
	ds_store_b128 v58, v[46:49] offset:2048
	ds_store_b128 v58, v[50:53] offset:4096
	ds_store_b128 v58, v[54:57] offset:6144
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v67, v68, v69
	v_max3_f32 v43, v75, v76, v77
	v_max3_f32 v44, v78, v129, v130
	v_max3_f32 v45, v89, v90, v91
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v42, v42, v43, v44
	v_max3_f32 v43, v131, v132, v133
	v_max3_f32 v44, v134, v135, v136
	v_max3_f32 v43, v43, v44, v45
	v_max_f32_e32 v44, v33, v34
	v_max3_f32 v45, v36, v37, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v44, v44, v35, v45
	v_max3_f32 v45, v39, v40, v66
	v_max3_f32 v42, v44, v45, v42
	v_dual_max_f32 v44, v92, v93 :: v_dual_max_f32 v45, v95, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v44, v44, v94, v45
	v_max3_f32 v42, v42, v43, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v43, v42, s101, 0xfedcba98 op_sel:[1,0]
.Ltmp5:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v157, v41, v42, v43
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v34, v157
	v_sub_f32_e32 v33, v33, v157
	v_sub_f32_e32 v35, v35, v157
	v_sub_f32_e32 v36, v36, v157
	v_sub_f32_e32 v37, v37, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v38, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v39, v157
	v_sub_f32_e32 v40, v40, v157
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s3
	v_cndmask_b32_e64 v33, 0, v33, s66
	v_cndmask_b32_e64 v35, 0, v35, s62
	v_cndmask_b32_e64 v36, 0, v36, s64
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v158.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s66, v33, v33
	v_cmp_o_f32_e64 s62, v36, v36
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s63
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v158
	v_mov_b16_e64 v158.l, v36.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s65
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v40, v40
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s60
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v34, v34, v42, 0x7fff
	v_mov_b16_e64 v42.h, v158.h
	v_mov_b16_e32 v42.l, v33.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s3
	v_cmp_o_f32_e64 s3, v35, v35
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s61
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v33, v33, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s60, v40, v40
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v34, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v33, v42, v34, v244
	v_perm_b32 v34, v42, v34, v245
	v_mov_b16_e64 v42.h, v158.h
	v_mov_b16_e32 v42.l, v35.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v35, v35, v42, 0x7fff
	v_and_b32_e32 v42, 1, v158
	v_mov_b16_e64 v158.l, v38.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v36, v36, v42, 0x7fff
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s62
	v_cmp_o_f32_e64 s62, v38, v38
	v_permlanex16_b32 v42, v36, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v35, v42, v36, v244
	v_perm_b32 v36, v42, v36, v245
	v_mov_b16_e64 v42.h, v158.h
	v_mov_b16_e32 v42.l, v37.h
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v37, v37, v42, 0x7fff
	v_and_b32_e32 v42, 1, v158
	v_mov_b16_e64 v158.l, v40.h
	v_add3_u32 v38, v38, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v39, v39
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v42, v38, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v37, v42, v38, v244
	v_perm_b32 v38, v42, v38, v245
	v_mov_b16_e64 v42.h, v158.h
	v_mov_b16_e32 v42.l, v39.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v39, v39, v42, 0x7fff
	v_and_b32_e32 v42, 1, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v40, v40, v42, 0x7fff
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s60
	v_permlanex16_b32 v42, v40, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v39, v42, v40, v244
	v_perm_b32 v40, v42, v40, v245
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v42, v41, v157
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v70, 0, v42, s3
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v43, v190 offset:608
	ds_load_u16_d16 v42, v190 offset:352
	ds_load_u16_d16 v60, v190 offset:768
	ds_load_u16_d16 v57, v190
	ds_load_u16_d16 v51, v190 offset:576
	ds_load_u16_d16 v52, v190 offset:832
	ds_load_u16_d16 v61, v190 offset:1024
	ds_load_u16_d16 v53, v190 offset:1088
	ds_load_u16_d16 v62, v190 offset:1280
	ds_load_u16_d16 v54, v190 offset:1344
	ds_load_u16_d16 v63, v190 offset:1536
	ds_load_u16_d16 v55, v190 offset:1600
	ds_load_u16_d16 v64, v190 offset:1792
	ds_load_u16_d16 v59, v190 offset:512
	ds_load_u16_d16 v58, v190 offset:256
	ds_load_u16_d16 v56, v190 offset:1856
	ds_load_u16_d16 v160, v190 offset:288
	ds_load_u16_d16 v159, v190 offset:32
	ds_load_u16_d16 v49, v190 offset:64
	ds_load_u16_d16 v50, v190 offset:320
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v42, v190 offset:480
	ds_load_u16_d16 v41, v190 offset:96
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v57, v190 offset:128
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v51, v190 offset:704
	ds_load_u16_d16_hi v60, v190 offset:896
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v52, v190 offset:960
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v61, v190 offset:1152
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v53, v190 offset:1216
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v62, v190 offset:1408
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v54, v190 offset:1472
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v63, v190 offset:1664
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v55, v190 offset:1728
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v64, v190 offset:1920
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v59, v190 offset:640
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v58, v190 offset:384
	ds_load_u16_d16 v161, v190 offset:544
	ds_load_u16_d16 v44, v190 offset:864
	ds_load_u16_d16 v45, v190 offset:1120
	ds_load_u16_d16 v46, v190 offset:1376
	ds_load_u16_d16 v47, v190 offset:1632
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v56, v190 offset:1984
	ds_load_u16_d16 v65, v190 offset:2048
	ds_load_u16_d16 v73, v190 offset:2112
	ds_load_u16_d16 v48, v190 offset:1888
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v159, v190 offset:160
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v49, v190 offset:192
	ds_load_u16_d16 v162, v190 offset:800
	ds_load_u16_d16 v163, v190 offset:1056
	ds_load_u16_d16 v164, v190 offset:1312
	ds_load_u16_d16 v165, v190 offset:1568
	ds_load_u16_d16 v166, v190 offset:1824
	ds_load_u16_d16 v74, v190 offset:2368
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v161, v190 offset:672
	ds_load_u16_d16_hi v43, v190 offset:736
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v70
	v_mul_f32_e32 v26, v26, v70
	v_mul_f32_e32 v27, v27, v70
	v_mul_f32_e32 v28, v28, v70
	v_mul_f32_e32 v29, v29, v70
	v_mul_f32_e32 v30, v30, v70
	v_mul_f32_e32 v31, v31, v70
	v_mul_f32_e32 v32, v32, v70
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v41, v190 offset:224
	ds_load_u16_d16_hi v160, v190 offset:416
	ds_load_u16_d16_hi v50, v190 offset:448
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v70
	v_mul_f32_e32 v18, v18, v70
	v_mul_f32_e32 v19, v19, v70
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[57:64], v[33:40], v[25:32]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v162, v190 offset:928
	ds_load_u16_d16_hi v44, v190 offset:992
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v163, v190 offset:1184
	ds_load_u16_d16_hi v45, v190 offset:1248
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v164, v190 offset:1440
	ds_load_u16_d16_hi v46, v190 offset:1504
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v165, v190 offset:1696
	ds_load_u16_d16_hi v47, v190 offset:1760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v166, v190 offset:1952
	ds_load_u16_d16_hi v48, v190 offset:2016
	ds_load_u16_d16_hi v73, v190 offset:2240
	ds_load_u16_d16 v57, v190 offset:2080
	ds_load_u16_d16 v81, v190 offset:2144
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v70
	v_mul_f32_e32 v21, v21, v70
	v_mul_f32_e32 v22, v22, v70
	v_mul_f32_e32 v23, v23, v70
	v_mul_f32_e32 v24, v24, v70
	v_mul_f32_e32 v9, v9, v70
	v_mul_f32_e32 v10, v10, v70
	v_mul_f32_e32 v11, v11, v70
	v_mul_f32_e32 v12, v12, v70
	v_mul_f32_e32 v13, v13, v70
	v_mul_f32_e32 v14, v14, v70
	v_mul_f32_e32 v15, v15, v70
	v_mul_f32_e32 v16, v16, v70
	v_mul_f32_e32 v1, v1, v70
	v_mul_f32_e32 v2, v2, v70
	v_mul_f32_e32 v3, v3, v70
	v_mul_f32_e32 v4, v4, v70
	v_mul_f32_e32 v5, v5, v70
	v_mul_f32_e32 v6, v6, v70
	v_mul_f32_e32 v7, v7, v70
	v_mul_f32_e32 v8, v8, v70
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[159:166], v[33:40], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[49:56], v[33:40], v[9:16]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v58, v190 offset:2336
	ds_load_u16_d16 v59, v190 offset:2592
	ds_load_u16_d16 v60, v190 offset:2848
	ds_load_u16_d16 v61, v190 offset:3104
	ds_load_u16_d16 v62, v190 offset:3360
	ds_load_u16_d16 v63, v190 offset:3616
	ds_load_u16_d16 v64, v190 offset:3872
	ds_load_u16_d16 v51, v190 offset:4416
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v57, v190 offset:2208
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v81, v190 offset:2272
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[1:8], v[41:48], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v66, v157
	v_sub_f32_e32 v34, v67, v157
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v41.h, v158.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v68, v157
	v_sub_f32_e32 v36, v69, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v75, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v76, v157
	v_sub_f32_e32 v39, v77, v157
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v78, v157
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v66, v190 offset:2304
	ds_load_u16_d16 v67, v190 offset:2560
	ds_load_u16_d16 v75, v190 offset:2624
	ds_load_u16_d16 v68, v190 offset:2816
	ds_load_u16_d16 v76, v190 offset:2880
	ds_load_u16_d16 v69, v190 offset:3072
	ds_load_u16_d16 v77, v190 offset:3136
	ds_load_u16_d16 v70, v190 offset:3328
	ds_load_u16_d16 v78, v190 offset:3392
	ds_load_u16_d16 v71, v190 offset:3584
	ds_load_u16_d16 v79, v190 offset:3648
	ds_load_u16_d16 v72, v190 offset:3840
	ds_load_u16_d16 v80, v190 offset:3904
	ds_load_u16_d16_hi v65, v190 offset:2176
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s57
	v_cndmask_b32_e64 v34, 0, v34, s59
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v38, v38
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s54
	v_cndmask_b32_e64 v36, 0, v36, s56
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e64 v158.l, v34.h
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s57, v34, v34
	v_cmp_o_f32_e64 s54, v36, v36
	v_and_b32_e32 v41, 1, v41
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s55
	v_cndmask_b32_e64 v38, 0, v38, s58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v40, v40
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v33, v33, v41, 0x7fff
	v_and_b32_e32 v41, 1, v158
	v_mov_b16_e64 v158.l, v36.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v66, v190 offset:2432
	ds_load_u16_d16_hi v74, v190 offset:2496
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v67, v190 offset:2688
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v75, v190 offset:2752
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v68, v190 offset:2944
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v76, v190 offset:3008
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v69, v190 offset:3200
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v77, v190 offset:3264
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v70, v190 offset:3456
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v78, v190 offset:3520
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v71, v190 offset:3712
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v79, v190 offset:3776
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v72, v190 offset:3968
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v80, v190 offset:4032
	ds_load_u16_d16 v82, v190 offset:2400
	ds_load_u16_d16 v83, v190 offset:2656
	ds_load_u16_d16 v84, v190 offset:2912
	ds_load_u16_d16 v85, v190 offset:3168
	ds_load_u16_d16 v86, v190 offset:3424
	ds_load_u16_d16 v87, v190 offset:3680
	ds_load_u16_d16 v42, v190 offset:4096
	ds_load_u16_d16 v50, v190 offset:4160
	ds_load_u16_d16 v88, v190 offset:3936
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v41, 0x7fff
	v_cndmask_b16 v34.l, 0x7fff, v33.h, s3
	v_cmp_o_f32_e64 s3, v35, v35
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s52
	v_cndmask_b32_e64 v40, 0, v40, s53
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.h, 0x7fff, v34.h, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s52, v40, v40
	v_permlanex16_b32 v41, v34, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v33, v41, v34, v244
	v_perm_b32 v34, v41, v34, v245
	v_mov_b16_e64 v41.h, v158.h
	v_mov_b16_e32 v41.l, v35.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v35, v35, v41, 0x7fff
	v_and_b32_e32 v41, 1, v158
	v_mov_b16_e64 v158.l, v38.h
	v_add3_u32 v36, v36, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s3
	v_cmp_o_f32_e64 s3, v37, v37
	v_cndmask_b16 v36.h, 0x7fff, v36.h, s54
	v_cmp_o_f32_e64 s54, v38, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v36, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v35, v41, v36, v244
	v_perm_b32 v36, v41, v36, v245
	v_mov_b16_e64 v41.h, v158.h
	v_mov_b16_e32 v41.l, v37.h
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v37, v37, v41, 0x7fff
	v_and_b32_e32 v41, 1, v158
	v_mov_b16_e64 v158.l, v40.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v38, v38, v41, 0x7fff
	v_cndmask_b16 v38.l, 0x7fff, v37.h, s3
	v_cmp_o_f32_e64 s3, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s54
	v_permlanex16_b32 v41, v38, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_perm_b32 v37, v41, v38, v244
	v_perm_b32 v38, v41, v38, v245
	v_mov_b16_e64 v41.h, v158.h
	v_mov_b16_e32 v41.l, v39.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v39, v39, v41, 0x7fff
	v_and_b32_e32 v41, 1, v158
	v_add3_u32 v40, v40, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v40.l, 0x7fff, v39.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v40.h, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v41, v40, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v39, v41, v40, v244
	v_perm_b32 v40, v41, v40, v245
	v_mov_b16_e64 v41.h, v158.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[65:72], v[33:40], v[25:32]
	s_waitcnt lgkmcnt(9)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[73:80], v[33:40], v[9:16]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v58, v190 offset:2464
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v82, v190 offset:2528
	ds_load_u16_d16_hi v59, v190 offset:2720
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v83, v190 offset:2784
	ds_load_u16_d16_hi v60, v190 offset:2976
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v84, v190 offset:3040
	ds_load_u16_d16_hi v61, v190 offset:3232
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v85, v190 offset:3296
	ds_load_u16_d16_hi v62, v190 offset:3488
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v86, v190 offset:3552
	ds_load_u16_d16_hi v63, v190 offset:3744
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v87, v190 offset:3808
	ds_load_u16_d16_hi v64, v190 offset:4000
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v88, v190 offset:4064
	ds_load_u16_d16_hi v50, v190 offset:4288
	ds_load_u16_d16 v65, v190 offset:4128
	ds_load_u16_d16 v73, v190 offset:4192
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[57:64], v[33:40], v[17:24]
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[81:88], v[33:40], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v129, v157
	v_sub_f32_e32 v34, v130, v157
	v_sub_f32_e32 v35, v131, v157
	v_sub_f32_e32 v36, v132, v157
	v_sub_f32_e32 v37, v133, v157
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v38, v134, v157
	v_sub_f32_e32 v39, v135, v157
	v_sub_f32_e32 v40, v136, v157
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v43, v190 offset:4352
	ds_load_u16_d16 v44, v190 offset:4608
	ds_load_u16_d16 v52, v190 offset:4672
	ds_load_u16_d16 v45, v190 offset:4864
	ds_load_u16_d16 v53, v190 offset:4928
	ds_load_u16_d16 v46, v190 offset:5120
	ds_load_u16_d16 v54, v190 offset:5184
	ds_load_u16_d16 v47, v190 offset:5376
	ds_load_u16_d16 v55, v190 offset:5440
	ds_load_u16_d16 v48, v190 offset:5632
	ds_load_u16_d16 v56, v190 offset:5696
	ds_load_u16_d16 v49, v190 offset:5888
	ds_load_u16_d16 v57, v190 offset:5952
	ds_load_u16_d16_hi v42, v190 offset:4224
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s49
	v_cndmask_b32_e64 v34, 0, v34, s51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.l, v33.h
	v_mov_b16_e64 v158.l, v34.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e64 s3, v33, v33
	v_cmp_o_f32_e64 s49, v34, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v33, v33, v41, 0x7fff
	v_and_b32_e32 v41, 1, v158
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	v_add3_u32 v34, v34, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s49
	v_permlanex16_b32 v34, v33, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_perm_b32 v81, v34, v33, v244
	v_perm_b32 v82, v34, v33, v245
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v158.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v36
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v36, v91, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v34.h
	v_cmp_o_f32_e64 s45, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v158
	v_add3_u32 v34, v34, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s45
	v_permlanex16_b32 v34, v33, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v83, v34, v33, v244
	v_perm_b32 v84, v34, v33, v245
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v158.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v92, v157
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v38
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v38, v93, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v34.h
	v_cmp_o_f32_e64 s45, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v158
	v_add3_u32 v34, v34, v35, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s45
	v_permlanex16_b32 v34, v33, s101, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_1)
	v_perm_b32 v85, v34, v33, v244
	v_perm_b32 v86, v34, v33, v245
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v33, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v34.h, v158.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v39, v94, v157
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v34.l, v33.h
	v_cmp_o_f32_e64 s3, v33, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v34, 1, v34
	v_add3_u32 v33, v33, v34, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v40
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v40, v95, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v33.l, 0x7fff, v33.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v34.h
	v_cmp_o_f32_e64 s44, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v35, 1, v158
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v35, v90, v157
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v33.h, 0x7fff, v34.h, s44
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v34, v33, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v87, v34, v33, v244
	v_perm_b32 v88, v34, v33, v245
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v89, v157
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v43, v190 offset:4480
	ds_load_u16_d16_hi v51, v190 offset:4544
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v44, v190 offset:4736
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v52, v190 offset:4800
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v45, v190 offset:4992
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v53, v190 offset:5056
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v46, v190 offset:5248
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v54, v190 offset:5312
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v190 offset:5504
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v55, v190 offset:5568
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v190 offset:5760
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v56, v190 offset:5824
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v49, v190 offset:6016
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v57, v190 offset:6080
	ds_load_u16_d16 v74, v190 offset:4448
	ds_load_u16_d16 v75, v190 offset:4704
	ds_load_u16_d16 v76, v190 offset:4960
	ds_load_u16_d16 v77, v190 offset:5216
	ds_load_u16_d16 v78, v190 offset:5472
	ds_load_u16_d16 v79, v190 offset:5728
	ds_load_u16_d16 v33, v190 offset:6144
	ds_load_u16_d16 v41, v190 offset:6208
	ds_load_u16_d16 v80, v190 offset:5984
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e64 v158.l, v35.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[42:49], v[81:88], v[25:32]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v66, v190 offset:4384
	ds_load_u16_d16 v67, v190 offset:4640
	ds_load_u16_d16 v68, v190 offset:4896
	ds_load_u16_d16 v69, v190 offset:5152
	ds_load_u16_d16 v70, v190 offset:5408
	ds_load_u16_d16 v71, v190 offset:5664
	ds_load_u16_d16 v72, v190 offset:5920
	ds_load_u16_d16 v42, v190 offset:6464
	ds_load_u16_d16_hi v65, v190 offset:4256
	ds_load_u16_d16_hi v73, v190 offset:4320
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v44.h, v158.h
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[50:57], v[81:88], v[9:16]
	.loc	1 886 33 is_stmt 1              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s41
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v66, v190 offset:4512
	ds_load_u16_d16_hi v74, v190 offset:4576
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v67, v190 offset:4768
	ds_load_u16_d16_hi v75, v190 offset:4832
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v68, v190 offset:5024
	ds_load_u16_d16_hi v76, v190 offset:5088
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v69, v190 offset:5280
	ds_load_u16_d16_hi v77, v190 offset:5344
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v70, v190 offset:5536
	ds_load_u16_d16_hi v78, v190 offset:5600
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v71, v190 offset:5792
	ds_load_u16_d16_hi v79, v190 offset:5856
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v72, v190 offset:6048
	ds_load_u16_d16_hi v80, v190 offset:6112
	ds_load_u16_d16_hi v41, v190 offset:6336
	ds_load_u16_d16 v49, v190 offset:6176
	ds_load_u16_d16 v57, v190 offset:6240
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v44.l, v34.h
	v_cmp_o_f32_e64 s3, v34, v34
	v_cmp_o_f32_e64 s41, v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v43, v96, v157
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v50, v190 offset:6432
	ds_load_u16_d16 v51, v190 offset:6688
	ds_load_u16_d16 v52, v190 offset:6944
	ds_load_u16_d16 v53, v190 offset:7200
	ds_load_u16_d16 v54, v190 offset:7456
	ds_load_u16_d16 v55, v190 offset:7712
	ds_load_u16_d16 v56, v190 offset:7968
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v49, v190 offset:6304
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v57, v190 offset:6368
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v44, 1, v44
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[17:24], v[65:72], v[81:88], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[1:8], v[73:80], v[81:88], v[1:8]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v34, v34, v44, 0x7fff
	v_and_b32_e32 v44, 1, v158
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v44, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v65, v35, v34, v244
	v_perm_b32 v66, v35, v34, v245
	.loc	1 886 49 is_stmt 1              ; attention.py:886:49
	v_exp_f32_e32 v34, v36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v158.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s37
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v37
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v35, v35
	v_and_b32_e32 v36, 1, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v67, v35, v34, v244
	v_perm_b32 v68, v35, v34, v245
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v158.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v39
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s42
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s37, v35, v35
	v_and_b32_e32 v36, 1, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v69, v35, v34, v244
	v_perm_b32 v70, v35, v34, v245
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v35.h, v158.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v35.l, v34.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s3, v34, v34
	v_and_b32_e32 v35, 1, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v34, v34, v35, 0x7fff
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v43
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v34.l, 0x7fff, v34.h, s3
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s38
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v158.l, v35.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v35, v35
	v_and_b32_e32 v36, 1, v158
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v35, v35, v36, 0x7fff
	v_cndmask_b16 v34.h, 0x7fff, v35.h, s36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v34, s101, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v35, v34, v244
	v_perm_b32 v72, v35, v34, v245
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v34, v190 offset:6400
	ds_load_u16_d16 v35, v190 offset:6656
	ds_load_u16_d16 v43, v190 offset:6720
	ds_load_u16_d16 v36, v190 offset:6912
	ds_load_u16_d16 v44, v190 offset:6976
	ds_load_u16_d16 v37, v190 offset:7168
	ds_load_u16_d16 v45, v190 offset:7232
	ds_load_u16_d16 v38, v190 offset:7424
	ds_load_u16_d16 v46, v190 offset:7488
	ds_load_u16_d16 v39, v190 offset:7680
	ds_load_u16_d16 v47, v190 offset:7744
	ds_load_u16_d16 v40, v190 offset:7936
	ds_load_u16_d16 v48, v190 offset:8000
	ds_load_u16_d16_hi v33, v190 offset:6272
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v34, v190 offset:6528
	ds_load_u16_d16_hi v42, v190 offset:6592
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v35, v190 offset:6784
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v43, v190 offset:6848
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v36, v190 offset:7040
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v44, v190 offset:7104
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v37, v190 offset:7296
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v45, v190 offset:7360
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v38, v190 offset:7552
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v46, v190 offset:7616
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v39, v190 offset:7808
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v47, v190 offset:7872
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v40, v190 offset:8064
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v48, v190 offset:8128
	ds_load_u16_d16 v58, v190 offset:6496
	ds_load_u16_d16 v59, v190 offset:6752
	ds_load_u16_d16 v60, v190 offset:7008
	ds_load_u16_d16 v61, v190 offset:7264
	ds_load_u16_d16 v62, v190 offset:7520
	ds_load_u16_d16 v63, v190 offset:7776
	ds_load_u16_d16 v64, v190 offset:8032
	ds_load_u16_d16_hi v50, v190 offset:6560
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v58, v190 offset:6624
	ds_load_u16_d16_hi v51, v190 offset:6816
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v59, v190 offset:6880
	ds_load_u16_d16_hi v52, v190 offset:7072
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v60, v190 offset:7136
	ds_load_u16_d16_hi v53, v190 offset:7328
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v61, v190 offset:7392
	ds_load_u16_d16_hi v54, v190 offset:7584
	s_waitcnt lgkmcnt(11)
	ds_load_u16_d16_hi v62, v190 offset:7648
	ds_load_u16_d16_hi v55, v190 offset:7840
	s_waitcnt lgkmcnt(12)
	ds_load_u16_d16_hi v63, v190 offset:7904
	ds_load_u16_d16_hi v56, v190 offset:8096
	s_waitcnt lgkmcnt(13)
	ds_load_u16_d16_hi v64, v190 offset:8160
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[33:40], v[65:72], v[25:32]
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v124, v124
	v_max_f32_e32 v34, v128, v128
	v_max3_f32 v35, v122, v127, v123
.Ltmp7:
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[65:72], v[9:16]
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v42, v116, v116
	v_max_f32_e32 v43, v120, v120
	v_max_f32_e32 v33, v34, v33
	v_max3_f32 v34, v125, v121, v126
	v_max3_f32 v44, v114, v119, v115
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v42, v43, v42
	v_max3_f32 v43, v117, v113, v118
	v_max3_f32 v33, v34, v35, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v42, v43, v44, v42
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
.Ltmp10:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[65:72], v[17:24]
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v108, v108
	v_dual_max_f32 v52, v112, v112 :: v_dual_mov_b32 v43, v42
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v34, v34 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v106, v111, v107
.Ltmp14:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[57:64], v[65:72], v[1:8]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v52, v51
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v43, v43 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_max3_f32 v52, v109, v105, v110
	v_max_f32_e32 v61, v104, v104
	v_max3_f32 v62, v98, v103, v99
	v_max_f32_e32 v43, v43, v43
	v_max_f32_e32 v33, v33, v34
	v_max3_f32 v51, v52, v53, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v42, v42, v43
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v52, v51 :: v_dual_mov_b32 v43, v42
	v_mov_b32_dpp v34, v34 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v52, v52 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v43, v43 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v43, v43, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v33, v33, v34
	v_dual_max_f32 v51, v51, v52 :: v_dual_max_f32 v42, v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v34, v33
	v_dual_mov_b32 v52, v51 :: v_dual_mov_b32 v43, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v34, v34 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v52, v52 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v43, v43 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v34, v34, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v52, v52, v52 :: v_dual_max_f32 v43, v43, v43
	v_dual_max_f32 v33, v33, v34 :: v_dual_max_f32 v34, v191, v191
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v51, v51, v52
	v_max_f32_e32 v60, v100, v100
	v_dual_max_f32 v42, v42, v43 :: v_dual_max_f32 v43, v192, v192
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp22:
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v191, v34, v33 :: v_dual_mov_b32 v52, v51
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v60, v61, v60
	v_max3_f32 v61, v101, v97, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v192, v43, v42
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v34, v125, v191
	v_sub_f32_e32 v38, v121, v191
	v_sub_f32_e32 v35, v126, v191
	v_sub_f32_e32 v39, v122, v191
	v_sub_f32_e32 v36, v127, v191
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v35, v35
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v40, v123, v191
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v36, v36
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v37, v128, v191
	v_sub_f32_e32 v41, v124, v191
	v_sub_f32_e32 v43, v117, v192
	v_sub_f32_e32 v47, v113, v192
.Ltmp25:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v52, v52 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s18
	v_cndmask_b32_e64 v38, 0, v38, s35
	v_cndmask_b32_e64 v35, 0, v35, s17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v37, v37
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v36, 0, v36, s4
.Ltmp27:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v52, v52, v52
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v38
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v39
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v48, v114, v192
	v_sub_f32_e32 v45, v119, v192
.Ltmp30:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v51, v51, v52
.Ltmp31:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v118, v192
	v_sub_f32_e32 v49, v115, v192
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v120, v192
	v_sub_f32_e32 v50, v116, v192
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max_f32_e32 v52, v193, v193
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s34
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v60, v61, v62, v60
.Ltmp33:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s1, 0xff800000, v223
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v50
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v193, v52, v51
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v61, v60 :: v_dual_sub_f32 v52, v109, v193
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp38:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v105, v193
	v_sub_f32_e32 v53, v110, v193
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v57, v106, v193
	v_sub_f32_e32 v54, v111, v193
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s28
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v58, v107, v193
	v_sub_f32_e32 v55, v112, v193
	v_sub_f32_e32 v59, v108, v193
.Ltmp39:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v36, v36, v38
.Ltmp41:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v41
	v_mov_b32_e32 v109, v0
	v_exp_f32_e32 v40, v59
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v61, v61, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_max_f32_e32 v60, v60, v61
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s27
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v40, 0, v40, s21
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp46:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v49
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v36, v37 :: v_dual_mov_b32 v36, v138
.Ltmp49:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v48
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v61, v61, v61 :: v_dual_add_f32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s24
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v60, v60, v61 :: v_dual_mov_b32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp53:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s31
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v61, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp55:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp57:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_max_f32 v61, v61, v61
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v35, v34 :: v_dual_max_f32 v60, v60, v61
.Ltmp59:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v61, v194, v194
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v194, v61, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v34, v34, v35 :: v_dual_sub_f32 v61, v101, v194
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp64:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v65, v97, v194
	v_sub_f32_e32 v62, v102, v194
	v_sub_f32_e32 v66, v98, v194
	v_sub_f32_e32 v63, v103, v194
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v67, v99, v194
	v_sub_f32_e32 v64, v104, v194
	v_sub_f32_e32 v68, v100, v194
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v138, v34, v35
.Ltmp68:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v43
	v_exp_f32_e32 v35, v47
	v_exp_f32_e32 v41, v68
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s16
	v_cndmask_b32_e64 v35, 0, v35, s33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v41, 0, v41, s19
.Ltmp69:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp70:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v44
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s15
.Ltmp71:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v37
.Ltmp72:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v37, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp74:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v37, 0, v37, s10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v37, v37, v38
.Ltmp76:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v46
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp78:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v58
.Ltmp79:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v37, v38
	v_mov_b32_e32 v37, v140
.Ltmp80:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp82:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
.Ltmp84:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp88:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v140, v34, v35
.Ltmp91:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v52
	v_exp_f32_e32 v35, v56
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s14
	v_cndmask_b32_e64 v35, 0, v35, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp92:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp93:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v53
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp94:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v38
.Ltmp95:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v38, v54
.Ltmp96:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp97:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v38, 0, v38, s8
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v38, v38, v39
.Ltmp99:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v55
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s7
.Ltmp100:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp101:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v35, v38, v39 :: v_dual_mov_b32 v38, v139
.Ltmp103:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v66
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp105:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s20
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp107:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s25
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp112:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v139, v34, v35
.Ltmp114:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v34, v61
	v_exp_f32_e32 v35, v65
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v34, 0, v34, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v35, 0, v35, s26
.Ltmp115:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp116:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v35, v62
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v35, 0, v35, s11
.Ltmp117:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v35, v35, v39
.Ltmp118:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v39, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
.Ltmp119:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp120:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v39, 0, v39, s6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v39, v39, v40
.Ltmp122:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v40, v64
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v40, 0, v40, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp123:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v40, v41 :: v_dual_mov_b32 v41, v157
	v_add_f32_e32 v35, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mov_b32 v39, v141 :: v_dual_add_f32 v34, v34, v35
.Ltmp124:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	v_mov_b32_dpp v35, v35 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v34, v34, v35
.Ltmp128:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v35, v35 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v141, v34, v35
.Ltmp130:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v223, v223
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v33, v34, v33
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v34, v223, v33 :: v_dual_mov_b32 v223, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v34, v34
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v34, 0, v34, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v222
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v138, v36, v34
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v34, v222, v222
	v_max_f32_e32 v34, v34, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v35, v222, v34
	v_mov_b32_e32 v222, v34
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v35, v35
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v35, 0, v35, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v221
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v140, v37, v35
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v35, v221, v221
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v35, v35, v51
	.loc	1 885 74                        ; attention.py:885:74
	v_dual_sub_f32 v36, v221, v35 :: v_dual_mov_b32 v221, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v36, v36
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v36, 0, v36, s1
	v_cmp_neq_f32_e64 s1, 0xff800000, v156
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v139, v38, v36
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v36, v156, v156
	v_max_f32_e32 v36, v36, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v37, v156, v36
	v_mov_b32_e32 v156, v36
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v37, v37
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v37, 0, v37, s1
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v141, v39, v37
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x4                            ; 20-byte Folded Reload
	scratch_load_b32 v42, off, off offset:80
	scratch_load_b32 v63, off, off offset:64
	scratch_load_b32 v0, off, off offset:68
	scratch_load_b32 v72, off, off offset:72
	scratch_load_b32 v45, off, off offset:76
.LBB0_7:                                ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_waitcnt vmcnt(2)
	v_lshrrev_b32_e32 v0, 4, v0
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v33, 0x80, v42
	s_waitcnt vmcnt(1)
	v_lshl_add_u32 v34, v72, 3, 0
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v35, 0, v45
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v0, 4, v0
	s_barrier
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s77, s77, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	ds_store_2addr_b64 v35, v[138:139], v[140:141] offset1:16
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v0, v34, v33, v0
	s_barrier
	s_mov_b32 s79, 0x31027000
	s_mov_b32 s78, 0x7ffffffe
	ds_load_b32 v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v33, null, v0, v0, v25
	v_div_scale_f32 v35, null, v0, v0, v26
	v_div_scale_f32 v37, null, v0, v0, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v45, v33
	v_div_scale_f32 v39, null, v0, v0, v28
	v_rcp_f32_e32 v46, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v37
	v_div_scale_f32 v41, null, v0, v0, v29
	v_div_scale_f32 v43, null, v0, v0, v30
	v_rcp_f32_e32 v48, v39
	v_rcp_f32_e32 v49, v41
	v_fma_f32 v54, -v33, v45, 1.0
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v50, v43
	v_fma_f32 v55, -v35, v46, 1.0
	v_fma_f32 v56, -v37, v47, 1.0
	v_div_scale_f32 v34, vcc_lo, v25, v0, v25
	v_fmac_f32_e32 v45, v54, v45
	v_div_scale_f32 v36, s0, v26, v0, v26
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v57, -v39, v48, 1.0
	v_fmac_f32_e32 v46, v55, v46
	v_div_scale_f32 v38, s1, v27, v0, v27
	v_dual_fmac_f32 v47, v56, v47 :: v_dual_mul_f32 v54, v34, v45
	v_fma_f32 v58, -v41, v49, 1.0
	v_div_scale_f32 v40, s3, v28, v0, v28
	v_fma_f32 v59, -v43, v50, 1.0
	v_dual_fmac_f32 v48, v57, v48 :: v_dual_mul_f32 v55, v36, v46
	v_mul_f32_e32 v56, v38, v47
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v49, v58, v49 :: v_dual_fmac_f32 v50, v59, v50
	v_fma_f32 v58, -v33, v54, v34
	v_div_scale_f32 v42, s4, v29, v0, v29
	v_mul_f32_e32 v57, v40, v48
	v_fma_f32 v59, -v35, v55, v36
	v_fma_f32 v60, -v37, v56, v38
	v_fmac_f32_e32 v54, v58, v45
	v_div_scale_f32 v44, null, v0, v0, v31
	v_mul_f32_e32 v62, v42, v49
	v_fma_f32 v61, -v39, v57, v40
	v_dual_fmac_f32 v55, v59, v46 :: v_dual_fmac_f32 v56, v60, v47
	v_fma_f32 v33, -v33, v54, v34
	v_rcp_f32_e32 v53, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v57, v61, v48
	v_fma_f32 v34, -v35, v55, v36
	v_fma_f32 v35, -v37, v56, v38
	v_div_fmas_f32 v33, v33, v45, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v36, -v39, v57, v40
	v_div_fmas_f32 v34, v34, v46, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v51, s5, v30, v0, v30
	v_div_fmas_f32 v35, v35, v47, v56
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v33, v0, v25
	v_div_fmas_f32 v33, v36, v48, v57
	v_fma_f32 v36, -v44, v53, 1.0
	v_div_scale_f32 v52, null, v0, v0, v32
	v_div_fixup_f32 v26, v34, v0, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v51, v50 :: v_dual_fmac_f32 v53, v36, v53
	v_div_scale_f32 v36, null, v0, v0, v17
	v_rcp_f32_e32 v37, v52
	v_fma_f32 v58, -v41, v62, v42
	v_div_fixup_f32 v28, v33, v0, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v40, v36
	v_fma_f32 v33, -v43, v34, v51
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v27, v35, v0, v27
	v_div_scale_f32 v35, s1, v31, v0, v31
	v_fmac_f32_e32 v34, v33, v50
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v38, -v52, v37, 1.0
	v_div_scale_f32 v46, null, v0, v0, v18
	v_fma_f32 v45, -v36, v40, 1.0
	v_mul_f32_e32 v33, v35, v53
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, s3, v32, v0, v32
	v_fmac_f32_e32 v40, v45, v40
	v_div_scale_f32 v45, s4, v17, v0, v17
	v_fmac_f32_e32 v62, v58, v49
	v_div_scale_f32 v47, null, v0, v0, v20
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v41, v62, v42
	v_fma_f32 v41, -v43, v34, v51
	v_fma_f32 v42, -v44, v33, v35
	v_mul_f32_e32 v43, v38, v37
	v_div_fmas_f32 v39, v39, v49, v62
	s_mov_b32 vcc_lo, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v33, v42, v53
	v_div_fmas_f32 v34, v41, v50, v34
	v_rcp_f32_e32 v41, v46
	v_fma_f32 v42, -v52, v43, v38
	v_div_fixup_f32 v29, v39, v0, v29
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v30, v34, v0, v30
	v_fma_f32 v34, -v44, v33, v35
	v_fmac_f32_e32 v43, v42, v37
	v_div_scale_f32 v42, null, v0, v0, v19
	v_mul_f32_e32 v35, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v46, v41, 1.0
	v_div_fmas_f32 v33, v34, v53, v33
	v_fma_f32 v34, -v52, v43, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v38, -v36, v35, v45
	v_fmac_f32_e32 v41, v39, v41
	v_rcp_f32_e32 v39, v42
	v_div_scale_f32 v44, s1, v18, v0, v18
	v_div_fmas_f32 v34, v34, v37, v43
	v_rcp_f32_e32 v37, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v35, v38, v40 :: v_dual_mul_f32 v38, v44, v41
	v_div_fixup_f32 v31, v33, v0, v31
	v_div_fixup_f32 v32, v34, v0, v32
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v42, v39, 1.0
	v_fma_f32 v34, -v46, v38, v44
	v_fma_f32 v33, -v36, v35, v45
	v_div_scale_f32 v36, s3, v19, v0, v19
	v_dual_fmac_f32 v39, v43, v39 :: v_dual_fmac_f32 v38, v34, v41
	v_fma_f32 v43, -v47, v37, 1.0
	v_div_scale_f32 v45, null, v0, v0, v21
	v_div_fmas_f32 v33, v33, v40, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v34, v36, v39 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, null, v0, v0, v22
	v_rcp_f32_e32 v35, v45
	v_div_scale_f32 v40, s4, v20, v0, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v48, v43
	v_div_fixup_f32 v17, v33, v0, v17
	v_fma_f32 v33, -v46, v38, v44
	v_fma_f32 v44, -v42, v34, v36
	s_mov_b32 vcc_lo, s1
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v49, -v45, v35, 1.0
	v_mul_f32_e32 v46, v40, v37
	v_fmac_f32_e32 v34, v44, v39
	v_fma_f32 v44, -v43, v48, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_fmac_f32 v35, v49, v35 :: v_dual_fmac_f32 v48, v44, v48
	v_div_fmas_f32 v33, v33, v41, v38
	v_fma_f32 v38, -v47, v46, v40
	v_div_scale_f32 v41, s1, v21, v0, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v33, v0, v18
	v_fma_f32 v33, -v42, v34, v36
	v_fmac_f32_e32 v46, v38, v37
	v_mul_f32_e32 v36, v41, v35
	v_div_scale_f32 v38, s5, v22, v0, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v39, v34
	v_div_scale_f32 v42, null, v0, v0, v23
	v_fma_f32 v39, -v45, v36, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v44, v38, v48
	v_fma_f32 v34, -v47, v46, v40
	v_rcp_f32_e32 v40, v42
	v_div_scale_f32 v47, null, v0, v0, v24
	v_fmac_f32_e32 v36, v39, v35
	v_fma_f32 v39, -v43, v44, v38
	v_div_fixup_f32 v19, v33, v0, v19
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v33, -v45, v36, v41
	v_fmac_f32_e32 v44, v39, v48
	v_div_fmas_f32 v34, v34, v37, v46
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v37, v47
	v_div_fmas_f32 v33, v33, v35, v36
	v_fma_f32 v35, -v43, v44, v38
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v46, -v42, v40, 1.0
	v_div_scale_f32 v45, null, v0, v0, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v35, v35, v48, v44
	v_div_fixup_f32 v20, v34, v0, v20
	v_div_scale_f32 v34, s3, v23, v0, v23
	v_fma_f32 v39, -v47, v37, 1.0
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v38, null, v0, v0, v9
	v_div_fixup_f32 v22, v35, v0, v22
	v_rcp_f32_e32 v35, v45
	v_fmac_f32_e32 v37, v39, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v36, v34, v40
	v_div_scale_f32 v39, s1, v24, v0, v24
	v_div_fixup_f32 v21, v33, v0, v21
	v_div_scale_f32 v48, null, v0, v0, v12
	v_fma_f32 v43, -v42, v36, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v45, v35, 1.0
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v35, v46, v35 :: v_dual_fmac_f32 v36, v43, v40
	v_fma_f32 v43, -v38, v41, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v42, v36, v34
	v_div_scale_f32 v42, null, v0, v0, v11
	v_fmac_f32_e32 v41, v43, v41
	v_div_fmas_f32 v34, v34, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v43, v42
	v_div_scale_f32 v40, s3, v10, v0, v10
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v23, v34, v0, v23
	v_mul_f32_e32 v49, v40, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v42, v43, 1.0
	v_dual_mul_f32 v44, v39, v37 :: v_dual_fmac_f32 v43, v46, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v33, -v47, v44, v39
	v_div_scale_f32 v46, s5, v11, v0, v11
	v_fmac_f32_e32 v44, v33, v37
	v_div_scale_f32 v33, s4, v9, v0, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v36, -v47, v44, v39
	v_mul_f32_e32 v39, v33, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v36, v36, v37, v44
	v_fma_f32 v47, -v38, v39, v33
	v_fma_f32 v37, -v45, v49, v40
	v_mul_f32_e32 v44, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v24, v36, v0, v24
	v_fmac_f32_e32 v39, v47, v41
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v42, v44, v46
	v_div_scale_f32 v37, null, v0, v0, v13
	v_fma_f32 v33, -v38, v39, v33
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s1, v12, v0, v12
	v_fma_f32 v38, -v45, v49, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s3
	v_dual_mul_f32 v39, v36, v50 :: v_dual_fmac_f32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	v_div_fmas_f32 v35, v38, v35, v49
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v9, v33, v0, v9
	v_fma_f32 v38, -v42, v44, v46
	v_div_scale_f32 v40, null, v0, v0, v14
	v_div_fixup_f32 v10, v35, v0, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v41, -v37, v34, 1.0
	v_fma_f32 v43, -v48, v39, v36
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v11, v38, v0, v11
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s3, v13, v0, v13
	v_fmac_f32_e32 v39, v43, v50
	v_div_scale_f32 v38, null, v0, v0, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v33, v41, v34
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v44, v38
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v43, -v37, v33, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v42, v35, v42
	v_fmac_f32_e32 v33, v43, v34
	v_div_scale_f32 v43, null, v0, v0, v16
	v_div_fixup_f32 v12, v36, v0, v12
	v_div_scale_f32 v35, s4, v14, v0, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v41, null, v0, v0, v2
	v_div_scale_f32 v34, null, v0, v0, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v13, v33, v0, v13
	v_fma_f32 v33, -v43, v45, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v47, v41
	v_div_scale_f32 v36, s1, v15, v0, v15
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v33, v45
	v_div_scale_f32 v33, s3, v16, v0, v16
	v_mul_f32_e32 v39, v35, v42
	v_div_scale_f32 v48, s4, v1, v0, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v49, -v41, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v37, -v40, v39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v0, v2
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	v_fma_f32 v46, -v34, v37, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v0, v0, v3
	v_mul_f32_e32 v51, v48, v37
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v33, v45
	v_rcp_f32_e32 v50, v46
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v14, v35, v0, v14
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v38, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	v_fma_f32 v33, -v43, v42, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v51, v36, v37
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v0, v0, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v0, v3
	v_div_fmas_f32 v33, v33, v45, v42
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v0, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fixup_f32 v16, v33, v0, v16
	v_div_fmas_f32 v37, v37, v47, v38
	v_fmac_f32_e32 v36, v41, v50
	v_div_fixup_f32 v1, v34, v0, v1
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v0, v0, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v33, -v46, v36, v39
	v_div_scale_f32 v34, null, v0, v0, v5
	v_rcp_f32_e32 v39, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v2, v37, v0, v2
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v0, v0, v7
	v_div_scale_f32 v44, null, v0, v0, v8
	v_div_scale_f32 v38, vcc_lo, v4, v0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v41, v37
	v_fma_f32 v45, -v35, v39, 1.0
	v_div_fixup_f32 v3, v33, v0, v3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v33, -v34, v36, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v0, v6
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s1, v5, v0, v5
	v_fma_f32 v48, -v37, v41, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v51, v45, v39
	v_mul_f32_e32 v43, v38, v42
	v_mul_f32_e32 v49, v33, v36
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v0, v7
	v_fma_f32 v47, -v40, v43, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v52, v48, v41
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v43, v38
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v40, -v35, v51, v45
	v_div_fmas_f32 v38, v38, v42, v43
	v_fma_f32 v33, -v34, v49, v33
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	v_fmac_f32_e32 v51, v40, v39
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v4, v38, v0, v4
	v_div_fmas_f32 v33, v33, v36, v49
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v35, -v35, v51, v45
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v5, v33, v0, v5
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v35, v0, v6
	v_div_fmas_f32 v36, v36, v46, v53
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s96, v168
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v34, v0, v7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v36, v0, v8
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v25, s0
	v_cndmask_b32_e64 v25, 0, v26, s0
	v_cndmask_b32_e64 v26, 0, v27, s0
	v_cndmask_b32_e64 v27, 0, v28, s0
	v_cndmask_b32_e64 v28, 0, v29, s0
	v_cndmask_b32_e64 v29, 0, v30, s0
	v_cndmask_b32_e64 v30, 0, v31, s0
	v_cndmask_b32_e64 v31, 0, v32, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v32, s96, v63
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s96, v228
	v_cmp_gt_i32_e64 s1, s96, v177
	v_cmp_gt_i32_e64 s3, s96, v169
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v33, v32, v168, 2
	v_add_lshl_u32 v34, v32, v235, 2
	v_add_lshl_u32 v35, v32, v234, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v33, 0x80000000, v33 :: v_dual_cndmask_b32 v34, 0x80000000, v34
	v_cndmask_b32_e32 v35, 0x80000000, v35, vcc_lo
	s_clause 0x2
	buffer_store_b32 v8, v33, s[76:79], 0 offen
	buffer_store_b32 v25, v34, s[76:79], 0 offen
	buffer_store_b32 v26, v35, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v233, 2
	v_add_lshl_u32 v25, v32, v232, 2
	v_add_lshl_u32 v26, v32, v231, 2
	v_add_lshl_u32 v33, v32, v230, 2
	v_add_lshl_u32 v34, v32, v229, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v33, 0x80000000, v33
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v8, s[76:79], 0 offen
	buffer_store_b32 v28, v25, s[76:79], 0 offen
	buffer_store_b32 v29, v26, s[76:79], 0 offen
	buffer_store_b32 v30, v33, s[76:79], 0 offen
	buffer_store_b32 v31, v34, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v228, 2
	v_add_lshl_u32 v25, v32, v227, 2
	v_add_lshl_u32 v26, v32, v226, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_lshl_u32 v27, v32, v109, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_add_lshl_u32 v28, v32, v210, 2
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v8, s[76:79], 0 offen
	buffer_store_b32 v18, v25, s[76:79], 0 offen
	buffer_store_b32 v19, v26, s[76:79], 0 offen
	v_cndmask_b32_e32 v8, 0x80000000, v28, vcc_lo
	v_add_lshl_u32 v17, v32, v151, 2
	v_add_lshl_u32 v18, v32, v137, 2
	v_add_lshl_u32 v19, v32, v167, 2
	s_clause 0x1
	buffer_store_b32 v20, v27, s[76:79], 0 offen
	buffer_store_b32 v21, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v177, 2
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v22, v17, s[76:79], 0 offen
	v_add_lshl_u32 v17, v32, v184, 2
	s_clause 0x2
	buffer_store_b32 v23, v18, s[76:79], 0 offen
	buffer_store_b32 v24, v19, s[76:79], 0 offen
	buffer_store_b32 v9, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v183, 2
	v_add_lshl_u32 v18, v32, v181, 2
	v_add_lshl_u32 v19, v32, v180, 2
	v_cndmask_b32_e32 v9, 0x80000000, v17, vcc_lo
	v_add_lshl_u32 v17, v32, v182, 2
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v10, v9, s[76:79], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v10, 0x80000000, v18
	buffer_store_b32 v11, v8, s[76:79], 0 offen
	v_add_lshl_u32 v8, v32, v179, 2
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	v_add_lshl_u32 v11, v32, v176, 2
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	s_clause 0x2
	buffer_store_b32 v12, v9, s[76:79], 0 offen
	buffer_store_b32 v13, v10, s[76:79], 0 offen
	buffer_store_b32 v14, v17, s[76:79], 0 offen
	v_add_lshl_u32 v9, v32, v178, 2
	v_add_lshl_u32 v10, v32, v169, 2
	v_add_lshl_u32 v12, v32, v175, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v15, v8, s[76:79], 0 offen
	buffer_store_b32 v16, v9, s[76:79], 0 offen
	buffer_store_b32 v1, v10, s[76:79], 0 offen
	buffer_store_b32 v2, v11, s[76:79], 0 offen
	buffer_store_b32 v3, v12, s[76:79], 0 offen
	v_add_lshl_u32 v1, v32, v173, 2
	v_add_lshl_u32 v2, v32, v171, 2
	v_add_lshl_u32 v3, v32, v170, 2
	v_add_lshl_u32 v8, v32, v174, 2
	v_add_lshl_u32 v9, v32, v172, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v8, 0x80000000, v8
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v9, 0x80000000, v9, vcc_lo
	s_clause 0x4
	buffer_store_b32 v4, v1, s[76:79], 0 offen
	buffer_store_b32 v5, v2, s[76:79], 0 offen
	buffer_store_b32 v6, v3, s[76:79], 0 offen
	buffer_store_b32 v7, v8, s[76:79], 0 offen
	buffer_store_b32 v0, v9, s[76:79], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_endpgm
.Ltmp131:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 88
		.amdhsa_kernarg_size 152
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
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_vgpr, 256
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.private_seg_size, 88
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 20596
; TotalNumSgprs: 107
; NumVgprs: 256
; ScratchSize: 88
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
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
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 88
    .sgpr_count:     107
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_fp32_local_float32_d64_dv64_hq16_hkv8_lq2048_lk2048_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 21
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
