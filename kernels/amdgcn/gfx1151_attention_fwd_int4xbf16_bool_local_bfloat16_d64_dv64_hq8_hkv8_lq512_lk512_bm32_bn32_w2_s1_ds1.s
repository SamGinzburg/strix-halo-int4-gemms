	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s22, s[0:1], 0x84
	s_load_b32 s64, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshlrev_b32_e32 v2, 4, v0
	v_lshrrev_b32_e32 v32, 1, v0
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x0
	s_load_b64 s[20:21], s[0:1], 0x7c
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s6, s2, 5
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v56, 16, v2
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s65, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s6, v32
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s8, s6, s65
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v69, 16, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x200, v5
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[57:58], null, s64, v32, v[56:57]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s5, s64, v56
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s6, s21
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s10, s6, s20
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s22
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[3:4], null, s64, s8, v[57:58]
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v4, 1, v0
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s7, s2, 32
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s10, s10, s22
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s9, s7, 0x200
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s10, s10, 0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s9, s9, 31
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v1, 0x80000000, v3, vcc_lo
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v3, v0, 4, 1
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s11, s9, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s7, 0, v69
	.loc	1 808 34                        ; attention.py:808:34
	s_lshr_b32 s11, s11, 27
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[15:18], v1, s[12:15], 0 offen
	v_and_or_b32 v6, v4, 30, v3
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v1, 15, v0
	.loc	1 808 34                        ; attention.py:808:34
	s_add_i32 s67, s9, s11
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s66, s10, 0x7fffffe0
	.loc	1 808 33                        ; attention.py:808:33
	s_and_not1_b32 s67, s67, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v70, 2, v6
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v14, v32, 16, v1
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s66, s67
	s_mov_b32 s9, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v72, 4, v70
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v19, s6, v14
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v19
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v6, v70, v15
	ds_bpermute_b32 v7, v70, v16
	ds_bpermute_b32 v8, v70, v17
	ds_bpermute_b32 v10, v70, v18
	ds_bpermute_b32 v9, v72, v15
	ds_bpermute_b32 v11, v72, v16
	ds_bpermute_b32 v12, v72, v17
	ds_bpermute_b32 v13, v72, v18
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b32_e32 v15, 0x5410
	v_mov_b32_e32 v16, 0x7632
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e64 v15, 0x1054, v15, s7
	v_cndmask_b32_e64 v16, 0x3276, v16, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v15, 8, v15
	v_lshl_or_b32 v16, v16, 8, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v15, 0x540054, v15
	v_and_b32_e32 v16, 0x760076, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v15, v15, 4, v15
	v_lshl_or_b32 v16, v16, 4, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 0x5040504, v15
	v_and_b32_e32 v68, 0x7060706, v16
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s9, -1
                                        ; implicit-def: $vgpr67
                                        ; implicit-def: $vgpr68
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s39, s[0:1], 0x64
	v_or_b32_e32 v71, s8, v14
	s_and_not1_b32 vcc_lo, exec_lo, s9
	s_cbranch_vccnz .LBB0_38
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 779 31 is_stmt 1              ; attention.py:779:31
	v_lshlrev_b32_e32 v14, 1, v71
	v_or_b32_e32 v89, s65, v3
	v_mov_b32_e32 v3, 0x6420
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_cndmask_b32_e64 v14, 0x80000000, v14, s2
	v_dual_mov_b32 v36, 0x7531 :: v_dual_add_nc_u32 v5, s22, v5
	s_clause 0x1
	s_load_b64 s[50:51], s[0:1], 0x30
	s_load_b128 s[16:19], s[0:1], 0x68
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v15, 3, v0
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v60, v6, v9, s7
	v_cndmask_b32_e64 v64, v9, v6, s7
	v_dual_mov_b32 v6, 0x7632 :: v_dual_lshlrev_b32 v37, 2, v32
	v_dual_mov_b32 v24, 0 :: v_dual_add_nc_u32 v93, s21, v5
	v_and_b32_e32 v88, 0x3f0, v2
	v_and_b32_e32 v2, 24, v4
	v_mov_b32_e32 v4, 0x5410
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	v_mov_b32_e32 v129, 0xff800000
	buffer_load_u16 v34, v14, s[52:55], 0 offen
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v14, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v35, 3, v0
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v33, 56, v15
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v14
	v_cndmask_b32_e64 v40, 0x1054, v4, s7
	v_cndmask_b32_e64 v41, 0x3276, v6, s7
	v_lshlrev_b32_e32 v39, 6, v14
	v_dual_mov_b32 v29, v24 :: v_dual_cndmask_b32 v36, 0x6420, v36
	v_cndmask_b32_e32 v38, 0x7531, v3, vcc_lo
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v91, 0xff800000 :: v_dual_and_b32 v0, 24, v0
	s_add_i32 s0, s3, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v38, v38, 8, v38
	v_mov_b32_e32 v28, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s12, s0, 3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s0, s39, v33
	v_and_or_b32 v103, v37, 60, v39
	v_lshl_or_b32 v37, v40, 8, v40
	v_lshl_or_b32 v39, v41, 8, v41
	v_mov_b32_e32 v25, v24
	v_xor_b32_e32 v94, v88, v0
	v_mov_b32_e32 v27, v24
	v_lshl_or_b32 v95, v1, 5, v2
	v_mov_b32_e32 v30, v24
	v_mov_b32_e32 v31, v24
	v_mul_lo_u32 v32, s19, v32
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v73, 1, v56
	v_or_b32_e32 v74, 2, v56
	v_or_b32_e32 v75, 3, v56
	v_or_b32_e32 v76, 4, v56
	v_or_b32_e32 v77, 5, v56
	v_or_b32_e32 v78, 6, v56
	v_or_b32_e32 v79, 7, v56
	v_or_b32_e32 v80, 8, v56
	v_or_b32_e32 v81, 9, v56
	v_or_b32_e32 v82, 10, v56
	v_or_b32_e32 v83, 11, v56
	v_or_b32_e32 v84, 12, v56
	v_or_b32_e32 v85, 13, v56
	v_or_b32_e32 v86, 14, v56
	v_or_b32_e32 v87, 15, v56
	v_mov_b32_e32 v9, v24
	v_xor_b32_e32 v42, 8, v94
	v_xor_b32_e32 v43, 8, v95
	v_xor_b32_e32 v44, 16, v95
	v_xor_b32_e32 v45, 24, v95
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s16, 0x3fb8aa3b
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s1, s18, s1
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s12, s17, s12
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v59, v10, v13, s7
	v_cndmask_b32_e64 v58, v8, v12, s7
	v_cndmask_b32_e64 v61, v7, v11, s7
	v_cndmask_b32_e64 v63, v13, v10, s7
	v_cndmask_b32_e64 v62, v12, v8, s7
	v_cndmask_b32_e64 v65, v11, v7, s7
	v_lshl_add_u32 v90, v1, 1, 0
	.loc	1 866 47                        ; attention.py:866:47
	v_subrev_nc_u32_e32 v92, s20, v5
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v105, 0, v43
	v_dual_mov_b32 v17, v24 :: v_dual_add_nc_u32 v104, 0, v42
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v107, 0, v45
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v106, 0, v44
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v12, v24
	v_dual_mov_b32 v13, v24 :: v_dual_mov_b32 v130, 0xff800000
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_or_b32_e32 v96, 18, v89
	v_or_b32_e32 v97, 20, v89
	v_or_b32_e32 v98, 22, v89
	v_or_b32_e32 v99, 24, v89
	v_or_b32_e32 v100, 26, v89
	v_or_b32_e32 v101, 28, v89
	v_or_b32_e32 v102, 30, v89
	v_mov_b32_e32 v109, v24
	v_xor_b32_e32 v108, 64, v103
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v111, v32, v73
	v_add_nc_u32_e32 v112, v32, v74
	v_add_nc_u32_e32 v113, v32, v75
	v_add_nc_u32_e32 v114, v32, v76
	v_add_nc_u32_e32 v115, v32, v77
	v_add_nc_u32_e32 v116, v32, v78
	v_add_nc_u32_e32 v117, v32, v79
	v_add_nc_u32_e32 v118, v32, v80
	v_add_nc_u32_e32 v119, v32, v81
	v_add_nc_u32_e32 v120, v32, v82
	v_add_nc_u32_e32 v121, v32, v83
	v_add_nc_u32_e32 v122, v32, v84
	v_add_nc_u32_e32 v123, v32, v85
	v_add_nc_u32_e32 v124, v32, v86
	v_add_nc_u32_e32 v125, v32, v87
	v_add_nc_u32_e32 v126, v32, v56
	s_mov_b32 s40, 0
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s6, s19, s6
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	s_add_i32 s72, s1, s12
	s_lshl_b32 s68, s39, 3
	s_lshl_b32 s69, s39, 4
	s_mul_i32 s70, s39, 24
	s_mov_b32 s71, 0x76543210
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	s_mov_b32 s46, s40
	s_mov_b32 s47, s40
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_mov_b32 s62, s54
	s_mov_b32 s63, s55
	s_and_b32 s61, s11, 0xffff
	s_mov_b32 s56, s14
	s_mov_b32 s60, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s57, s15
	s_add_i32 s72, s72, s6
	.loc	1 818 13                        ; attention.py:818:13
	s_waitcnt vmcnt(0)
	v_mad_u64_u32 v[66:67], null, s39, v35, v[33:34]
	v_and_b32_e32 v33, 0x750031, v38
	v_lshl_or_b32 v35, v36, 8, v36
	v_mov_b32_e32 v20, v24
	v_and_b32_e32 v36, 0x540054, v37
	v_and_b32_e32 v37, 0x760076, v39
	v_lshl_or_b32 v33, v33, 4, v33
	v_and_b32_e32 v35, 0x750031, v35
	v_mov_b32_e32 v21, v24
	v_lshl_or_b32 v36, v36, 4, v36
	v_lshl_or_b32 v37, v37, 4, v37
	v_and_b32_e32 v110, 0x7050301, v33
	v_lshl_or_b32 v33, v35, 4, v35
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v34, 16, v34
	v_dual_mov_b32 v22, v24 :: v_dual_and_b32 v67, 0x5040504, v36
	v_dual_mov_b32 v23, v24 :: v_dual_and_b32 v68, 0x7060706, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v8, v24 :: v_dual_and_b32 v127, 0x7050301, v33
	v_dual_mov_b32 v11, v24 :: v_dual_mul_f32 v128, s3, v34
	s_branch .LBB0_6
