	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x5c
	s_load_b64 s[8:9], s[0:1], 0x6c
	v_dual_mov_b32 v43, 0x7531 :: v_dual_and_b32 v16, 7, v0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	v_mov_b32_e32 v42, 0x6420
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b64 s[40:41], s[0:1], 0x10
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v1, 3, v16
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s30, s2, 6
	.loc	1 597 26                        ; attention.py:597:26
	s_lshl_b32 s31, s3, 9
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v4, s30, v2
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s21, s30, s31
	s_mov_b32 s39, 0x31027000
	s_mov_b32 s38, 0x7ffffffe
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x28
	s_load_b64 s[28:29], s[0:1], 0x38
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x200, v4
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v52, 16, v0
	.loc	1 598 26                        ; attention.py:598:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[81:82], null, s24, v2, v[1:2]
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s24, v1
	.loc	1 598 26                        ; attention.py:598:26
	s_lshl_b32 s10, s24, 4
	s_lshl_b32 s11, s24, 5
	s_mul_i32 s12, s24, 48
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s37, s5, 0xffff
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 s2, s2, vcc_lo
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[2:3], null, s24, s21, v[81:82]
	.loc	1 599 26                        ; attention.py:599:26
	s_mov_b32 s36, s4
	.loc	1 566 23                        ; attention.py:566:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v45, 0x7632 :: v_dual_lshlrev_b32 v50, 1, v0
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v33, 0 :: v_dual_and_b32 v84, 0x60, v0
	v_dual_mov_b32 v44, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, v2, s10, 1
	v_add_lshl_u32 v4, v2, s11, 1
	v_add_lshl_u32 v2, v2, s12, 1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s1, s0, -8
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s2
	v_cndmask_b32_e64 v4, 0x80000000, v4, s2
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	s_clause 0x3
	buffer_load_b128 v[8:11], v1, s[36:39], 0 offen
	buffer_load_b128 v[12:15], v3, s[36:39], 0 offen
	buffer_load_b128 v[34:37], v4, s[36:39], 0 offen
	buffer_load_b128 v[38:41], v2, s[36:39], 0 offen
	v_dual_mov_b32 v30, v33 :: v_dual_and_b32 v47, 1, v0
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s5, s3, s1
	v_cmp_eq_u32_e64 s1, 0, v52
	v_dual_mov_b32 v28, v33 :: v_dual_and_b32 v83, 15, v0
	.loc	1 771 51                        ; attention.py:771:51
	v_lshrrev_b32_e32 v85, 4, v0
	v_dual_mov_b32 v31, v33 :: v_dual_lshlrev_b32 v16, 4, v16
	v_dual_mov_b32 v19, v33 :: v_dual_and_b32 v86, 30, v50
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s4, s0, 3
	v_cmp_eq_u32_e64 s0, 0, v47
	v_cndmask_b32_e64 v44, 0x1054, v44, s1
	v_dual_mov_b32 v17, 0 :: v_dual_lshlrev_b32 v54, 5, v0
	.loc	1 571 21                        ; attention.py:571:21
	v_bfe_i32 v48, v0, 0, 1
	v_dual_mov_b32 v32, v33 :: v_dual_lshlrev_b32 v49, 4, v0
	v_dual_mov_b32 v18, v33 :: v_dual_and_b32 v51, 0x70, v0
	v_dual_mov_b32 v20, v33 :: v_dual_lshlrev_b32 v53, 7, v0
	v_dual_mov_b32 v22, v33 :: v_dual_and_b32 v57, 0x70, v50
	v_cndmask_b32_e64 v42, 0x7531, v42, s0
	v_lshl_or_b32 v87, v83, 7, v16
	v_cndmask_b32_e64 v16, 0x6420, v43, s0
	v_and_or_b32 v43, v85, 1, v86
	v_cndmask_b32_e64 v45, 0x3276, v45, s1
	v_lshl_or_b32 v44, v44, 8, v44
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v46, 1, v0
	v_bfe_i32 v55, v0, 2, 1
	v_dual_mov_b32 v29, v33 :: v_dual_lshlrev_b32 v56, 3, v47
	v_dual_mov_b32 v21, v33 :: v_dual_and_b32 v52, 0x700, v53
	v_dual_mov_b32 v23, v33 :: v_dual_and_b32 v48, 0x90, v48
	v_dual_mov_b32 v24, v33 :: v_dual_lshlrev_b32 v47, 6, v47
	v_dual_mov_b32 v2, v33 :: v_dual_and_b32 v53, 0x160, v54
	v_dual_mov_b32 v4, v33 :: v_dual_lshlrev_b32 v91, 2, v43
	v_dual_mov_b32 v6, v33 :: v_dual_and_b32 v43, 0x540054, v44
	v_lshrrev_b32_e32 v51, 2, v51
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v49, v49, v57
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v44, v45, 8, v45
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v46, s30, v46
	v_mov_b32_e32 v3, v33
	v_dual_mov_b32 v5, v33 :: v_dual_add_nc_u32 v90, 0, v49
	v_dual_mov_b32 v7, v33 :: v_dual_and_b32 v42, 0x750031, v42
	v_and_or_b32 v88, v50, 60, v47
	v_xor_b32_e32 v47, v48, v51
	v_add_nc_u32_e32 v48, 0, v52
	v_and_or_b32 v89, 0x90, v55, v53
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v49, v84, 6, v87
	v_and_b32_e32 v44, 0x760076, v44
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s2, 0x200, v46
	v_mul_lo_u32 v46, s9, v46
	v_xor_b32_e32 v50, 16, v87
	v_xor_b32_e32 v51, 32, v87
	v_xor_b32_e32 v52, 48, v87
	v_xor_b32_e32 v53, 64, v87
	v_xor_b32_e32 v54, 0x50, v87
	v_xor_b32_e32 v55, 0x60, v87
	v_xor_b32_e32 v57, 0x70, v87
	v_add_nc_u32_e32 v92, v48, v47
	v_xor_b32_e32 v45, 16, v89
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v47, 0, v49
	v_lshl_or_b32 v42, v42, 4, v42
	v_lshl_or_b32 v43, v43, 4, v43
	.loc	1 753 27                        ; attention.py:753:27
	s_mul_i32 s4, s27, s4
	.loc	1 754 27                        ; attention.py:754:27
	s_mul_i32 s5, s8, s5
	.loc	1 599 26                        ; attention.py:599:26
	v_xad_u32 v48, v49, 16, 0
	v_xad_u32 v58, v49, 32, 0
	s_add_i32 s5, s5, s4
	v_xad_u32 v59, v49, 48, 0
	v_xad_u32 v60, v49, 64, 0
	v_xad_u32 v61, 0x50, v49, 0
	v_xad_u32 v65, 0x60, v49, 0
	v_xad_u32 v69, 0x70, v49, 0
	v_add_nc_u32_e32 v93, 0, v50
	v_add_nc_u32_e32 v94, 0, v51
	v_add_nc_u32_e32 v95, 0, v52
	v_dual_mov_b32 v109, 0 :: v_dual_add_nc_u32 v96, 0, v53
	v_add_nc_u32_e32 v97, 0, v54
	v_dual_mov_b32 v111, 0xff800000 :: v_dual_add_nc_u32 v98, 0, v55
	v_add_nc_u32_e32 v99, 0, v57
	v_add_nc_u32_e32 v100, 0, v45
	v_add3_u32 v101, s5, v56, v46
	v_and_b32_e32 v102, 0x7050301, v42
	v_and_b32_e32 v103, 0x5040504, v43
	v_lshl_or_b32 v16, v16, 8, v16
	v_dual_mov_b32 v27, v33 :: v_dual_lshlrev_b32 v82, 2, v83
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v26, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b32_e32 v16, 0x750031, v16
	v_xor_b32_e32 v106, 4, v91
	.loc	1 778 24                        ; attention.py:778:24
	v_cmp_gt_i32_e64 s12, s25, v82
	v_xor_b32_e32 v107, 64, v88
	v_lshl_or_b32 v108, s3, 8, v85
	v_mov_b32_e32 v112, 0xff800000
	v_mov_b32_e32 v110, 0xff800000
	.loc	1 742 27                        ; attention.py:742:27
	s_mul_f32 s26, s26, 0x3fb8aa3b
	s_mov_b32 s33, 0
	s_mov_b32 s34, 0x76543210
	.loc	1 794 21                        ; attention.py:794:21
	s_lshl_b32 s35, s3, 5
	s_mov_b32 s42, s38
	s_mov_b32 s43, s39
	s_mov_b64 s[22:23], s[46:47]
	s_and_b32 s37, s7, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_and_b32 s45, s45, 0xffff
	s_mov_b32 s46, s38
	s_mov_b32 s47, s39
	s_mov_b32 s36, s6
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(3)
	ds_store_b128 v90, v[8:11]
	s_waitcnt vmcnt(2)
	ds_store_b128 v90, v[12:15] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v90, v[34:37] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v90, v[38:41] offset:6144
	v_mov_b32_e32 v13, v33
	v_lshl_or_b32 v44, v44, 4, v44
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v8, v33
	v_mov_b32_e32 v11, v33
	v_and_b32_e32 v105, 0x7060706, v44
	ds_load_b128 v[41:44], v47
	ds_load_b128 v[45:48], v48
	ds_load_b128 v[49:52], v58
	ds_load_b128 v[53:56], v59
	ds_load_b128 v[57:60], v60
	ds_load_b128 v[61:64], v61
	ds_load_b128 v[65:68], v65
	ds_load_b128 v[69:72], v69
	v_lshl_or_b32 v16, v16, 4, v16
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, v33
	v_mov_b32_e32 v12, v33
	v_mov_b32_e32 v14, v33
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v15, v33 :: v_dual_and_b32 v104, 0x7050301, v16
	v_mov_b32_e32 v16, v33
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s4
	.loc	1 741 30 is_stmt 1              ; attention.py:741:30
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v40, 8, v37
	.loc	1 759 34                        ; attention.py:759:34
	v_lshrrev_b32_e32 v113, 8, v36
	v_and_b16 v39.l, 0xff, v36.l
	v_and_b16 v39.h, 0xff, v36.h
	v_lshrrev_b32_e32 v114, 24, v36
	v_and_b16 v36.l, 0xff, v37.l
	v_and_b16 v36.h, 0xff, v37.h
	v_lshrrev_b32_e32 v115, 24, v37
	v_and_b16 v37.l, 0xff, v113.l
	v_and_b16 v37.h, 0xff, v40.l
	.loc	1 798 53                        ; attention.py:798:53
	s_lshr_b32 s3, s33, 4
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s6, 0, v114.l
	.loc	1 798 25                        ; attention.py:798:25
	s_add_i32 s3, s3, s35
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s9, 0, v115.l
	v_cmp_ne_u16_e64 s10, 0, v37.l
	v_cmp_ne_u16_e64 s13, 0, v37.h
	.loc	1 798 25                        ; attention.py:798:25
	s_mul_i32 s3, s3, s25
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s5, 0, v39.h
	.loc	1 797 41                        ; attention.py:797:41
	v_add_lshl_u32 v38, s3, v82, 1
	.loc	1 759 34                        ; attention.py:759:34
	v_cmp_ne_u16_e64 s3, 0, v39.l
	v_cmp_ne_u16_e64 s7, 0, v36.l
	v_cmp_ne_u16_e64 s8, 0, v36.h
	.loc	1 759 25 is_stmt 0              ; attention.py:759:25
	s_and_b32 s6, s2, s6
	s_and_b32 s9, s2, s9
	s_and_b32 s11, s2, s10
	s_and_b32 s10, s2, s13
	.loc	1 771 36 is_stmt 1              ; attention.py:771:36
	s_lshr_b32 s4, s33, 1
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v36, 0, 1, s6
	v_cndmask_b32_e64 v40, 0, 1, s9
	v_cndmask_b32_e64 v114, 0, 1, s11
	v_cndmask_b32_e64 v115, 0, 1, s10
	.loc	1 774 30                        ; attention.py:774:30
	v_add_nc_u32_e32 v34, s4, v108
	.loc	1 759 25                        ; attention.py:759:25
	s_and_b32 s4, s2, s3
	s_and_b32 s5, s2, s5
	s_and_b32 s7, s2, s7
	s_and_b32 s8, s2, s8
	v_cndmask_b32_e64 v39, 0, 1, s4
	v_cndmask_b32_e64 v37, 0, 1, s5
	v_cndmask_b32_e64 v116, 0, 1, s7
	v_cndmask_b32_e64 v113, 0, 1, s8
	v_lshlrev_b16 v36.l, 8, v36.l
	v_lshlrev_b16 v36.h, 8, v40.l
	v_lshlrev_b16 v37.h, 8, v114.l
	v_lshlrev_b16 v39.h, 8, v115.l
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v112
	.loc	1 759 25                        ; attention.py:759:25
	v_or_b16 v40.h, v37.l, v36.l
	v_or_b16 v36.h, v113.l, v36.h
	v_or_b16 v40.l, v39.l, v37.h
	v_or_b16 v36.l, v116.l, v39.h
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v113, v111, v111
	.loc	1 759 25                        ; attention.py:759:25
	s_delay_alu instid0(VALU_DEP_2)
	v_perm_b32 v37, v36, v40, v102
	v_perm_b32 v39, v36, v40, v104
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v40, s26, v73 :: v_dual_mul_f32 v73, s26, v74
	.loc	1 774 30                        ; attention.py:774:30
	v_mad_u64_u32 v[34:35], null, v34, s25, v[82:83]
	.loc	1 797 41                        ; attention.py:797:41
	v_cndmask_b32_e64 v35, 0x80000000, v38, s12
	.loc	1 759 25                        ; attention.py:759:25
	ds_bpermute_b32 v37, v91, v37
	ds_bpermute_b32 v39, v106, v39
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v74, s26, v75 :: v_dual_mul_f32 v75, s26, v76
	v_mul_f32_e32 v76, s26, v77
	.loc	1 775 32                        ; attention.py:775:32
	v_cndmask_b32_e64 v38, 0x80000000, v34, s12
	.loc	1 797 41                        ; attention.py:797:41
	buffer_load_b64 v[34:35], v35, s[44:47], 0 offen
	.loc	1 775 32                        ; attention.py:775:32
	buffer_load_b32 v38, v38, s[40:43], 0 offen
	.loc	1 742 17                        ; attention.py:742:17
	v_dual_mul_f32 v77, s26, v78 :: v_dual_mul_f32 v78, s26, v79
	v_dual_mul_f32 v79, s26, v80 :: v_dual_max_f32 v80, v110, v110
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b16_e32 v36.l, 0
	.loc	1 814 30                        ; attention.py:814:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 759 25                        ; attention.py:759:25
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v122.h, v36.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v123.h, v36.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cndmask_b32_e64 v110, v39, v37, s1
	v_cndmask_b32_e64 v37, v37, v39, s1
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v124.h, v36.l
	v_mov_b16_e32 v125.h, v36.l
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v114.l, v36.l
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v127, 0x100, v110
	v_and_b32_e32 v129, 0x100, v37
	v_and_b32_e32 v130, 0x1000000, v37
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v39.h, v36.l
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v115.h, v36.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s13, 0, v127
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v116.h, v36.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s17, 0, v130
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v117.h, v36.l
	v_mov_b16_e32 v118.h, v36.l
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v73, v73, 0xff800000, s13
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v126, 1, v110
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v119.h, v36.l
	v_mov_b16_e32 v120.h, v36.l
	v_mov_b16_e32 v121.h, v36.l
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v135.h, v36.l
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s3, 1, v126
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v40, 0xff800000, v40, s3
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v131, 0x1000000, v110
	v_cmp_eq_u32_e64 s19, 0, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v75, v75, 0xff800000, s19
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v128, 1, v37
	v_and_b32_e32 v37, 0x10000, v37
	v_cmp_eq_u32_e64 s14, 1, v128
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u32_e64 s16, 0, v37
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v76, 0xff800000, v76, s14
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v37, v78, 0xff800000, s16
	.loc	1 759 25                        ; attention.py:759:25
	v_and_b32_e32 v110, 0x10000, v110
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v78, v79, 0xff800000, s17
	v_cndmask_b32_e64 v79, v76, v40, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s18, 0, v110
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v128, v37, v78
.Ltmp2:
	.loc	1 759 25                        ; attention.py:759:25
	v_cmp_eq_u32_e64 s15, 0, v129
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v133, v78, v75, s1
	v_cndmask_b32_e64 v134, v75, v78, s1
	v_cndmask_b32_e64 v74, v74, 0xff800000, s18
	v_cndmask_b32_e64 v110, v40, v76, s1
	v_cndmask_b32_e64 v77, v77, 0xff800000, s15
	ds_bpermute_b32 v79, v88, v79
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v129, v40, v73, v74
.Ltmp4:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v131, v37, v74, s1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v130, v75, v76, v77
.Ltmp6:
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v126, v77, v73, s1
	v_cndmask_b32_e64 v127, v73, v77, s1
	v_cndmask_b32_e64 v132, v74, v37, s1
	ds_bpermute_b32 v110, v107, v110
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v128, v129, v130, v128
.Ltmp8:
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v126, v88, v126
	ds_bpermute_b32 v127, v107, v127
	ds_bpermute_b32 v130, v88, v131
	ds_bpermute_b32 v131, v107, v132
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_permlanex16_b32 v129, v128, s34, 0xfedcba98 op_sel:[1,0]
.Ltmp10:
	.loc	1 764 26                        ; attention.py:764:26
	ds_bpermute_b32 v132, v88, v133
	ds_bpermute_b32 v133, v107, v134
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v134.h, v36.l
	.loc	1 766 24                        ; attention.py:766:24
	v_max3_f32 v143, v112, v128, v129
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v129.h, v36.l
	v_mov_b16_e64 v128.h, v36.l
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 767 74                        ; attention.py:767:74
	v_sub_f32_e32 v136, v112, v143
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v73, v73, v143
	v_sub_f32_e32 v74, v74, v143
	v_sub_f32_e32 v37, v37, v143
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v137, v110, v79, s0
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v136, v136
	.loc	1 764 26                        ; attention.py:764:26
	v_cndmask_b32_e64 v138, v79, v110, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v139, v127, v126, s0
	v_cndmask_b32_e64 v126, v126, v127, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v127, v131, v130, s0
	v_cndmask_b32_e64 v130, v130, v131, s0
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v37, v37
	.loc	1 764 26                        ; attention.py:764:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v131, v133, v132, s0
	v_cndmask_b32_e64 v140, v132, v133, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v133, v133, v133 :: v_dual_max_f32 v132, v132, v132
	v_max3_f32 v79, v79, v110, v139
	v_max3_f32 v110, v126, v127, v130
.Ltmp12:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v73, v73
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v144, 0, v136, s20
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v132, v132, v133
.Ltmp14:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v112, v37, 0, s16
	.loc	1 768 62 is_stmt 0              ; attention.py:768:62
	v_sub_f32_e32 v40, v40, v143
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_dual_sub_f32 v78, v78, v143 :: v_dual_mul_f32 v25, v25, v144
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_mul_f32_e32 v27, v27, v144
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max3_f32 v79, v79, v110, v132
.Ltmp16:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v76, v76, v143
	.loc	1 768 33 is_stmt 0              ; attention.py:768:33
	v_cndmask_b32_e64 v37, v73, 0, s13
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v75, v75, v143
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v40, v40
.Ltmp17:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_e32 v73, v79
.Ltmp18:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v78, v78
	v_exp_f32_e32 v75, v75
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v123.l, v37.h
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:765:29 ]
	v_mov_b32_dpp v73, v73 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp20:
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v77, v77, v143
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v76, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v22, v22, v144 :: v_dual_and_b32 v123, 1, v123
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_dual_max_f32 v73, v73, v73 :: v_dual_mul_f32 v26, v26, v144
.Ltmp22:
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v74, v74, 0, s18
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v78, v78, 0, s17
	v_cndmask_b32_e64 v40, 0, v40, s3
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:765:29 ] ]
	v_max_f32_e32 v73, v79, v73