.LBB0_5:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 31 is_stmt 0                ; attention.py:0:31
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	v_and_b16 v53.l, 0xff, v53.l
	v_and_b16 v53.h, 0xff, v53.h
	v_and_b16 v49.h, 0xff, v49.h
	v_and_b16 v131.h, 0xff, v51.l
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v48.l, 0xff, v48.l
	v_and_b16 v52.l, 0xff, v52.l
	v_and_b16 v50.l, 0xff, v50.l
	v_and_b16 v50.h, 0xff, v50.h
	v_and_b16 v49.l, 0xff, v49.l
	v_and_b16 v48.h, 0xff, v48.h
	v_cmp_ne_u16_e64 s10, 0, v49.h
	v_cmp_ne_u16_e64 s15, 0, v53.h
	v_cmp_ne_u16_e64 s16, 0, v53.l
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v135.h, v134.l
	v_mov_b16_e64 v134.l, v51.l
	v_mov_b16_e64 v134.h, v133.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v151, v128, v32
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v32.l, 0xff, v54.l
	v_cmp_ne_u16_e64 s3, 0, v48.l
	v_and_b16 v54.h, 0xff, v54.h
	v_and_b16 v55.l, 0xff, v55.l
	v_and_b16 v52.h, 0xff, v52.h
	v_and_b16 v132.h, 0xff, v51.h
	v_cmp_ne_u16_e64 s1, 0, v48.h
	v_cmp_ne_u16_e64 s8, 0, v49.l
	v_cmp_ne_u16_e64 s17, 0, v50.h
	v_cmp_ne_u16_e64 s18, 0, v50.l
	v_cmp_ne_u16_e64 s20, 0, v131.h
	v_cmp_ne_u16_e64 s14, 0, v52.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s13, s13, s10
	s_and_b32 s15, s33, s15
	s_and_b32 s16, s34, s16
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v147.l, v51.l
	v_mov_b16_e64 v147.h, v131.l
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s25, 0, v32.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_cndmask_b32_e64 v32, 0, 1, s13
	v_cndmask_b32_e64 v49, 0, 1, s15
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v38, v128, v38
	v_mul_f32_e32 v153, v128, v34
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v34, 0, 1, s16
	s_and_b32 s9, s9, s3
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_and_b16 v55.h, 0xff, v55.h
	v_cmp_ne_u16_e64 s19, 0, v132.h
	v_cmp_ne_u16_e64 s12, 0, v52.h
	v_cmp_ne_u16_e64 s22, 0, v55.l
	v_cmp_ne_u16_e64 s23, 0, v54.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s6, s6, s1
	s_and_b32 s11, s11, s8
	s_and_b32 s14, s31, s14
	s_and_b32 s17, s21, s17
	s_and_b32 s18, s26, s18
	s_and_b32 s21, s28, s20
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v136.h, v135.l
	v_mov_b16_e64 v135.l, v51.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v152, v128, v33
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v33, 0, 1, s9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v148.h, v146.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v146, v35
	v_cvt_f32_i32_e32 v149, v36
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v36, 0, 1, s6
	v_cndmask_b32_e64 v35, 0, 1, s11
	v_cndmask_b32_e64 v48, 0, 1, s14
	v_cndmask_b32_e64 v52, 0, 1, s18
	v_cndmask_b32_e64 v54, 0, 1, s21
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v49.l
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v55.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s12, s30, s12
	s_and_b32 s19, s27, s19
	s_and_b32 s20, s35, s22
	s_and_b32 s22, s36, s23
	s_and_b32 s25, s38, s25
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v150, v37
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v37, 0, 1, s12
	v_cndmask_b32_e64 v50, 0, 1, s17
	v_cndmask_b32_e64 v53, 0, 1, s19
	v_cndmask_b32_e64 v131, 0, 1, s22
	v_cndmask_b32_e64 v154, 0, 1, s25
	v_lshlrev_b16 v32.h, 8, v33.l
	v_mov_b16_e32 v33.l, v36.l
	v_mov_b16_e32 v36.l, v48.l
	v_or_b16 v48.h, v35.l, v32.l
	v_mov_b16_e32 v32.l, v54.l
	v_or_b16 v49.h, v34.l, v33.h
	v_mov_b16_e32 v34.l, v52.l
	s_and_b32 s23, s37, s24
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v133.h, v132.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v55, 0, 1, s20
	v_cndmask_b32_e64 v132, 0, 1, s23
	v_or_b16 v48.l, v33.l, v32.h
	v_lshlrev_b16 v32.h, 8, v36.l
	v_mov_b16_e32 v33.l, v37.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_mov_b16_e64 v35.l, v154.l
	v_mov_b16_e32 v36.l, v53.l
	v_mov_b16_e64 v37.l, v131.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v50.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e64 v35.l, v132.l
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v55.l
	v_or_b16 v49.l, v33.l, v32.h
	v_or_b16 v32.h, v36.l, v32.l
	v_or_b16 v32.l, v34.l, v33.h
	v_or_b16 v33.h, v35.l, v34.h
	v_or_b16 v33.l, v37.l, v35.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v133.l, v51.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v36, v32, v48, v110
	v_perm_b32 v32, v32, v48, v127
	v_perm_b32 v37, v33, v49, v110
	v_perm_b32 v33, v33, v49, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v148.l, v51.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v36, v70, v36
	ds_bpermute_b32 v32, v72, v32
	ds_bpermute_b32 v37, v70, v37
	ds_bpermute_b32 v33, v72, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_mul_f32_e32 v48, v128, v150
	v_mul_f32_e32 v39, v128, v39
	v_mul_f32_e32 v35, v128, v149
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v145.h, v144.l
	v_mov_b16_e64 v144.l, v51.l
	v_mov_b16_e64 v144.h, v143.l
	v_mov_b16_e64 v142.h, v141.l
	v_mov_b16_e64 v141.l, v51.l
	v_mov_b16_e64 v141.h, v140.l
	v_mov_b16_e64 v140.l, v51.l
	v_mov_b16_e64 v140.h, v139.l
	v_mov_b16_e64 v139.l, v51.l
	v_mov_b16_e64 v139.h, v138.l
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v131, v32, v36, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v128, v146
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v138.l, v51.l
	v_mov_b16_e64 v138.h, v137.l
	v_mov_b16_e64 v137.h, v136.l
	v_mov_b16_e64 v136.l, v51.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v44, v44
	v_dual_mul_f32 v55, v34, v135 :: v_dual_mul_f32 v132, v39, v148
	v_dual_mul_f32 v34, v35, v134 :: v_dual_mul_f32 v45, v128, v45
	v_mul_f32_e32 v42, v128, v42
	v_mul_f32_e32 v46, v128, v46
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v134, v36, v32, s7
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v35, v48, v133 :: v_dual_mul_f32 v48, v38, v147
	v_dual_mul_f32 v47, v128, v47 :: v_dual_mul_f32 v54, v153, v136
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v133, v33, v37, s7
	v_cndmask_b32_e64 v36, v37, v33, s7
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v51.h, v145.l
	v_mov_b16_e64 v145.l, v51.l
	v_mov_b16_e64 v143.l, v51.l
	v_mov_b16_e64 v143.h, v142.l
	v_mov_b16_e64 v142.l, v51.l
	v_mov_b16_e64 v137.l, v51.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_dual_mul_f32 v43, v128, v43 :: v_dual_mul_f32 v52, v46, v140
	v_mul_f32_e32 v41, v128, v41
	v_dual_mul_f32 v44, v128, v44 :: v_dual_mul_f32 v53, v47, v139
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v33, 0x100, v131
	v_and_b32_e32 v37, 1, v133
	v_and_b32_e32 v46, 0x100, v134
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v50, v43, v143 :: v_dual_and_b32 v47, 1, v36
	v_dual_mul_f32 v40, v128, v40 :: v_dual_mul_f32 v41, v41, v145
	v_mul_f32_e32 v43, v45, v141
	v_dual_mul_f32 v49, v42, v144 :: v_dual_mul_f32 v42, v44, v142
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v135, 0x100, v36
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v45, v152, v137 :: v_dual_and_b32 v32, 1, v131
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v33
	v_cmp_eq_u32_e64 s24, 1, v37
	v_cmp_eq_u32_e64 s10, 0, v46
	v_cmp_eq_u32_e64 s1, 1, v47
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v40, v51 :: v_dual_and_b32 v39, 1, v134
	v_mul_f32_e32 v44, v151, v138
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v38, 0x100, v133
	v_cmp_eq_u32_e64 s27, 1, v32
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v137, v41, 0xff800000, s28
	v_cndmask_b32_e64 v138, 0xff800000, v42, s24
	v_cndmask_b32_e64 v141, v45, 0xff800000, s10
	v_cndmask_b32_e64 v142, 0xff800000, v34, s1
	v_cndmask_b32_e64 v136, 0xff800000, v40, s27
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s8, 1, v39
	v_cmp_eq_u32_e64 s26, 0, v38
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, v141, v137, s7
	v_cndmask_b32_e64 v38, v137, v141, s7
	v_cndmask_b32_e64 v39, v142, v138, s7
	v_cndmask_b32_e64 v40, v138, v142, s7
	v_cndmask_b32_e64 v139, 0xff800000, v44, s8
	ds_bpermute_b32 v145, v103, v37
	ds_bpermute_b32 v146, v108, v38
	ds_bpermute_b32 v147, v103, v39
	ds_bpermute_b32 v148, v108, v40
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s3, 0, v135
	v_mad_u64_u32 v[32:33], null, s29, s39, v[66:67]
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v34, v139, v136, s7
	v_cndmask_b32_e64 v140, v43, 0xff800000, s26
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v135, v35, 0xff800000, s3
	v_cndmask_b32_e64 v35, v136, v139, s7
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v152, 0x1000000, v36
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v143, v103, v34
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v33, 1, v32
	v_add_lshl_u32 v34, v32, s68, 1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v144, v108, v35
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v35, v32, s69, 1
	v_add_lshl_u32 v32, v32, s70, 1
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v135, v140, s7
	v_cndmask_b32_e64 v42, v140, v135, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v37, 0x80000000, v34, s0
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e32 v157, v146, v145, vcc_lo
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v152
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v145, v145, v146 :: v_dual_and_b32 v152, 0x10000, v131
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e32 v146, v148, v147, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v33, 0x80000000, v33, s0
	v_cndmask_b32_e64 v40, 0x80000000, v35, s0
	v_cndmask_b32_e64 v44, 0x80000000, v32, s0
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v149, v103, v41
	ds_bpermute_b32 v150, v108, v42
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v151, 0x10000, v36
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[32:35], v33, s[60:63], 0 offen
	buffer_load_b128 v[36:39], v37, s[60:63], 0 offen
	buffer_load_b128 v[40:43], v40, s[60:63], 0 offen
	buffer_load_b128 v[44:47], v44, s[60:63], 0 offen
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v153, 0x10000, v134
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v147, v147, v148 :: v_dual_and_b32 v134, 0x1000000, v134
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s36, 0, v152
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v132, 0xff800000, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s33, 0, v153
	v_cmp_eq_u32_e64 s35, 0, v134
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v91, v91, v91
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v129
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v54, v54, 0xff800000, s33
	v_cndmask_b32_e64 v55, v55, 0xff800000, s35
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s66, s66, 32
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s66, s67
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v148, v150, v149, vcc_lo
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s29, 0, v151
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v149, v149, v150 :: v_dual_max_f32 v150, v143, v143
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v151, v48, 0xff800000, s29
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v48, 0x10000, v133
	v_and_b32_e32 v133, 0x1000000, v133
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s31, 0, v48
	v_cmp_eq_u32_e64 s34, 0, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v49, 0xff800000, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v49, 0x1000000, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v52, v52, 0xff800000, s31
	v_cndmask_b32_e64 v53, v53, 0xff800000, s34
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v153, v54, v133, s7
	v_cndmask_b32_e64 v154, v133, v54, s7
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s37, 0, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, v151, v52, s7
	v_cndmask_b32_e64 v131, v132, v53, s7
	v_cndmask_b32_e64 v134, v53, v132, s7
	v_cndmask_b32_e64 v152, v52, v151, s7
	v_cndmask_b32_e64 v155, v50, 0xff800000, s37
	ds_bpermute_b32 v49, v103, v153
	ds_bpermute_b32 v131, v103, v131
	ds_bpermute_b32 v134, v108, v134
	ds_bpermute_b32 v50, v108, v154
	ds_bpermute_b32 v153, v103, v48
	ds_bpermute_b32 v152, v108, v152
	v_cndmask_b32_e64 v48, v55, v155, s7
	v_cndmask_b32_e64 v154, v155, v55, s7
	ds_bpermute_b32 v156, v103, v48
	ds_bpermute_b32 v154, v108, v154
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v48, v144, v144
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v48, v150, v48
	v_max3_f32 v150, v155, v138, v140
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(5)
	v_dual_cndmask_b32 v158, v134, v131 :: v_dual_cndmask_b32 v131, v131, v134
	s_waitcnt lgkmcnt(4)
	v_dual_cndmask_b32 v159, v50, v49 :: v_dual_cndmask_b32 v160, v49, v50
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v147, v148, v149
	s_waitcnt lgkmcnt(2)
	v_max3_f32 v50, v153, v152, v158
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v134, v145, v159, v160
	v_max3_f32 v49, v49, v50, v131
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v50, v156, v154, v146
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v48, v48, v157, v134
	v_max_f32_e32 v134, v136, v137
	v_max3_f32 v48, v48, v50, v49
	v_max3_f32 v49, v142, v135, v151
	v_max3_f32 v50, v141, v54, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v134, v134, v133, v150