.Ltmp24:
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v29, v29, v144
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v75, v75, 0, s19
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v24, v24, v144
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v124.l, v40.h
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v110, v80, v73
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v28, v28, v144
	v_mul_f32_e32 v30, v30, v144
	v_mul_f32_e32 v31, v31, v144
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v32, v32, v144 :: v_dual_sub_f32 v131, v131, v110
	v_dual_mul_f32 v17, v17, v144 :: v_dual_sub_f32 v132, v139, v110
	v_dual_mul_f32 v18, v18, v144 :: v_dual_sub_f32 v133, v140, v110
	v_dual_mul_f32 v19, v19, v144 :: v_dual_sub_f32 v126, v126, v110
	v_dual_mul_f32 v21, v21, v144 :: v_dual_sub_f32 v130, v130, v110
	.loc	1 768 62                        ; attention.py:768:62
	v_sub_f32_e32 v79, v137, v110
	v_sub_f32_e32 v80, v138, v110
	v_sub_f32_e32 v127, v127, v110
	.loc	1 768 49 is_stmt 0              ; attention.py:768:49
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v80, v80
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v133, v133
	.loc	1 816 30 is_stmt 1              ; attention.py:816:30
	v_mov_b16_e32 v125.l, v74.h
	v_mov_b16_e64 v134.l, v78.h
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v132, 0, v132, s5
	v_cndmask_b32_e64 v126, 0, v126, s6
	v_cndmask_b32_e64 v79, 0, v79, s4
	v_cndmask_b32_e64 v80, 0, v80, s11
	v_cndmask_b32_e64 v127, 0, v127, s7
	v_cndmask_b32_e64 v130, 0, v130, s10
	v_cndmask_b32_e64 v131, 0, v131, s8
	v_cndmask_b32_e64 v133, 0, v133, s9
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v20, v20, v144
	v_mul_f32_e32 v23, v23, v144
	v_mul_f32_e32 v1, v1, v144
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_dual_add_f32 v79, v79, v80 :: v_dual_add_f32 v80, v132, v126
	v_add_f32_e32 v126, v127, v130
	v_dual_add_f32 v127, v131, v133 :: v_dual_mul_f32 v4, v4, v144
.Ltmp26:
	.loc	1 766 24                        ; attention.py:766:24
	v_max_f32_e32 v145, v113, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v73, v79, v80