.Ltmp4:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v161, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v50, v49, v132
	v_max3_f32 v50, v52, v53, v139
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v161, v161 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v49, v134, v50, v49
	v_dual_max_f32 v50, v161, v161 :: v_dual_cndmask_b32 v161, v144, v143
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v143, v143, v144, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v134, v49, s71, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v50, v48, v50
.Ltmp11:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v48, v130, v130
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v49, v129, v49, v134
	v_max_f32_e32 v91, v91, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max_f32_e32 v48, v48, v50
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e32 v144, v152, v153, vcc_lo
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v134, v129, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_dual_cndmask_b32 v152, v153, v152 :: v_dual_sub_f32 v147, v147, v91
	v_cndmask_b32_e32 v153, v154, v156, vcc_lo
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v150, v130, v48
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v134, v134
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_dual_cndmask_b32 v154, v156, v154 :: v_dual_sub_f32 v145, v145, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v153, v153, v91
	v_dual_sub_f32 v156, v160, v91 :: v_dual_sub_f32 v53, v53, v49
	v_dual_sub_f32 v154, v154, v91 :: v_dual_sub_f32 v139, v139, v49
	v_dual_sub_f32 v131, v131, v91 :: v_dual_sub_f32 v138, v138, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v129, 0, v134, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v134, v143, v91 :: v_dual_sub_f32 v137, v137, v49
	v_sub_f32_e32 v143, v157, v91
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v150, v150
	.loc	1 885 25 is_stmt 0              ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v130
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_dual_sub_f32 v130, v161, v91 :: v_dual_sub_f32 v155, v155, v49
	v_dual_sub_f32 v157, v158, v91 :: v_dual_sub_f32 v140, v140, v49
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v153, v153
	v_exp_f32_e32 v154, v154
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v146, v146, v91 :: v_dual_sub_f32 v141, v141, v49
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v50, 0, v150, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v150, v159, v91 :: v_dual_sub_f32 v133, v133, v49
	v_dual_sub_f32 v144, v144, v91 :: v_dual_sub_f32 v135, v135, v49
	v_dual_sub_f32 v152, v152, v91 :: v_dual_sub_f32 v151, v151, v49
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v143, v143
	v_exp_f32_e32 v145, v145
	v_exp_f32_e32 v150, v150
	v_exp_f32_e32 v156, v156
	v_exp_f32_e32 v157, v157
	v_exp_f32_e32 v131, v131
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v148, v148, v91 :: v_dual_sub_f32 v55, v55, v49
	v_dual_sub_f32 v149, v149, v91 :: v_dual_sub_f32 v136, v136, v49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v146, v146
	v_exp_f32_e32 v147, v147
	v_exp_f32_e32 v144, v144
	v_exp_f32_e32 v152, v152
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v153, 0, v153, s19
	v_cndmask_b32_e64 v154, 0, v154, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v52, v49
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v148, v148
	v_exp_f32_e32 v149, v149
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, 0, v131, s25
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v158, v52
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v130, s6
	v_cndmask_b32_e64 v130, 0, v134, s9
	v_cndmask_b32_e64 v134, 0, v143, s11
	v_cndmask_b32_e64 v143, 0, v145, s13
	v_cndmask_b32_e64 v145, 0, v150, s17
	v_cndmask_b32_e64 v150, 0, v156, s18
	v_cndmask_b32_e64 v156, 0, v157, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v54, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v146, 0, v146, s12
	v_cndmask_b32_e64 v147, 0, v147, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v132, v49
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, 0, v144, s20
	v_cndmask_b32_e64 v152, 0, v152, s22
.Ltmp12:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v131, v156, v131
.Ltmp13:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v136, v136
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v148, 0, v148, s15
	v_cndmask_b32_e64 v149, 0, v149, s16
.Ltmp14:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v130 :: v_dual_mul_f32 v25, v25, v129
	v_add_f32_e32 v130, v134, v143
	v_dual_add_f32 v134, v145, v150 :: v_dual_mul_f32 v27, v27, v129
	v_dual_add_f32 v145, v146, v147 :: v_dual_add_f32 v144, v144, v152
.Ltmp15:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v129
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v132, v132
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v142, v142, v49 :: v_dual_add_f32 v131, v144, v131
.Ltmp16:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v143, v153, v154 :: v_dual_add_f32 v146, v148, v149
.Ltmp17:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v144, v54, 0, s33
	v_cndmask_b32_e64 v54, v137, 0, s28
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v155, v155
.Ltmp18:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v130 :: v_dual_mul_f32 v31, v31, v129
	v_dual_add_f32 v130, v134, v143 :: v_dual_mul_f32 v17, v17, v129
	v_dual_add_f32 v134, v145, v146 :: v_dual_mul_f32 v19, v19, v129
.Ltmp19:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v145, v55, 0, s35
	v_cndmask_b32_e64 v146, v132, 0, s30
	v_cndmask_b32_e64 v55, 0, v136, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v132.l, v54.h
	v_mov_b16_e64 v132.h, v51.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v140, v140
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v130 :: v_dual_mul_f32 v21, v21, v129
	v_dual_add_f32 v130, v134, v131 :: v_dual_mul_f32 v23, v23, v129
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp21:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v13, v13, v129 :: v_dual_and_b32 v132, 1, v132
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v136.l, v55.h
	v_mov_b16_e64 v136.h, v51.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v138, v138
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v130 :: v_dual_mul_f32 v9, v9, v129
.Ltmp23:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, v133, 0, s36
	v_cndmask_b32_e64 v133, v155, 0, s37
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v11, v11, v129 :: v_dual_and_b32 v136, 1, v136
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v54, v132, 0x7fff
	v_cmp_o_f32_e64 s6, v54, v54
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v129
	v_mul_f32_e32 v26, v26, v129
	v_mul_f32_e32 v28, v28, v129
	v_mul_f32_e32 v30, v30, v129
	v_mul_f32_e32 v16, v16, v129
	v_mul_f32_e32 v18, v18, v129
	v_mul_f32_e32 v20, v20, v129
	v_mul_f32_e32 v22, v22, v129
	v_mul_f32_e32 v8, v8, v129
	v_mul_f32_e32 v10, v10, v129
	v_mul_f32_e32 v12, v12, v129
	v_mul_f32_e32 v14, v14, v129
	v_mul_f32_e32 v0, v0, v129
	v_mul_f32_e32 v1, v1, v129
	v_mul_f32_e32 v2, v2, v129
	v_mul_f32_e32 v3, v3, v129
	v_mul_f32_e32 v4, v4, v129
	v_mul_f32_e32 v5, v5, v129
	v_mul_f32_e32 v6, v6, v129
	v_mul_f32_e32 v7, v7, v129
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s9, v55, v55
	v_mov_b16_e64 v54.l, v133.h
	v_mov_b16_e32 v54.h, v51.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v129
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v129, v55, v136, 0x7fff
	v_cndmask_b16 v136.h, 0x7fff, v132.h, s6
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v132, v140, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v55.l, v130.h
	v_mov_b16_e32 v55.h, v51.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.l, 0x7fff, v129.h, s9
	v_and_b32_e32 v54, 1, v54
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v129, 0, v138, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v132.h
	v_mov_b16_e64 v137.h, v51.l
	v_and_b32_e32 v55, 1, v55
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v54, v133, v54, 0x7fff
	v_cmp_o_f32_e64 s6, v133, v133
	v_mov_b16_e64 v133.l, v129.h
	v_mov_b16_e64 v133.h, v51.l
	v_and_b32_e32 v137, 1, v137
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v141, v141
	v_exp_f32_e32 v131, v142
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v142, v158, 0, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_add3_u32 v55, v130, v55, 0x7fff
	v_cmp_o_f32_e64 s9, v130, v130
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v143, v53, 0, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v149.h, 0x7fff, v54.h, s6
	v_and_b32_e32 v54, 1, v133
	v_add3_u32 v130, v132, v137, 0x7fff
	v_cmp_o_f32_e64 s6, v132, v132
	v_cndmask_b16 v149.l, 0x7fff, v55.h, s9
	v_mov_b16_e64 v55.l, v142.h
	v_mov_b16_e32 v55.h, v51.l
	v_add3_u32 v132, v129, v54, 0x7fff
	v_cndmask_b16 v54.h, 0x7fff, v130.h, s6
	v_mov_b16_e64 v130.l, v143.h
	v_mov_b16_e64 v130.h, v51.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v139, s8
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v55, 1, v55
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, v141, 0, s10
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v129, v129
	v_and_b32_e32 v129, 1, v130
	v_mov_b16_e64 v138.l, v137.h
	v_mov_b16_e64 v138.h, v51.l
	v_add3_u32 v130, v142, v55, 0x7fff
	v_mov_b16_e64 v55.l, v133.h
	v_mov_b16_e32 v55.h, v51.l
	v_add3_u32 v129, v143, v129, 0x7fff
	v_cmp_o_f32_e64 s8, v143, v143
	v_cmp_o_f32_e64 s9, v142, v142
	v_and_b32_e32 v138, 1, v138
	v_and_b32_e32 v139, 1, v55
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v135
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v54.l, 0x7fff, v132.h, s6
	v_cndmask_b16 v55.h, 0x7fff, v129.h, s8
	v_cndmask_b16 v55.l, 0x7fff, v130.h, s9
	v_add3_u32 v130, v137, v138, 0x7fff
	v_mov_b16_e64 v132.l, v145.h
	v_mov_b16_e64 v132.h, v51.l
	v_cmp_o_f32_e64 s8, v137, v137
	v_add3_u32 v129, v133, v139, 0x7fff
	v_cmp_o_f32_e64 s6, v133, v133
	v_mov_b16_e64 v133.l, v144.h
	v_mov_b16_e64 v133.h, v51.l
	v_and_b32_e32 v132, 1, v132
	v_cndmask_b16 v129.l, 0x7fff, v130.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v131, s1
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s1, v145, v145
	v_and_b32_e32 v131, 1, v133
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, v134, 0, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v145, v132, 0x7fff
	v_mov_b16_e64 v134.l, v130.h
	v_mov_b16_e64 v134.h, v51.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v151
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v138, 0, v88
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v51.h, 0x7fff, v132.h, s1
	v_add3_u32 v131, v144, v131, 0x7fff
	v_and_b32_e32 v132, 1, v134
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v138, v[32:35]
	s_waitcnt vmcnt(2)
	ds_store_b128 v138, v[36:39] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v138, v[40:43] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v138, v[44:47] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v132, v130, v132, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v34, v90 offset:512
	ds_load_u16_d16 v41, v90 offset:288
	ds_load_u16_d16 v132, v90 offset:608
	ds_load_u16_d16 v131, v90 offset:352
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v135, v135, 0, s29
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v137.l, v133.h
	v_mov_b16_e64 v137.h, v51.l
	v_mov_b16_e64 v139.l, v146.h
	v_mov_b16_e64 v139.h, v51.l
	v_cmp_o_f32_e64 s1, v144, v144
	v_cndmask_b16 v129.h, 0x7fff, v129.h, s6
	v_and_b32_e32 v134, 1, v137
	v_mov_b16_e64 v137.l, v135.h
	v_and_b32_e32 v33, 1, v139
	v_cmp_o_f32_e64 s6, v130, v130
	s_waitcnt lgkmcnt(0)
	v_cndmask_b16 v51.l, 0x7fff, v131.h, s1
	v_add3_u32 v35, v133, v134, 0x7fff
	v_and_b32_e32 v32, 1, v137
	v_add3_u32 v33, v146, v33, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v35, v90 offset:768
	ds_load_u16_d16 v42, v90 offset:544
	ds_load_u16_d16 v141, v90 offset:832
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v133, v133
	v_add3_u32 v32, v135, v32, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v32, v90
	ds_load_u16_d16 v40, v90 offset:32
	ds_load_u16_d16 v140, v90 offset:576
	ds_load_u16_d16 v33, v90 offset:256
	ds_load_u16_d16 v138, v90 offset:64
	ds_load_u16_d16 v139, v90 offset:320
	ds_load_u16_d16_hi v131, v90 offset:480
	ds_load_u16_d16 v130, v90 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v146, v146
	v_cmp_o_f32_e64 s9, v135, v135
	v_permlanex16_b32 v36, v136, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v37, v149, s71, 0xfedcba98 op_sel:[1,0]
	s_waitcnt lgkmcnt(10)
	v_cndmask_b16 v191.h, 0x7fff, v35.h, s3
	v_cndmask_b16 v191.l, 0x7fff, v132.h, s6
	s_waitcnt lgkmcnt(4)
	v_cndmask_b16 v193.h, 0x7fff, v33.h, s8
	v_cndmask_b16 v193.l, 0x7fff, v32.h, s9
	v_perm_b32 v146, v36, v136, v67
	v_perm_b32 v147, v36, v136, v68
	v_perm_b32 v148, v37, v149, v67
	v_perm_b32 v149, v37, v149, v68
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16_hi v32, v90 offset:128
	ds_load_u16_d16_hi v40, v90 offset:160
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v138, v90 offset:192
	s_waitcnt lgkmcnt(3)
	ds_load_u16_d16_hi v130, v90 offset:224
	ds_load_u16_d16_hi v140, v90 offset:704
	ds_load_u16_d16_hi v34, v90 offset:640
	ds_load_u16_d16_hi v33, v90 offset:384
	ds_load_u16_d16_hi v41, v90 offset:416
	ds_load_u16_d16_hi v139, v90 offset:448
	ds_load_u16_d16 v142, v90 offset:1088
	ds_load_u16_d16 v36, v90 offset:1024
	ds_load_u16_d16_hi v35, v90 offset:896
	ds_load_u16_d16_hi v42, v90 offset:672
	ds_load_u16_d16 v43, v90 offset:800
	ds_load_u16_d16_hi v141, v90 offset:960
	ds_load_u16_d16 v133, v90 offset:864
	ds_load_u16_d16_hi v132, v90 offset:736
	ds_load_u16_d16 v143, v90 offset:1344
	ds_load_u16_d16 v37, v90 offset:1280
	ds_load_u16_d16 v44, v90 offset:1056
	ds_load_u16_d16 v134, v90 offset:1120
	ds_load_u16_d16 v144, v90 offset:1600
	ds_load_u16_d16 v38, v90 offset:1536
	ds_load_u16_d16 v45, v90 offset:1312
	ds_load_u16_d16 v135, v90 offset:1376
	ds_load_u16_d16 v145, v90 offset:1856
	ds_load_u16_d16 v39, v90 offset:1792
	ds_load_u16_d16 v46, v90 offset:1568
	ds_load_u16_d16 v136, v90 offset:1632
	ds_load_u16_d16 v154, v90 offset:2112
	ds_load_u16_d16 v162, v90 offset:2048
	ds_load_u16_d16 v47, v90 offset:1824
	ds_load_u16_d16 v137, v90 offset:1888
	ds_load_u16_d16 v163, v90 offset:2304
	ds_load_u16_d16 v170, v90 offset:2080
	ds_load_u16_d16 v155, v90 offset:2368
	ds_load_u16_d16 v178, v90 offset:2144
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v142, v90 offset:1216
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v36, v90 offset:1152
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v43, v90 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v133, v90 offset:992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v143, v90 offset:1472
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v37, v90 offset:1408
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v44, v90 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v134, v90 offset:1248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v90 offset:1728
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v38, v90 offset:1664
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v45, v90 offset:1440
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v135, v90 offset:1504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v145, v90 offset:1984
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v39, v90 offset:1920
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v46, v90 offset:1696
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v90 offset:1760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v154, v90 offset:2240
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v162, v90 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v47, v90 offset:1952
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v90 offset:2016
	ds_load_u16_d16 v156, v90 offset:2624
	ds_load_u16_d16 v164, v90 offset:2560
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v163, v90 offset:2432
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v170, v90 offset:2208
	ds_load_u16_d16 v171, v90 offset:2336
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v155, v90 offset:2496
	ds_load_u16_d16 v179, v90 offset:2400
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v178, v90 offset:2272
	ds_load_u16_d16 v157, v90 offset:2880
	ds_load_u16_d16 v165, v90 offset:2816
	ds_load_u16_d16 v172, v90 offset:2592
	ds_load_u16_d16 v180, v90 offset:2656
	ds_load_u16_d16 v158, v90 offset:3136
	ds_load_u16_d16 v166, v90 offset:3072
	ds_load_u16_d16 v173, v90 offset:2848
	ds_load_u16_d16 v181, v90 offset:2912
	ds_load_u16_d16 v159, v90 offset:3392
	ds_load_u16_d16 v167, v90 offset:3328
	ds_load_u16_d16 v174, v90 offset:3104
	ds_load_u16_d16 v182, v90 offset:3168
	ds_load_u16_d16 v160, v90 offset:3648
	ds_load_u16_d16 v168, v90 offset:3584
	ds_load_u16_d16 v175, v90 offset:3360
	ds_load_u16_d16 v183, v90 offset:3424
	ds_load_u16_d16 v161, v90 offset:3904
	ds_load_u16_d16 v169, v90 offset:3840
	ds_load_u16_d16 v176, v90 offset:3616
	ds_load_u16_d16 v184, v90 offset:3680
	ds_load_u16_d16 v177, v90 offset:3872
	ds_load_u16_d16 v185, v90 offset:3936