.Ltmp28:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v3, v3, v144 :: v_dual_and_b32 v80, 1, v125
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v79, v126, v127
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp30:
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v6, v6, v144 :: v_dual_sub_f32 v125, v111, v145
	v_mul_f32_e32 v8, v8, v144
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e32 v39.l, v75.h
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v73, v73, v79
.Ltmp32:
	.loc	1 768 49                        ; attention.py:768:49
	v_exp_f32_e32 v77, v77
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v2, v2, v144
	v_mul_f32_e32 v7, v7, v144
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s3, v37, v37
	v_cmp_o_f32_e64 s13, v40, v40
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v37, v37, v123, 0x7fff
	.loc	1 767 61                        ; attention.py:767:61
	v_exp_f32_e32 v123, v125
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v76, 0, v76, s14
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s14, v75, v75
	v_add3_u32 v39, v75, v39, 0x7fff
	v_cndmask_b16 v136.h, 0x7fff, v37.h, s3
	.loc	1 767 25                        ; attention.py:767:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v111
	.loc	1 768 33                        ; attention.py:768:33
	v_cndmask_b32_e64 v77, v77, 0, s15
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v12, v12, v144
	.loc	1 816 30                        ; attention.py:816:30
	v_cmp_o_f32_e64 s15, v74, v74
	v_add3_u32 v80, v74, v80, 0x7fff
	v_cndmask_b16 v138.h, 0x7fff, v39.h, s14
	.loc	1 767 25                        ; attention.py:767:25
	v_cndmask_b32_e64 v146, 0, v123, s3
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v129.l, v76.h
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v10, v10, v144
	.loc	1 816 30                        ; attention.py:816:30
	v_mov_b16_e64 v128.l, v77.h
	v_mov_b16_e64 v135.l, v112.h
	v_cndmask_b16 v138.l, 0x7fff, v80.h, s15
	v_and_b32_e32 v79, 1, v129
	.loc	1 815 23                        ; attention.py:815:23
	v_mul_f32_e32 v13, v13, v144
	v_mul_f32_e32 v15, v15, v144
	v_mul_f32_e32 v14, v14, v144
	v_mul_f32_e32 v16, v16, v144
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v79, v76, v79, 0x7fff
	.loc	1 797 41                        ; attention.py:797:41
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v114.h, v35.l
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v124, 1, v124
	.loc	1 797 41                        ; attention.py:797:41
	v_mov_b16_e32 v36.h, v34.l
	v_and_b32_e32 v111, 0xffff0000, v34
	v_and_b32_e32 v123, 0xffff0000, v35
	.loc	1 775 32                        ; attention.py:775:32
	s_waitcnt vmcnt(0)
	v_bfe_i32 v39, v38, 0, 8
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v40, v40, v124, 0x7fff
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_e32 v124, v73
.Ltmp34:
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v74, 24, v38
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v34.l, 4, v38.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v34.h, v38.l, 15
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v136.l, 0x7fff, v40.h, s13
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:769:24 ]
	v_mov_b32_dpp v124, v124 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 775 32                        ; attention.py:775:32
	v_lshrrev_b32_e32 v40, 8, v38
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v35.l, v38.h, 15
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b32_e32 v75, 20, v38
	v_and_b16 v34.l, v34.l, 15
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:769:24 ] ]
	v_add_f32_e32 v37, v73, v124