.Ltmp24:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v53, v52
.Ltmp25:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v151, v54, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v153, v55, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v156, v90 offset:2752
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v164, v90 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v171, v90 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v179, v90 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v157, v90 offset:3008
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v165, v90 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v172, v90 offset:2720
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v180, v90 offset:2784
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v158, v90 offset:3264
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v166, v90 offset:3200
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v173, v90 offset:2976
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v181, v90 offset:3040
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v159, v90 offset:3520
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v167, v90 offset:3456
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v174, v90 offset:3232
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v182, v90 offset:3296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v160, v90 offset:3776
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v168, v90 offset:3712
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v175, v90 offset:3488
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v183, v90 offset:3552
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v161, v90 offset:4032
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v169, v90 offset:3968
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v176, v90 offset:3744
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v184, v90 offset:3808
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v177, v90 offset:4000
.Ltmp26:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v53, v53 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v150, v151, v54, v67
	v_perm_b32 v151, v151, v54, v68
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v185, v90 offset:4064
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v152, v153, v55, v67
	v_perm_b32 v153, v153, v55, v68
	v_permlanex16_b32 v187, v129, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v189, v51, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v192, v191, s71, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v194, v193, s71, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[32:39], v[146:153], v[24:31]
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v32, v52, v53
.Ltmp29:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v186, v187, v129, v67
	v_perm_b32 v187, v187, v129, v68
	v_perm_b32 v188, v189, v51, v67
	v_perm_b32 v189, v189, v51, v68
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v32, v109, v50
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v190, v192, v191, v67
	v_perm_b32 v191, v192, v191, v68
	v_perm_b32 v192, v194, v193, v67
	v_perm_b32 v193, v194, v193, v68
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[138:145], v[146:153], v[8:15]
	v_wmma_f32_16x16x16_bf16 v[0:7], v[130:137], v[146:153], v[0:7]
	v_mov_b32_e32 v129, v49
	v_mov_b32_e32 v109, v32
	v_wmma_f32_16x16x16_bf16 v[16:23], v[40:47], v[146:153], v[16:23]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[162:169], v[186:193], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[154:161], v[186:193], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[178:185], v[186:193], v[0:7]
	v_mov_b32_e32 v130, v48
	v_wmma_f32_16x16x16_bf16 v[16:23], v[170:177], v[186:193], v[16:23]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_39
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s29, s66, s65
	v_or_b32_e32 v38, 2, v89
	v_mad_u64_u32 v[32:33], null, s29, s64, v[57:58]
	v_or_b32_e32 v39, 4, v89
	v_or_b32_e32 v40, 6, v89
	v_or_b32_e32 v41, 8, v89
	.loc	1 823 32                        ; attention.py:823:32
	v_add_nc_u32_e32 v36, 0, v94
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v37, s66, v89, 1
	v_or_b32_e32 v42, 10, v89
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s5
	v_or_b32_e32 v43, 12, v89
	v_or_b32_e32 v44, 14, v89
	v_or_b32_e32 v45, 16, v89
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v38, v38, s66, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[32:35], v32, s[52:55], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v39, v39, s66, 1
	v_add_lshl_u32 v40, v40, s66, 1
	v_add_lshl_u32 v41, v41, s66, 1
	v_add_lshl_u32 v46, v96, s66, 1
	v_add_lshl_u32 v47, v97, s66, 1
	v_add_lshl_u32 v48, v98, s66, 1
	v_add_lshl_u32 v49, v99, s66, 1
	v_add_lshl_u32 v50, v100, s66, 1
	v_add_lshl_u32 v51, v101, s66, 1
	v_add_lshl_u32 v52, v102, s66, 1
	v_add_lshl_u32 v42, v42, s66, 1
	v_add_lshl_u32 v43, v43, s66, 1
	v_add_lshl_u32 v44, v44, s66, 1
	v_add_lshl_u32 v45, v45, s66, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 870 25                        ; attention.py:870:25
	s_add_i32 s8, s72, s66
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[32:33]
	ds_store_b64 v104, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v145, v37, s[56:59], 0 offen
	buffer_load_u16 v144, v38, s[56:59], 0 offen
	buffer_load_u16 v143, v39, s[56:59], 0 offen
	buffer_load_u16 v142, v40, s[56:59], 0 offen
	buffer_load_u16 v141, v41, s[56:59], 0 offen
	buffer_load_u16 v140, v42, s[56:59], 0 offen
	buffer_load_u16 v139, v43, s[56:59], 0 offen
	buffer_load_u16 v138, v44, s[56:59], 0 offen
	buffer_load_u16 v137, v45, s[56:59], 0 offen
	buffer_load_u16 v136, v46, s[56:59], 0 offen
	buffer_load_u16 v135, v47, s[56:59], 0 offen
	buffer_load_u16 v134, v48, s[56:59], 0 offen
	buffer_load_u16 v133, v49, s[56:59], 0 offen
	buffer_load_u16 v132, v50, s[56:59], 0 offen
	buffer_load_u16 v131, v51, s[56:59], 0 offen
	buffer_load_u16 v146, v52, s[56:59], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v55, s47 :: v_dual_add_nc_u32 v32, 0, v95
	v_mov_b32_e32 v53, s45
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[147:150], v32 offset1:1
	ds_load_2addr_stride64_b64 v[151:154], v105 offset1:1
	ds_load_2addr_stride64_b64 v[155:158], v106 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v54, s46 :: v_dual_mov_b32 v51, s43
	v_dual_mov_b32 v52, s44 :: v_dual_mov_b32 v49, s41
	v_mov_b32_e32 v50, s42
	v_mov_b32_e32 v48, s40
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[159:162], v107 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[147:148], v[64:65], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[149:150], v[64:65], v[48:55] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_or_b32_e32 v48, s66, v56
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[151:152], v[62:63], v[40:47] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[32:39], v[153:154], v[62:63], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v48, v92
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[155:156], v[60:61], v[40:47] neg_lo:[1,1,0]
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v48, v93
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[32:39], v[157:158], v[60:61], v[32:39] neg_lo:[1,1,0]
	v_mov_b16_e32 v48.l, 0
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[159:160], v[58:59], v[40:47] neg_lo:[1,1,0]
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s1, s1, s3
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[32:39], v[161:162], v[58:59], v[32:39] neg_lo:[1,1,0]
	v_mov_b16_e32 v48.h, v48.l
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s6, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s3, s6
	s_cbranch_execz .LBB0_8
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v49, s8, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v50, 31, v49
	v_add_co_u32 v49, s1, s50, v49
	v_add_co_ci_u32_e64 v50, null, s51, v50, s1
	.loc	1 877 34                        ; attention.py:877:34
	global_load_d16_hi_u8 v48, v[49:50], off
.LBB0_8:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v49, s66, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v49, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v49, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s9, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s9
	s_cbranch_execz .LBB0_10
; %bb.9:                                ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v49, s8, v111
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v50, 31, v49
	v_add_co_u32 v49, s1, s50, v49
	v_add_co_ci_u32_e64 v50, null, s51, v50, s1
	global_load_d16_u8 v48, v[49:50], off
.LBB0_10:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v50, s66, v74
	v_mov_b16_e32 v49.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v50, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v50, v93
	v_mov_b16_e32 v49.l, v49.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s11
	s_cbranch_execz .LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v50, s8, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, s1, s50, v50
	v_add_co_ci_u32_e64 v51, null, s51, v51, s1
	global_load_d16_u8 v49, v[50:51], off
.LBB0_12:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v50, s66, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v50, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v50, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s13, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s13
	s_cbranch_execz .LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v50, s8, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v51, 31, v50
	v_add_co_u32 v50, s1, s50, v50
	v_add_co_ci_u32_e64 v51, null, s51, v51, s1
	global_load_d16_hi_u8 v49, v[50:51], off
.LBB0_14:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s66, v76
	v_mov_b16_e32 v50.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v51, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v51, v93
	v_mov_b16_e32 v50.h, v50.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s21, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s21
	s_cbranch_execz .LBB0_16
; %bb.15:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v51, s8, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s1, s50, v51
	v_add_co_ci_u32_e64 v52, null, s51, v52, s1
	global_load_d16_hi_u8 v50, v[51:52], off
.LBB0_16:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v51, s66, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v51, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v51, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s26, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s26
	s_cbranch_execz .LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v51, s8, v115
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v52, 31, v51
	v_add_co_u32 v51, s1, s50, v51
	v_add_co_ci_u32_e64 v52, null, s51, v52, s1
	global_load_d16_u8 v50, v[51:52], off
.LBB0_18:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s66, v78
	v_mov_b16_e32 v51.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v52, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v52, v93
	v_mov_b16_e32 v51.h, v51.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s27, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s27
	s_cbranch_execz .LBB0_20
; %bb.19:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v52, s8, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v53, 31, v52
	v_add_co_u32 v52, s1, s50, v52
	v_add_co_ci_u32_e64 v53, null, s51, v53, s1
	global_load_d16_hi_u8 v51, v[52:53], off
.LBB0_20:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v52, s66, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v52, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v52, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s28, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s28
	s_cbranch_execz .LBB0_22
; %bb.21:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v52, s8, v117
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v53, 31, v52
	v_add_co_u32 v52, s1, s50, v52
	v_add_co_ci_u32_e64 v53, null, s51, v53, s1
	global_load_d16_u8 v51, v[52:53], off
.LBB0_22:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s66, v80
	v_mov_b16_e32 v52.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v53, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v53, v93
	v_mov_b16_e32 v52.h, v52.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s30, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s30
	s_cbranch_execz .LBB0_24
; %bb.23:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v53, s8, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, s1, s50, v53
	v_add_co_ci_u32_e64 v54, null, s51, v54, s1
	global_load_d16_hi_u8 v52, v[53:54], off
.LBB0_24:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v53, s66, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v53, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v53, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s31, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s31
	s_cbranch_execz .LBB0_26
; %bb.25:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v53, s8, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v54, 31, v53
	v_add_co_u32 v53, s1, s50, v53
	v_add_co_ci_u32_e64 v54, null, s51, v54, s1
	global_load_d16_u8 v52, v[53:54], off
.LBB0_26:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s66, v82
	v_mov_b16_e32 v53.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v54, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v54, v93
	v_mov_b16_e32 v53.h, v53.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s33, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s33
	s_cbranch_execz .LBB0_28
; %bb.27:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s8, v120
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v55, 31, v54
	v_add_co_u32 v54, s1, s50, v54
	v_add_co_ci_u32_e64 v55, null, s51, v55, s1
	global_load_d16_hi_u8 v53, v[54:55], off
.LBB0_28:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v54, s66, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v54, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v54, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s34, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s34
	s_cbranch_execz .LBB0_30
; %bb.29:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s8, v121
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v55, 31, v54
	v_add_co_u32 v54, s1, s50, v54
	v_add_co_ci_u32_e64 v55, null, s51, v55, s1
	global_load_d16_u8 v53, v[54:55], off
.LBB0_30:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v55, s66, v84
	v_mov_b16_e32 v54.h, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v55, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v55, v93
	v_mov_b16_e32 v55.l, v54.h
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s35, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s35
	s_cbranch_execz .LBB0_32
; %bb.31:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v55, s8, v122
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v148, 31, v55
	v_add_co_u32 v147, s1, s50, v55
	v_add_co_ci_u32_e64 v148, null, s51, v148, s1
	global_load_d16_u8 v55, v[147:148], off
.LBB0_32:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v147, s66, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v147, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v147, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s36, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s36
	s_cbranch_execz .LBB0_34
; %bb.33:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v54, s8, v123
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v148, 31, v54
	v_add_co_u32 v147, s1, s50, v54
	v_add_co_ci_u32_e64 v148, null, s51, v148, s1
	global_load_d16_hi_u8 v54, v[147:148], off
.LBB0_34:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v147, s66, v86
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v54.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v147, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v147, v93
	v_mov_b16_e32 v55.h, v54.l
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s37, s4, s1
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s37
	s_cbranch_execz .LBB0_36
; %bb.35:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v147, s8, v124
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v148, 31, v147
	v_add_co_u32 v147, s1, s50, v147
	v_add_co_ci_u32_e64 v148, null, s51, v148, s1
	global_load_d16_hi_u8 v55, v[147:148], off
.LBB0_36:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s3
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_or_b32_e32 v147, s66, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v147, v92
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s3, v147, v93
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s1, s1, s3
	s_and_b32 s38, s4, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 877 34 is_stmt 1              ; attention.py:877:34
	s_and_saveexec_b32 s3, s38
	s_cbranch_execz .LBB0_5
; %bb.37:                               ;   in Loop: Header=BB0_6 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v147, s8, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v148, 31, v147
	v_add_co_u32 v147, s1, s50, v147
	v_add_co_ci_u32_e64 v148, null, s51, v148, s1
	global_load_d16_u8 v54, v[147:148], off
	s_branch .LBB0_5
.LBB0_38:
	.loc	1 0 34                          ; attention.py:0:34
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v32, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v6, v7
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v4, v7
	v_mov_b32_e32 v3, v7
	v_mov_b32_e32 v2, v7
	v_mov_b32_e32 v1, v7
	v_mov_b32_e32 v0, v7
	v_mov_b32_e32 v15, v7
	v_mov_b32_e32 v14, v7
	v_mov_b32_e32 v13, v7
	v_mov_b32_e32 v12, v7
	v_mov_b32_e32 v11, v7
	v_mov_b32_e32 v10, v7
	v_mov_b32_e32 v9, v7
	v_mov_b32_e32 v8, v7
	v_mov_b32_e32 v23, v7
	v_mov_b32_e32 v22, v7
	v_mov_b32_e32 v21, v7
	v_mov_b32_e32 v20, v7
	v_mov_b32_e32 v19, v7
	v_mov_b32_e32 v18, v7
	v_mov_b32_e32 v17, v7
	v_mov_b32_e32 v16, v7
	v_mov_b32_e32 v31, v7
	v_mov_b32_e32 v30, v7
	v_mov_b32_e32 v29, v7
	v_mov_b32_e32 v28, v7
	v_mov_b32_e32 v27, v7
	v_mov_b32_e32 v26, v7
	v_mov_b32_e32 v25, v7
	v_mov_b32_e32 v24, v7