.Ltmp38:
	.loc	1 775 32                        ; attention.py:775:32
	v_mov_b16_e32 v73.l, v38.h
	v_bfe_i32 v124, v40, 0, 8
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v38.l, v39.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v34.h
	.loc	1 785 32                        ; attention.py:785:32
	v_lshrrev_b16 v35.h, 4, v40.l
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v125, v73, 0, 8
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v38.h, v40.l, 15
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s4, 7, v35.l
	.loc	1 783 76                        ; attention.py:783:76
	v_and_b16 v40.l, v74.l, 15
	.loc	1 775 32                        ; attention.py:775:32
	v_bfe_i32 v126, v74, 0, 8
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v39.l, v75.l, 15
	v_lshrrev_b16 v39.h, 4, v74.l
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v38.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v38.l, v34.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v40.h, 0, -16, s3
	.loc	1 785 32                        ; attention.py:785:32
	v_and_b16 v35.h, v35.h, 15
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v73.l, v124.l
	.loc	1 786 38                        ; attention.py:786:38
	v_cmp_lt_u16_e64 s3, 7, v38.h
	.loc	1 787 39                        ; attention.py:787:39
	v_mov_b16_e32 v74.l, v125.l
	.loc	1 786 29                        ; attention.py:786:29
	v_cndmask_b16 v74.h, 0, -16, s4
	.loc	1 786 38 is_stmt 0              ; attention.py:786:38
	v_cmp_lt_u16_e64 s4, 7, v40.l
	.loc	1 787 39 is_stmt 1              ; attention.py:787:39
	v_mov_b16_e32 v75.l, v126.l
	.loc	1 787 56 is_stmt 0              ; attention.py:787:56
	v_or_b16 v73.h, v39.l, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_or_b16 v79.l, v34.h, v40.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v38.l, v34.l, v38.l, s5
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s5, 0, v73.l
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v34.l, v35.h, -16
	.loc	1 786 29 is_stmt 1              ; attention.py:786:29
	v_cndmask_b16 v34.h, 0, -16, s3
	.loc	1 787 39                        ; attention.py:787:39
	v_cmp_gt_i16_e64 s3, 0, v74.l
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v73.l, v35.l, v74.h
	v_cndmask_b16 v35.l, 0, -16, s4
	.loc	1 787 56                        ; attention.py:787:56
	v_or_b16 v75.h, v39.h, -16
	.loc	1 787 39 is_stmt 0              ; attention.py:787:39
	v_cmp_gt_i16_e64 s6, 0, v75.l
	.loc	1 814 31 is_stmt 1              ; attention.py:814:31
	v_bfe_i32 v74, v38, 0, 16
	v_bfe_i32 v124, v79, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v38.l, v38.h, v34.h
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v34.l, v35.h, v34.l, s5
	v_cndmask_b16 v39.l, v39.l, v73.h, s3
	.loc	1 814 31                        ; attention.py:814:31
	v_bfe_i32 v73, v73, 0, 16
	.loc	1 786 29                        ; attention.py:786:29
	v_or_b16 v35.l, v40.l, v35.l
	.loc	1 787 30                        ; attention.py:787:30
	v_cndmask_b16 v40.l, v39.h, v75.h, s6
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v74, v74
	v_cvt_f32_i32_e32 v75, v124
	v_bfe_i32 v34, v34, 0, 16
	v_bfe_i32 v38, v38, 0, 16
	v_bfe_i32 v39, v39, 0, 16
	v_cvt_f32_i32_e32 v73, v73
	v_bfe_i32 v35, v35, 0, 16
	v_bfe_i32 v40, v40, 0, 16
	.loc	1 815 23                        ; attention.py:815:23
	v_dual_mul_f32 v5, v5, v144 :: v_dual_mul_f32 v74, v36, v74
	v_dual_mul_f32 v9, v9, v144 :: v_dual_mul_f32 v36, v36, v75
	.loc	1 814 31                        ; attention.py:814:31
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v39, v39
	v_mul_f32_e32 v73, v114, v73
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v40, v40
	v_dual_mul_f32 v34, v111, v34 :: v_dual_and_b32 v113, 1, v128
	.loc	1 814 30 is_stmt 0              ; attention.py:814:30
	v_mov_b16_e32 v115.l, v74.h
	v_mov_b16_e32 v116.l, v36.h
	.loc	1 814 31                        ; attention.py:814:31
	v_dual_mul_f32 v38, v111, v38 :: v_dual_mul_f32 v39, v114, v39
	v_mul_f32_e32 v40, v123, v40
	.loc	1 814 30                        ; attention.py:814:30
	v_mov_b16_e32 v120.l, v73.h
	.loc	1 814 31                        ; attention.py:814:31
	v_mul_f32_e32 v35, v123, v35
	.loc	1 814 30                        ; attention.py:814:30
	v_and_b32_e32 v75, 1, v115
	v_and_b32_e32 v111, 1, v116
	v_mov_b16_e32 v117.l, v34.h
	v_mov_b16_e32 v118.l, v38.h
	v_mov_b16_e32 v119.l, v39.h
	v_and_b32_e32 v114, 1, v120
	v_mov_b16_e32 v122.l, v35.h
	v_mov_b16_e32 v121.l, v40.h
	v_cmp_o_f32_e64 s3, v74, v74
	v_cmp_o_f32_e64 s4, v36, v36
	v_add3_u32 v36, v36, v111, 0x7fff
	v_add3_u32 v74, v74, v75, 0x7fff
	v_and_b32_e32 v75, 1, v117
	v_and_b32_e32 v111, 1, v118
	v_and_b32_e32 v115, 1, v119
	.loc	1 815 23 is_stmt 1              ; attention.py:815:23
	v_dual_mul_f32 v11, v11, v144 :: v_dual_and_b32 v116, 1, v122
	.loc	1 814 30                        ; attention.py:814:30
	v_cmp_o_f32_e64 s5, v73, v73
	v_add3_u32 v73, v73, v114, 0x7fff
	v_and_b32_e32 v114, 1, v121
	v_cmp_o_f32_e64 s6, v34, v34
	v_cmp_o_f32_e64 s7, v38, v38
	v_cmp_o_f32_e64 s8, v39, v39
	v_cmp_o_f32_e64 s10, v35, v35
	v_cndmask_b16 v74.l, 0x7fff, v36.h, s4
	v_add3_u32 v36, v38, v111, 0x7fff
	v_add3_u32 v34, v34, v75, 0x7fff
	v_add3_u32 v38, v39, v115, 0x7fff
	v_add3_u32 v35, v35, v116, 0x7fff
	v_cmp_o_f32_e64 s9, v40, v40
	v_add3_u32 v39, v40, v114, 0x7fff
	v_cndmask_b16 v74.h, 0x7fff, v74.h, s3
	v_cndmask_b16 v40.h, 0x7fff, v34.h, s6
	v_cndmask_b16 v40.l, 0x7fff, v36.h, s7
	v_cndmask_b16 v34.h, 0x7fff, v38.h, s8
	v_cndmask_b16 v36.l, 0x7fff, v35.h, s10
	.loc	1 816 30                        ; attention.py:816:30
	v_and_b32_e32 v35, 1, v135
	v_and_b32_e32 v38, 1, v134
	v_cmp_o_f32_e64 s4, v76, v76
	.loc	1 814 30                        ; attention.py:814:30
	v_add_nc_u32_e32 v115, 0, v89
	v_cndmask_b16 v34.l, 0x7fff, v73.h, s5
	v_cndmask_b16 v36.h, 0x7fff, v39.h, s9
	.loc	1 816 30                        ; attention.py:816:30
	v_add3_u32 v39, v77, v113, 0x7fff
	v_cmp_o_f32_e64 s3, v77, v77
	v_add3_u32 v35, v112, v35, 0x7fff
	v_add3_u32 v38, v78, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v78, v78
	v_cmp_o_f32_e64 s6, v112, v112
	v_cndmask_b16 v39.l, 0x7fff, v79.h, s4
	.loc	1 814 30                        ; attention.py:814:30
	ds_store_2addr_b32 v92, v74, v40 offset1:8
	ds_store_2addr_b32 v92, v34, v36 offset0:16 offset1:24
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[73:76], v115
	ds_load_b128 v[111:114], v115 offset:512
	ds_load_b128 v[77:80], v100
	ds_load_b128 v[119:122], v115 offset:1024
	ds_load_b128 v[127:130], v115 offset:1536
	ds_load_b128 v[115:118], v100 offset:512
	ds_load_b128 v[123:126], v100 offset:1024
	ds_load_b128 v[131:134], v100 offset:1536
	.loc	1 816 30                        ; attention.py:816:30
	v_cndmask_b16 v39.h, 0x7fff, v39.h, s3
	v_cndmask_b16 v38.h, 0x7fff, v38.h, s5
	v_cndmask_b16 v38.l, 0x7fff, v35.h, s6
	v_permlanex16_b32 v35, v136, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v34, v138, s34, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v36, v39, s34, 0xfedcba98 op_sel:[1,0]
	.loc	1 817 23                        ; attention.py:817:23
	v_fmac_f32_e32 v37, v109, v146
	.loc	1 816 30                        ; attention.py:816:30
	v_permlanex16_b32 v40, v38, s34, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v135, v35, v136, v103
	v_perm_b32 v136, v35, v136, v105
	v_perm_b32 v137, v34, v138, v103
	v_perm_b32 v138, v34, v138, v105
	v_perm_b32 v139, v36, v39, v103
	v_perm_b32 v140, v36, v39, v105
	v_perm_b32 v141, v40, v38, v103
	v_perm_b32 v142, v40, v38, v105
	v_mov_b32_e32 v109, v37
	.loc	1 707 13                        ; attention.py:707:13
	s_add_i32 s3, s33, 16
	s_cmpk_lt_u32 s33, 0x1f0
	s_mov_b32 s33, s3
	.loc	1 816 23                        ; attention.py:816:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[73:80], v[135:142], v[25:32]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[111:118], v[135:142], v[17:24]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[119:126], v[135:142], v[1:8]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[9:16], v[127:134], v[135:142], v[9:16]
	v_dual_mov_b32 v112, v143 :: v_dual_mov_b32 v111, v145
	.loc	1 707 13                        ; attention.py:707:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 735 32                        ; attention.py:735:32
	s_add_i32 s3, s33, s31
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v40, v33
	.loc	1 735 32                        ; attention.py:735:32
	s_mul_i32 s3, s3, s24
	.loc	1 736 32                        ; attention.py:736:32
	v_add_nc_u32_e32 v39, 0, v87
	v_add_lshl_u32 v34, s3, v81, 1
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	buffer_load_b128 v[35:38], v34, s[36:39], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v34, v33
	.loc	1 736 32                        ; attention.py:736:32
	s_waitcnt vmcnt(0)
	ds_store_b128 v90, v[35:38]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[113:116], v39
	ds_load_b128 v[117:120], v93
	ds_load_b128 v[121:124], v94
	ds_load_b128 v[125:128], v95
	.loc	1 741 30                        ; attention.py:741:30
	v_mov_b32_e32 v35, v33
	v_mov_b32_e32 v36, v33
	v_mov_b32_e32 v37, v33
	v_mov_b32_e32 v38, v33
	v_mov_b32_e32 v39, v33
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[129:132], v96
	ds_load_b128 v[133:136], v97
	.loc	1 741 30                        ; attention.py:741:30
	v_dual_mov_b32 v80, v40 :: v_dual_mov_b32 v77, v37
	v_dual_mov_b32 v78, v38 :: v_dual_mov_b32 v79, v39
	v_dual_mov_b32 v76, v36 :: v_dual_mov_b32 v75, v35
	v_dual_mov_b32 v74, v34 :: v_dual_mov_b32 v73, v33
	.loc	1 736 32                        ; attention.py:736:32
	ds_load_b128 v[137:140], v98
	ds_load_b128 v[141:144], v99
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	.loc	1 741 30                        ; attention.py:741:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[113:120], v[41:48], v[73:80]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[121:128], v[49:56], v[73:80]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[129:136], v[57:64], v[73:80]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[73:80], v[137:144], v[65:72], v[73:80]
	.loc	1 759 34                        ; attention.py:759:34
	s_and_saveexec_b32 s4, s2
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 752 25                        ; attention.py:752:25
	v_add_nc_u32_e32 v34, s33, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 759 34                        ; attention.py:759:34
	v_ashrrev_i32_e32 v35, 31, v34
	v_add_co_u32 v34, s3, s22, v34
	v_add_co_ci_u32_e64 v35, null, s23, v35, s3
	global_load_b64 v[36:37], v[34:35], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 598 79                        ; attention.py:598:79
	v_bfe_u32 v36, v0, 4, 1
	.loc	1 848 17                        ; attention.py:848:17
	s_and_b32 s29, s29, 0xffff
	s_mov_b32 s31, 0x31027000
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 707 13                        ; attention.py:707:13
	v_or_b32_e32 v0, v86, v36
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v33, 48, v36
	v_or_b32_e32 v34, 32, v36
	v_or_b32_e32 v35, 16, v36
	.loc	1 707 13                        ; attention.py:707:13
	v_lshlrev_b32_e32 v0, 2, v0
	ds_bpermute_b32 v38, v0, v37
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v0, 1, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_or_b32_e32 v37, v0, v83
	.loc	1 598 79                        ; attention.py:598:79
	v_or_b32_e32 v0, 62, v85
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v39, s30, v37
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v37, s21, v37
	s_mov_b32 s30, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 0x200, v39
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v37, s25, v37
	.loc	1 841 48                        ; attention.py:841:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v39, null, v38, v38, v25
	v_div_scale_f32 v41, null, v38, v38, v26
	v_div_scale_f32 v43, null, v38, v38, v27
	v_div_scale_f32 v45, null, v38, v38, v28
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v47, null, v38, v38, v29
	v_rcp_f32_e32 v52, v41
	v_rcp_f32_e32 v53, v43
	v_rcp_f32_e32 v54, v45
	v_div_scale_f32 v49, null, v38, v38, v30
	v_rcp_f32_e32 v55, v47
	v_div_scale_f32 v40, vcc_lo, v25, v38, v25
	v_fma_f32 v60, -v39, v51, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v56, v49
	v_fma_f32 v61, -v41, v52, 1.0
	v_fma_f32 v62, -v43, v53, 1.0
	v_fma_f32 v63, -v45, v54, 1.0
	v_fmac_f32_e32 v51, v60, v51
	v_div_scale_f32 v42, s1, v26, v38, v26
	v_div_scale_f32 v44, s2, v27, v38, v27
	v_div_scale_f32 v46, s3, v28, v38, v28
	v_fma_f32 v64, -v47, v55, 1.0
	v_dual_fmac_f32 v52, v61, v52 :: v_dual_fmac_f32 v53, v62, v53
	v_fmac_f32_e32 v54, v63, v54
	v_mul_f32_e32 v60, v40, v51
	v_fma_f32 v65, -v49, v56, 1.0
	v_fmac_f32_e32 v55, v64, v55
	v_dual_mul_f32 v61, v42, v52 :: v_dual_mul_f32 v62, v44, v53
	v_mul_f32_e32 v63, v46, v54
	v_fma_f32 v64, -v39, v60, v40
	v_div_scale_f32 v48, s4, v29, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v66, -v43, v62, v44
	v_fma_f32 v67, -v45, v63, v46
	v_fmac_f32_e32 v56, v65, v56
	v_fma_f32 v65, -v41, v61, v42
	v_fmac_f32_e32 v60, v64, v51
	v_div_scale_f32 v50, null, v38, v38, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v68, v48, v55 :: v_dual_fmac_f32 v61, v65, v52
	v_fmac_f32_e32 v62, v66, v53
	v_fma_f32 v39, -v39, v60, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v59, v50
	v_fmac_f32_e32 v63, v67, v54
	v_fma_f32 v40, -v41, v61, v42
	v_fma_f32 v41, -v43, v62, v44
	v_div_fmas_f32 v39, v39, v51, v60
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v58, null, v38, v38, v32
	v_fma_f32 v42, -v45, v63, v46
	v_div_fmas_f32 v40, v40, v52, v61
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v57, s5, v30, v38, v30
	v_div_fmas_f32 v41, v41, v53, v62
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v25, v39, v38, v25
	v_div_fmas_f32 v39, v42, v54, v63
	v_fma_f32 v42, -v50, v59, 1.0
	v_rcp_f32_e32 v43, v58
	v_div_fixup_f32 v26, v40, v38, v26
	v_mul_f32_e32 v40, v57, v56
	v_fma_f32 v64, -v47, v68, v48
	v_fmac_f32_e32 v59, v42, v59
	v_div_scale_f32 v42, null, v38, v38, v17
	v_div_fixup_f32 v27, v41, v38, v27
	v_div_fixup_f32 v28, v39, v38, v28
	v_fma_f32 v39, -v49, v40, v57
	v_div_scale_f32 v41, s2, v31, v38, v31
	v_fma_f32 v44, -v58, v43, 1.0
	v_rcp_f32_e32 v46, v42
	v_fmac_f32_e32 v68, v64, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v40, v39, v56 :: v_dual_mul_f32 v39, v41, v59
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s3, v32, v38, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v68, v48
	v_fma_f32 v47, -v49, v40, v57
	v_fma_f32 v48, -v50, v39, v41
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v51, -v42, v46, 1.0
	v_mul_f32_e32 v49, v44, v43
	v_div_scale_f32 v52, null, v38, v38, v18
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v39, v48, v59
	v_div_fmas_f32 v45, v45, v55, v68
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v46, v51, v46
	v_div_fmas_f32 v40, v47, v56, v40
	v_rcp_f32_e32 v47, v52
	v_fma_f32 v48, -v58, v49, v44
	v_div_scale_f32 v51, s4, v17, v38, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v30, v40, v38, v30
	v_fma_f32 v40, -v50, v39, v41
	v_fmac_f32_e32 v49, v48, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v41, v51, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v29, v45, v38, v29
	v_fma_f32 v45, -v52, v47, 1.0
	v_div_fmas_f32 v39, v40, v59, v39
	v_fma_f32 v40, -v58, v49, v44
	v_fma_f32 v44, -v42, v41, v51
	v_div_scale_f32 v48, null, v38, v38, v19
	v_fmac_f32_e32 v47, v45, v47
	v_div_scale_f32 v50, s2, v18, v38, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v44, v46
	v_rcp_f32_e32 v45, v48
	v_div_scale_f32 v53, null, v38, v38, v20
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v44, v50, v47
	v_div_fixup_f32 v31, v39, v38, v31
	v_fma_f32 v39, -v42, v41, v51
	v_div_scale_f32 v51, null, v38, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v42, s3, v19, v38, v19
	v_div_fmas_f32 v40, v40, v43, v49
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v43, v53
	v_div_fmas_f32 v39, v39, v46, v41
	v_rcp_f32_e32 v41, v51
	v_fma_f32 v49, -v48, v45, 1.0
	v_div_fixup_f32 v32, v40, v38, v32
	v_fma_f32 v40, -v52, v44, v50
	v_div_fixup_f32 v17, v39, v38, v17
	s_mov_b32 vcc_lo, s2
	v_fmac_f32_e32 v45, v49, v45
	v_div_scale_f32 v46, s4, v20, v38, v20
	v_fma_f32 v49, -v53, v43, 1.0
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v55, -v51, v41, 1.0
	v_fmac_f32_e32 v44, v40, v47
	v_mul_f32_e32 v40, v42, v45
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s1, 0, v38
	.loc	1 848 17 is_stmt 1              ; attention.py:848:17
	v_add_lshl_u32 v0, v37, v0, 2
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v41, v55, v41
	v_fmac_f32_e32 v43, v49, v43
	v_div_scale_f32 v49, null, v38, v38, v22
	v_fma_f32 v39, -v52, v44, v50
	v_fma_f32 v50, -v48, v40, v42
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v54, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v40, v50, v45
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	v_cndmask_b32_e64 v31, 0, v31, s1
	v_cndmask_b32_e64 v32, 0, v32, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v50, -v49, v54, 1.0
	s_delay_alu instid0(VALU_DEP_1)
	v_fmac_f32_e32 v54, v50, v54
	v_div_fmas_f32 v39, v39, v47, v44
	v_div_scale_f32 v47, s2, v21, v38, v21
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v18, v39, v38, v18
	v_fma_f32 v39, -v48, v40, v42
	v_mul_f32_e32 v42, v47, v41
	v_mul_f32_e32 v52, v46, v43
	v_div_scale_f32 v48, null, v38, v38, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v39, v39, v45, v40
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v44, -v53, v52, v46
	v_fma_f32 v45, -v51, v42, v47
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v19, v39, v38, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v44, v43
	v_div_scale_f32 v44, s5, v22, v38, v22
	v_fmac_f32_e32 v42, v45, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v40, -v53, v52, v46
	v_div_scale_f32 v53, null, v38, v38, v24
	v_rcp_f32_e32 v46, v48
	v_fma_f32 v39, -v51, v42, v47
	v_div_fmas_f32 v40, v40, v43, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v43, v53
	v_mul_f32_e32 v50, v44, v54
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v51, null, v38, v38, v2
	v_div_fmas_f32 v39, v39, v41, v42
	v_fma_f32 v45, -v49, v50, v44
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v52, -v48, v46, 1.0
	v_div_fixup_f32 v20, v40, v38, v20
	v_div_scale_f32 v40, s3, v23, v38, v23
	v_fmac_f32_e32 v50, v45, v54
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v45, -v53, v43, 1.0
	v_div_fixup_f32 v21, v39, v38, v21
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v41, -v49, v50, v44
	v_div_scale_f32 v44, null, v38, v38, v1
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s2, v24, v38, v24
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v47, v44
	v_fmac_f32_e32 v46, v52, v46
	v_div_fmas_f32 v41, v41, v54, v50
	v_div_scale_f32 v54, null, v38, v38, v4
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v42, v40, v46
	v_div_fixup_f32 v22, v41, v38, v22
	v_rcp_f32_e32 v41, v51
	v_rcp_f32_e32 v56, v54
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v48, v42, v40
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v22, 0, v22, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v42, v49, v46
	v_fma_f32 v49, -v44, v47, 1.0
	v_fma_f32 v52, -v51, v41, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v48, v42, v40
	v_div_scale_f32 v48, null, v38, v38, v3
	v_fmac_f32_e32 v47, v49, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v41, v52, v41
	v_div_fmas_f32 v40, v40, v46, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v49, v48
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v46, s3, v2, v38, v2
	v_div_fixup_f32 v23, v40, v38, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v55, v46, v41
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v52, -v48, v49, 1.0
	v_dual_mul_f32 v50, v45, v43 :: v_dual_fmac_f32 v49, v52, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v39, -v53, v50, v45
	v_div_scale_f32 v52, s5, v3, v38, v3
	v_fmac_f32_e32 v50, v39, v43
	v_div_scale_f32 v39, s4, v1, v38, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v42, -v53, v50, v45
	v_mul_f32_e32 v45, v39, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v50
	v_fma_f32 v53, -v44, v45, v39
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v43, -v51, v55, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v24, v42, v38, v24
	v_fmac_f32_e32 v45, v53, v47
	v_fma_f32 v42, -v54, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v43, v41
	v_div_scale_f32 v43, null, v38, v38, v5
	v_fma_f32 v39, -v44, v45, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v56, v42, v56
	v_div_scale_f32 v42, s2, v4, v38, v4
	v_fma_f32 v44, -v51, v55, v46
	v_div_fmas_f32 v39, v39, v47, v45
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v45, v42, v56 :: v_dual_mul_f32 v50, v52, v49
	v_div_fmas_f32 v41, v44, v41, v55
	v_div_scale_f32 v46, null, v38, v38, v6
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v40, -v48, v50, v52
	v_div_fixup_f32 v1, v39, v38, v1
	v_div_fixup_f32 v2, v41, v38, v2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v50, v40, v49
	v_rcp_f32_e32 v40, v43
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v48, v50, v52
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_div_fmas_f32 v44, v44, v49, v50
	v_fma_f32 v47, -v43, v40, 1.0
	v_fma_f32 v49, -v54, v45, v42
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v44, v38, v3
	v_fmac_f32_e32 v40, v47, v40
	v_div_scale_f32 v47, s3, v5, v38, v5
	v_fmac_f32_e32 v45, v49, v56
	v_div_scale_f32 v44, null, v38, v38, v7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v39, v47, v40
	v_fma_f32 v41, -v46, v48, 1.0
	v_fma_f32 v42, -v54, v45, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v44
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v3, 0, v3, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v49, -v43, v39, v47
	v_fmac_f32_e32 v48, v41, v48
	v_div_scale_f32 v41, s4, v6, v38, v6
	v_div_fmas_f32 v42, v42, v56, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v49, v40
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v38, v38, v8
	v_div_fixup_f32 v4, v42, v38, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v42, -v43, v39, v47
	v_fma_f32 v47, -v44, v50, 1.0
	v_mul_f32_e32 v45, v41, v48
	v_rcp_f32_e32 v51, v49
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v39, v42, v40, v39
	v_div_scale_f32 v40, null, v38, v38, v9
	v_fmac_f32_e32 v50, v47, v50
	v_fma_f32 v43, -v46, v45, v41
	v_div_scale_f32 v42, s2, v7, v38, v7
	v_div_fixup_f32 v5, v39, v38, v5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v49, v51, 1.0
	v_fmac_f32_e32 v45, v43, v48
	v_rcp_f32_e32 v43, v40
	v_div_scale_f32 v47, null, v38, v38, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v51, v39, v51
	v_fma_f32 v41, -v46, v45, v41
	v_mul_f32_e32 v46, v42, v50
	v_div_scale_f32 v39, s3, v8, v38, v8
	v_rcp_f32_e32 v53, v47
	s_mov_b32 vcc_lo, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v52, -v40, v43, 1.0
	v_div_scale_f32 v54, s4, v9, v38, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v43, v52, v43
	v_div_scale_f32 v52, null, v38, v38, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v55, -v47, v53, 1.0
	v_mul_f32_e32 v57, v54, v43
	v_div_fmas_f32 v41, v41, v48, v45
	v_fma_f32 v45, -v44, v46, v42
	v_mul_f32_e32 v48, v39, v51
	v_fmac_f32_e32 v53, v55, v53
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v6, v41, v38, v6
	v_fmac_f32_e32 v46, v45, v50
	v_fma_f32 v45, -v49, v48, v39
	v_rcp_f32_e32 v56, v52
	v_div_scale_f32 v55, s5, v10, v38, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v44, v46, v42
	v_fmac_f32_e32 v48, v45, v51
	v_fma_f32 v42, -v40, v57, v54
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v44, v55, v53
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v50, v46
	v_fma_f32 v39, -v49, v48, v39
	v_div_scale_f32 v46, null, v38, v38, v12
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v45, -v52, v56, 1.0
	v_div_fmas_f32 v39, v39, v51, v48
	v_rcp_f32_e32 v48, v46
	v_fmac_f32_e32 v57, v42, v43
	v_fma_f32 v42, -v47, v44, v55
	v_fmac_f32_e32 v56, v45, v56
	v_div_scale_f32 v45, s2, v11, v38, v11
	v_div_fixup_f32 v7, v41, v38, v7
	v_fma_f32 v40, -v40, v57, v54
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v8, v39, v38, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v46, v48, 1.0
	v_div_scale_f32 v50, null, v38, v38, v16
	v_div_fmas_f32 v40, v40, v43, v57
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v48, v41, v48
	v_fmac_f32_e32 v44, v42, v53
	v_mul_f32_e32 v42, v45, v56
	v_div_scale_f32 v41, null, v38, v38, v14
	v_div_fixup_f32 v9, v40, v38, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v43, -v47, v44, v55
	v_fma_f32 v47, -v52, v42, v45
	v_div_scale_f32 v40, null, v38, v38, v13
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v43, v43, v53, v44
	v_fmac_f32_e32 v42, v47, v56
	s_mov_b32 vcc_lo, s2
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	v_cndmask_b32_e64 v9, 0, v9, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v10, v43, v38, v10
	v_fma_f32 v39, -v52, v42, v45
	v_rcp_f32_e32 v45, v41
	v_div_scale_f32 v43, null, v38, v38, v15
	v_rcp_f32_e32 v52, v50
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v10, 0, v10, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_rcp_f32_e32 v47, v43
	v_fma_f32 v51, -v41, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v45, v51, v45
	v_div_fmas_f32 v39, v39, v56, v42
	v_rcp_f32_e32 v42, v40
	v_div_scale_f32 v44, vcc_lo, v12, v38, v12
	v_div_scale_f32 v51, s3, v14, v38, v14
	v_div_fixup_f32 v11, v39, v38, v11
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v54, -v43, v47, 1.0
	v_fma_f32 v56, -v50, v52, 1.0
	v_mul_f32_e32 v57, v51, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v39, -v40, v42, 1.0
	v_mul_f32_e32 v49, v44, v48
	v_fmac_f32_e32 v47, v54, v47
	v_div_scale_f32 v54, s4, v15, v38, v15
	v_fmac_f32_e32 v42, v39, v42
	v_div_scale_f32 v39, s2, v13, v38, v13
	v_fma_f32 v53, -v46, v49, v44
	v_fmac_f32_e32 v52, v56, v52
	v_div_scale_f32 v56, s5, v16, v38, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v55, v39, v42
	v_dual_fmac_f32 v49, v53, v48 :: v_dual_mul_f32 v58, v54, v47
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v59, v56, v52
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v53, -v40, v55, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v44, -v46, v49, v44
	v_fma_f32 v46, -v41, v57, v51
	v_fmac_f32_e32 v55, v53, v42
	v_fma_f32 v53, -v43, v58, v54
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v57, v46, v45
	v_div_fmas_f32 v44, v44, v48, v49
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v39, -v40, v55, v39
	v_fma_f32 v40, -v50, v59, v56
	v_fmac_f32_e32 v58, v53, v47
	v_fma_f32 v41, -v41, v57, v51
	v_div_fixup_f32 v12, v44, v38, v12
	v_div_fmas_f32 v39, v39, v42, v55
	v_fmac_f32_e32 v59, v40, v52
	v_fma_f32 v40, -v43, v58, v54
	s_mov_b32 vcc_lo, s3
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v41, v41, v45, v57
	v_fma_f32 v42, -v50, v59, v56
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v13, v39, v38, v13
	v_div_fmas_f32 v40, v40, v47, v58
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v14, v41, v38, v14
	v_div_fmas_f32 v42, v42, v52, v59
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s25, v36
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v15, v40, v38, v15
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	v_cndmask_b32_e64 v14, 0, v14, s1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v16, v42, v38, v16
	.loc	1 843 24 is_stmt 1              ; attention.py:843:24
	v_add_lshl_u32 v38, v37, v36, 2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, vcc_lo
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s1
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s2, s25, v34
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v39, 16, v38
	v_add_nc_u32_e32 v36, 8, v38
	v_cndmask_b32_e32 v40, 0x80000000, v38, vcc_lo
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s25, v35
	v_cmp_gt_i32_e64 s3, s25, v33
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v36, 0x80000000, v36
	s_clause 0x2
	buffer_store_b32 v25, v40, s[28:31], 0 offen
	buffer_store_b32 v26, v36, s[28:31], 0 offen
	buffer_store_b32 v27, v39, s[28:31], 0 offen
	v_add_nc_u32_e32 v39, 56, v38
	v_add_nc_u32_e32 v36, 48, v38
	v_add_nc_u32_e32 v25, 24, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e32 v39, 0x80000000, v39, vcc_lo
	v_dual_cndmask_b32 v36, 0x80000000, v36 :: v_dual_add_nc_u32 v27, 40, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_add_nc_u32 v26, 32, v38
	v_dual_cndmask_b32 v27, 0x80000000, v27 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	s_clause 0x4
	buffer_store_b32 v28, v25, s[28:31], 0 offen
	buffer_store_b32 v29, v26, s[28:31], 0 offen
	buffer_store_b32 v30, v27, s[28:31], 0 offen
	buffer_store_b32 v31, v36, s[28:31], 0 offen
	buffer_store_b32 v32, v39, s[28:31], 0 offen
	v_add_lshl_u32 v25, v37, v35, 2
	v_add_nc_u32_e32 v26, 0x48, v38
	v_add_nc_u32_e32 v27, 0x50, v38
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s1
	.loc	1 848 17                        ; attention.py:848:17
	v_add_nc_u32_e32 v28, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v25, 0x80000000, v25 :: v_dual_cndmask_b32 v26, 0x80000000, v26
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	v_add_nc_u32_e32 v29, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v28, 0x80000000, v28, vcc_lo
	s_clause 0x2
	buffer_store_b32 v17, v25, s[28:31], 0 offen
	buffer_store_b32 v18, v26, s[28:31], 0 offen
	buffer_store_b32 v19, v27, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x68, v38
	v_add_nc_u32_e32 v19, 0x70, v38
	v_cndmask_b32_e32 v17, 0x80000000, v29, vcc_lo
	buffer_store_b32 v20, v28, s[28:31], 0 offen
	v_add_nc_u32_e32 v20, 0x78, v38
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	buffer_store_b32 v21, v17, s[28:31], 0 offen
	v_add_lshl_u32 v17, v37, v34, 2
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s2
	.loc	1 848 17                        ; attention.py:848:17
	buffer_store_b32 v22, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v18, 0x88, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	s_clause 0x2
	buffer_store_b32 v23, v19, s[28:31], 0 offen
	buffer_store_b32 v24, v20, s[28:31], 0 offen
	buffer_store_b32 v1, v17, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0x90, v38
	v_add_nc_u32_e32 v20, 0xa8, v38
	v_cndmask_b32_e32 v17, 0x80000000, v18, vcc_lo
	v_add_nc_u32_e32 v18, 0x98, v38
	v_add_nc_u32_e32 v19, 0xa0, v38
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	buffer_store_b32 v2, v17, s[28:31], 0 offen
	v_dual_cndmask_b32 v2, 0x80000000, v18 :: v_dual_cndmask_b32 v17, 0x80000000, v19
	v_cndmask_b32_e32 v18, 0x80000000, v20, vcc_lo
	buffer_store_b32 v3, v1, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xb0, v38
	s_clause 0x2
	buffer_store_b32 v4, v2, s[28:31], 0 offen
	buffer_store_b32 v5, v17, s[28:31], 0 offen
	buffer_store_b32 v6, v18, s[28:31], 0 offen
	v_add_nc_u32_e32 v2, 0xb8, v38
	v_add_lshl_u32 v3, v37, v33, 2
	v_add_nc_u32_e32 v4, 0xc8, v38
	v_add_nc_u32_e32 v5, 0xd0, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s0, s3
	.loc	1 848 17                        ; attention.py:848:17
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_cndmask_b32 v0, 0x80000000, v0
	s_clause 0x4
	buffer_store_b32 v7, v1, s[28:31], 0 offen
	buffer_store_b32 v8, v2, s[28:31], 0 offen
	buffer_store_b32 v9, v3, s[28:31], 0 offen
	buffer_store_b32 v10, v4, s[28:31], 0 offen
	buffer_store_b32 v11, v5, s[28:31], 0 offen
	v_add_nc_u32_e32 v1, 0xd8, v38
	v_add_nc_u32_e32 v2, 0xe0, v38
	v_add_nc_u32_e32 v3, 0xe8, v38
	v_add_nc_u32_e32 v4, 0xf0, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	v_dual_cndmask_b32 v3, 0x80000000, v3 :: v_dual_cndmask_b32 v4, 0x80000000, v4
	s_clause 0x4
	buffer_store_b32 v12, v1, s[28:31], 0 offen
	buffer_store_b32 v13, v2, s[28:31], 0 offen
	buffer_store_b32 v14, v3, s[28:31], 0 offen
	buffer_store_b32 v15, v4, s[28:31], 0 offen
	buffer_store_b32 v16, v0, s[28:31], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp39:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
		.amdhsa_next_free_vgpr 147
		.amdhsa_next_free_sgpr 48
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_vgpr, 147
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.numbered_sgpr, 48
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8556
; TotalNumSgprs: 50
; NumVgprs: 147
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 18
; NumSGPRsForWavesPerEU: 50
; NumVGPRsForWavesPerEU: 147
; Occupancy: 9
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
	.short	765                             ; DW_AT_call_line
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
	.short	769                             ; DW_AT_call_line
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     50
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xint4_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn16_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     147
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