.LBB0_39:                               ; %._crit_edge
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	ds_bpermute_b32 v37, v70, v32
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.h, 0
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v69
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s39, v71
	.loc	1 1049 17 is_stmt 1             ; attention.py:1049:17
	s_and_b32 s49, s49, 0xffff
	s_mov_b32 s51, 0x31027000
	.loc	1 1049 36 is_stmt 0             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v36, 16, v33
	v_or_b32_e32 v35, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s39, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v34, 48, v33
	s_mov_b32 s50, 0x7ffffffe
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s39, v36
	v_cmp_gt_i32_e64 s1, s39, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s0, s39, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v40, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v44, null, v37, v37, v27
	v_rcp_f32_e32 v45, v40
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v47, null, v37, v37, v26
	v_rcp_f32_e32 v51, v44
	v_div_scale_f32 v53, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v54, v47
	v_div_scale_f32 v41, vcc_lo, v25, v37, v25
	v_fma_f32 v52, -v40, v45, 1.0
	v_fma_f32 v55, -v42, v48, 1.0
	v_div_scale_f32 v43, s3, v24, v37, v24
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v57, -v44, v51, 1.0
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v48, v55, v48
	v_rcp_f32_e32 v55, v53
	v_div_scale_f32 v46, s8, v27, v37, v27
	v_div_scale_f32 v50, null, v37, v37, v29
	v_fma_f32 v59, -v47, v54, 1.0
	v_dual_mul_f32 v60, v43, v48 :: v_dual_fmac_f32 v51, v57, v51
	v_mul_f32_e32 v58, v41, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v56, v50
	v_fma_f32 v62, -v53, v55, 1.0
	v_fmac_f32_e32 v54, v59, v54
	v_fma_f32 v59, -v42, v60, v43
	v_mul_f32_e32 v63, v46, v51
	v_fma_f32 v57, -v40, v58, v41
	v_fmac_f32_e32 v55, v62, v55
	v_div_scale_f32 v49, s9, v26, v37, v26
	v_fmac_f32_e32 v60, v59, v48
	v_fma_f32 v59, -v44, v63, v46
	v_fmac_f32_e32 v58, v57, v45
	v_fma_f32 v61, -v50, v56, 1.0
	v_div_scale_f32 v52, s10, v29, v37, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v63, v59, v51
	v_fma_f32 v40, -v40, v58, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v61, v56
	v_mul_f32_e32 v57, v49, v54
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v40, v45, v58
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v25, v40, v37, v25
	v_mul_f32_e32 v40, v52, v56
	v_fma_f32 v41, -v47, v57, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v57, v41, v54
	v_fma_f32 v42, -v42, v60, v43
	v_fma_f32 v41, -v44, v63, v46
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, s11, v28, v37, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v48, v60
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v45, v43, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v47, v57, v49
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v24, v41, v51, v63
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v54, v57
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v25, v25, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v27, v24, v37, v27
	v_fma_f32 v41, -v50, v40, v52
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v42, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v27, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v56
	v_fma_f32 v27, -v53, v45, v43
	s_mov_b32 vcc_lo, s10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v39, v44, v39, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v50, v40, v52
	v_fmac_f32_e32 v45, v27, v55
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v41.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v42, v56, v40
	v_fma_f32 v42, -v53, v45, v43
	s_mov_b32 vcc_lo, s11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.l, v26.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v42, v42, v55, v45
	v_div_fixup_f32 v29, v40, v37, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v24.l, 0x7fff, v39.h, s3
	v_and_b32_e32 v39, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v43
	v_div_fixup_f32 v28, v42, v37, v28
	v_div_scale_f32 v42, null, v37, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	v_add3_u32 v39, v26, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v42
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v49, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v40, 1.0
	v_fmac_f32_e32 v40, v44, v40
	v_div_scale_f32 v44, s8, v30, v37, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v48, v44, v40
	v_fma_f32 v50, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v48, v50, v40 :: v_dual_and_b32 v27, 1, v38
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v27, v25, v27, 0x7fff
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b16 v25.h, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v43, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v29, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v28.h
	v_mov_b16_e32 v29.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v27, v41
	v_div_scale_f32 v27, s3, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v39.h, vcc_lo
	v_mov_b16_e32 v38.l, v26.h
	v_cmp_o_f32_e64 s9, v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v27, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v29
	v_and_b32_e32 v47, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v28, v29, 0x7fff
	v_add3_u32 v47, v26, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v46, v41
	v_div_scale_f32 v46, null, v37, v37, v16
	v_fma_f32 v26, -v43, v39, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v27, v46
	v_fma_f32 v43, -v45, v49, 1.0
	v_div_fmas_f32 v26, v26, v41, v39
	v_fma_f32 v39, -v42, v48, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v49, v43, v49
	v_div_scale_f32 v41, s3, v17, v37, v17
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v42, -v46, v27, 1.0
	v_div_fmas_f32 v39, v39, v40, v48
	v_mul_f32_e32 v40, v41, v49
	v_div_fixup_f32 v31, v26, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v47.h, s9
	v_cmp_o_f32_e64 s9, v28, v28
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v30, v39, v37, v30
	v_fma_f32 v39, -v45, v40, v41
	v_fmac_f32_e32 v27, v42, v27
	v_div_scale_f32 v42, s8, v16, v37, v16
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v39, v49
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v43, v42, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v31.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v45, v40, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v30.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v46, v43, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v38.h
	v_cndmask_b16 v26.l, 0x7fff, v29.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v40, v41, v49, v40
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v43, v28, v27 :: v_dual_and_b32 v28, 1, v38
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v29, 1, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	v_fma_f32 v41, -v46, v43, v42
	v_div_scale_f32 v42, null, v37, v37, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v31, v28, 0x7fff
	v_add3_u32 v29, v30, v29, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v41, v27, v43
	v_rcp_f32_e32 v39, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v31, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_scale_f32 v43, null, v37, v37, v21
	v_div_fixup_f32 v16, v27, v37, v16
	v_div_scale_f32 v27, null, v37, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v47, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v16, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v40, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v28.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v42, v39, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	v_mov_b16_e32 v30.l, v31.h
	v_mov_b16_e32 v30.h, v38.h
	v_and_b32_e32 v45, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v39, v28, v39
	v_div_scale_f32 v28, s3, v19, v37, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v27, v40, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v29, 1, v30
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v28, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v45, v17, v45, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v41, v40
	v_div_scale_f32 v41, s8, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v44, -v42, v30, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v46, v41, v40
	v_fmac_f32_e32 v30, v44, v39
	v_div_scale_f32 v44, null, v37, v37, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v48, -v27, v46, v41
	v_fma_f32 v17, -v42, v30, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v44
	v_fma_f32 v42, -v43, v47, 1.0
	v_fmac_f32_e32 v46, v48, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v17, v17, v39, v30
	v_div_scale_f32 v30, s3, v21, v37, v21
	v_fma_f32 v27, -v27, v46, v41
	v_fmac_f32_e32 v47, v42, v47
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v39, -v44, v28, 1.0
	v_div_fixup_f32 v19, v17, v37, v19
	v_div_fmas_f32 v27, v27, v40, v46
	v_mul_f32_e32 v40, v30, v47
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v31, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v39, v28
	v_div_scale_f32 v39, s8, v20, v37, v20
	v_div_fixup_f32 v18, v27, v37, v18
	v_fma_f32 v27, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v45.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v39, v28
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	v_cndmask_b32_e64 v42, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v40, v27, v47
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v31, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v18, -v44, v41, v39
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v43, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.l, v42.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v18, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v27.h, v38.h
	v_cndmask_b16 v17.l, 0x7fff, v29.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v30, v30, v47, v40
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v31, -v44, v41, v39
	v_div_scale_f32 v39, null, v37, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v18, 1, v38
	v_and_b32_e32 v27, 1, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v31, v28, v41
	v_rcp_f32_e32 v29, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	v_add3_u32 v18, v19, v18, 0x7fff
	v_add3_u32 v19, v42, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v20, v28, v37, v20
	v_div_scale_f32 v28, null, v37, v37, v22
	v_div_fixup_f32 v21, v30, v37, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	v_fma_f32 v30, -v39, v29, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v42, v42
	v_mov_b16_e32 v31.h, v38.h
	v_mov_b16_e32 v31.l, v20.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	v_div_scale_f32 v30, s3, v23, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v31
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v41, null, v37, v37, v9
	v_fmac_f32_e32 v27, v40, v27
	v_div_scale_f32 v40, s8, v22, v37, v22
	v_fma_f32 v42, -v39, v31, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	v_add3_u32 v44, v20, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v19, v40, v27
	v_rcp_f32_e32 v45, v41
	v_fmac_f32_e32 v31, v42, v29
	v_div_scale_f32 v42, null, v37, v37, v8
	v_fma_f32 v46, -v28, v19, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v43, v21, v43, 0x7fff
	v_cmp_o_f32_e64 s9, v21, v21
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v21, -v39, v31, v30
	v_rcp_f32_e32 v30, v42
	v_fmac_f32_e32 v19, v46, v27
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v41, v45, 1.0
	s_mov_b32 vcc_lo, s3
	v_div_fmas_f32 v21, v21, v29, v31
	v_fma_f32 v28, -v28, v19, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v45, v39, v45
	v_div_scale_f32 v29, s3, v9, v37, v9
	v_fma_f32 v31, -v42, v30, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v21, v21, v37, v23
	v_div_fmas_f32 v19, v28, v27, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v27, v29, v45 :: v_dual_fmac_f32 v30, v31, v30
	v_div_scale_f32 v28, s8, v8, v37, v8
	v_div_fixup_f32 v22, v19, v37, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v23, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.h, 0x7fff, v43.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v28, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v20, v20
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v23, v45
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v20, -v42, v31, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v21.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v41, v27, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.l, v22.h
	v_and_b32_e32 v20, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v29, v45, v27
	v_div_scale_f32 v29, null, v37, v37, v11
	v_fma_f32 v28, -v42, v31, v28
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v27, v37, v9
	v_div_fmas_f32 v28, v28, v30, v31
	v_rcp_f32_e32 v30, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v21, v21
	v_add3_u32 v21, v22, v23, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v28, v37, v8
	v_div_scale_f32 v28, null, v37, v37, v10
	v_div_scale_f32 v39, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v8, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v27, v28
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v8.h, 0x7fff, v20.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v30, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v22, v22
	v_mov_b16_e32 v22.l, v23.h
	v_mov_b16_e32 v22.h, v38.h
	v_mov_b16_e32 v38.l, v9.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v20, v30
	v_div_scale_f32 v20, s3, v11, v37, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v31, -v28, v27, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v21.h, vcc_lo
	v_and_b32_e32 v21, 1, v22
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v20, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v31, v27
	v_div_scale_f32 v31, s8, v10, v37, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v29, v22, v20
	v_rcp_f32_e32 v43, v39
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v44.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v41, v9, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v22, v40, v30
	v_div_scale_f32 v40, null, v37, v37, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v44, -v28, v42, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v29, v22, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v20, v40
	v_fma_f32 v29, -v39, v43, 1.0
	v_fmac_f32_e32 v42, v44, v27
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v23, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v9, v9, v30, v22
	v_fmac_f32_e32 v43, v29, v43
	v_fma_f32 v22, -v28, v42, v31
	v_div_scale_f32 v28, s3, v13, v37, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v29, -v40, v20, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v9, v9, v37, v11
	v_div_fmas_f32 v22, v22, v27, v42
	v_dual_mul_f32 v27, v28, v43 :: v_dual_fmac_f32 v20, v29, v20
	v_div_scale_f32 v29, s8, v12, v37, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v22, v37, v10
	v_fma_f32 v22, -v39, v27, v28
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v30, v29, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v11.h, 0x7fff, v41.h, s9
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v22, v43
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v40, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v23, v23
	v_mov_b16_e32 v23.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v39, v27, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v23.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v22, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v9.h
	v_cndmask_b16 v11.l, 0x7fff, v21.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v28, v43, v27
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v40, v30, v29
	v_div_scale_f32 v29, null, v37, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v23
	v_and_b32_e32 v22, 1, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v20, v28, v20, v30
	v_rcp_f32_e32 v23, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v13, v27, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v22, v9, v22, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v12, v20, v37, v12
	v_div_scale_f32 v20, null, v37, v37, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v10, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s6
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_rcp_f32_e32 v21, v20
	v_fma_f32 v27, -v29, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v13, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v13.l, v12.h
	v_mov_b16_e32 v13.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v27, v23
	v_div_scale_f32 v27, s3, v15, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v22.l, 0x7fff, v9.h, vcc_lo
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v20, v21, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v30, null, v37, v37, v1
	v_fmac_f32_e32 v21, v28, v21
	v_div_scale_f32 v28, s8, v14, v37, v14
	v_fma_f32 v31, -v29, v13, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v41, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v28, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v31, v23
	v_div_scale_f32 v31, null, v37, v37, v0
	v_fma_f32 v42, -v20, v40, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v10, v39, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v29, v13, v27
	v_rcp_f32_e32 v27, v31
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v29, -v30, v41, 1.0
	v_fmac_f32_e32 v40, v42, v21
	s_mov_b32 vcc_lo, s3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v12, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v10, v10, v23, v13
	v_fmac_f32_e32 v41, v29, v41
	v_fma_f32 v13, -v20, v40, v28
	v_div_scale_f32 v20, s3, v1, v37, v1
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v23, -v31, v27, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v10, v10, v37, v15
	v_div_fmas_f32 v13, v13, v21, v40
	v_mul_f32_e32 v21, v20, v41
	v_fmac_f32_e32 v27, v23, v27
	v_div_scale_f32 v23, s8, v0, v37, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v13, v13, v37, v14
	v_fma_f32 v15, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v14.h, 0x7fff, v39.h, s9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v23, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v12, v12
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v21, v15, v41
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v12, -v31, v28, v23
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v15.l, v13.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v30, v21, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v15.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v12, v27
	v_div_scale_f32 v29, null, v37, v37, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v20, v20, v41, v21
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v21, -v31, v28, v23
	v_div_scale_f32 v23, null, v37, v37, v3
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v10.h
	v_cndmask_b16 v14.l, 0x7fff, v9.h, s9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v21, v21, v27, v28
	v_rcp_f32_e32 v27, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v15
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v15, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v12, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v20, v37, v1
	v_div_fixup_f32 v0, v21, v37, v0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v13, v9, 0x7fff
	v_add3_u32 v12, v10, v12, 0x7fff
	v_cmp_o_f32_e64 s8, v13, v13
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v23, v27, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v29, v15, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v12.h, 0x7fff, v12.h, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v27, v10, v27
	v_div_scale_f32 v10, vcc_lo, v3, v37, v3
	v_fmac_f32_e32 v15, v20, v15
	v_div_scale_f32 v20, s3, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v13, v10, v27
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v28, v20, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v21.h, v38.h
	v_and_b32_e32 v30, 1, v38
	v_cndmask_b16 v12.l, 0x7fff, v9.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v9, -v23, v13, v10
	v_fma_f32 v31, -v29, v28, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v30, v1, v30, 0x7fff
	v_cmp_o_f32_e64 s8, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v13, v9, v27
	v_fmac_f32_e32 v28, v31, v15
	v_div_scale_f32 v1, null, v37, v37, v5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v21, v0, v21, 0x7fff
	v_cndmask_b16 v9.h, 0x7fff, v30.h, s8
	v_cmp_o_f32_e64 s8, v0, v0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v0, -v23, v13, v10
	v_fma_f32 v10, -v29, v28, v20
	v_rcp_f32_e32 v20, v1
	v_div_scale_f32 v23, null, v37, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v27, v13
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v27, null, v37, v37, v6
	v_rcp_f32_e32 v13, v23
	v_div_fmas_f32 v10, v10, v15, v28
	v_div_fixup_f32 v0, v0, v37, v3
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v15, -v1, v20, 1.0
	v_div_scale_f32 v3, null, v37, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v2, v10, v37, v2
	v_fmac_f32_e32 v20, v15, v20
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v21, v3
	v_fma_f32 v15, -v23, v13, 1.0
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_div_scale_f32 v29, s3, v4, v37, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v15, v13
	v_rcp_f32_e32 v15, v27
	v_mul_f32_e32 v28, v10, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v3, v21, 1.0
	v_mul_f32_e32 v40, v29, v13
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v1, v28, v10
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v0.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v21, v30, v21
	v_div_scale_f32 v30, s8, v7, v37, v7
	v_fma_f32 v41, -v27, v15, 1.0
	v_fmac_f32_e32 v28, v39, v20
	v_fma_f32 v39, -v23, v40, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v42, v30, v21
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v15, v41, v15
	v_div_scale_f32 v41, s9, v6, v37, v6
	v_fma_f32 v1, -v1, v28, v10
	v_fmac_f32_e32 v40, v39, v13
	v_fma_f32 v10, -v3, v42, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v39, v41, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v31.h, v38.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v20, v28
	v_fma_f32 v20, -v23, v40, v29
	v_fmac_f32_e32 v42, v10, v21
	v_fma_f32 v23, -v27, v39, v41
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v1, v1, v37, v5
	v_div_fmas_f32 v10, v20, v13, v40
	v_fma_f32 v3, -v3, v42, v30
	v_fmac_f32_e32 v39, v23, v15
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v43, 1, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v10, v37, v4
	v_div_fmas_f32 v3, v3, v21, v42
	v_fma_f32 v5, -v27, v39, v41
	s_mov_b32 vcc_lo, s9
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v13, 1, v31
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v5, v5, v15, v39
	v_div_fixup_f32 v3, v3, v37, v7
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v10, v2, v13, 0x7fff
	v_add3_u32 v13, v0, v43, 0x7fff
	v_mov_b16_e32 v38.l, v1.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v5, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v4.h
	v_mov_b16_e32 v6.h, v38.h
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v3, s6
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v3, 1, v38
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v7.h, v38.h
	v_mov_b16_e32 v38.l, v0.h
	v_mov_b16_e32 v7.l, v5.h
	v_cndmask_b16 v13.h, 0x7fff, v13.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v2, v2
	v_add3_u32 v2, v4, v6, 0x7fff
	v_add3_u32 v3, v1, v3, 0x7fff
	v_and_b32_e32 v6, 1, v7
	v_and_b32_e32 v7, 1, v38
	v_cmp_o_f32_e64 s3, v1, v1
	v_cmp_o_f32_e64 s6, v4, v4
	v_cmp_o_f32_e64 s8, v0, v0
	v_add3_u32 v1, v5, v6, 0x7fff
	v_add3_u32 v4, v0, v7, 0x7fff
	v_cmp_o_f32_e64 s9, v5, v5
	v_cndmask_b16 v0.h, 0x7fff, v3.h, s3
	v_cndmask_b16 v0.l, 0x7fff, v2.h, s6
	v_cndmask_b16 v13.l, 0x7fff, v10.h, vcc_lo
	v_cndmask_b16 v2.h, 0x7fff, v4.h, s8
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s9
	v_cndmask_b32_e64 v4, v16, v25, s7
	v_cndmask_b32_e64 v5, v25, v16, s7
	v_cndmask_b32_e64 v16, v0, v9, s7
	v_cndmask_b32_e64 v0, v9, v0, s7
	v_cndmask_b32_e64 v3, v24, v26, s7
	v_cndmask_b32_e64 v6, v19, v17, s7
	v_cndmask_b32_e64 v7, v17, v19, s7
	v_cndmask_b32_e64 v10, v8, v18, s7
	v_cndmask_b32_e64 v8, v18, v8, s7
	v_cndmask_b32_e64 v15, v14, v11, s7
	v_cndmask_b32_e64 v11, v11, v14, s7
	v_cndmask_b32_e64 v14, v12, v22, s7
	v_cndmask_b32_e64 v12, v22, v12, s7
	v_cndmask_b32_e64 v17, v2, v13, s7
	v_cndmask_b32_e64 v2, v13, v2, s7
	s_mov_b32 s3, 0x76543210
	v_cndmask_b32_e64 v1, v26, v24, s7
	v_permlanex16_b32 v13, v0, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v3, v3, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v5, v5, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v8, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v11, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v12, s3, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v2, s3, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v12, v13, v16, v67
	v_perm_b32 v13, v13, v16, v68
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v0, v3, v1, v67
	v_perm_b32 v1, v3, v1, v68
	v_perm_b32 v2, v5, v4, v67
	v_perm_b32 v3, v5, v4, v68
	v_perm_b32 v4, v7, v6, v67
	v_perm_b32 v5, v7, v6, v68
	v_perm_b32 v6, v8, v10, v67
	v_perm_b32 v7, v8, v10, v68
	v_perm_b32 v8, v9, v15, v67
	v_perm_b32 v9, v9, v15, v68
	v_perm_b32 v10, v11, v14, v67
	v_perm_b32 v11, v11, v14, v68
	v_perm_b32 v14, v18, v17, v67
	v_perm_b32 v15, v18, v17, v68
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v36, 1
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v18, v32, v35, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v34, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp30:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 195
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 195
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14084
; TotalNumSgprs: 75
; NumVgprs: 195
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 75
; NumVGPRsForWavesPerEU: 195
; Occupancy: 7
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
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     195
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
