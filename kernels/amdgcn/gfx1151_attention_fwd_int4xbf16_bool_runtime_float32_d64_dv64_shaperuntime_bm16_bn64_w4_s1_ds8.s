	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[12:15], s[0:1], 0x80
	s_load_b32 s28, s[0:1], 0x68
	s_mov_b32 s27, s3
	s_clause 0x1
	s_load_b128 s[60:63], s[0:1], 0x4c
	s_load_b32 s91, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v45, 31, v0
	v_lshrrev_b32_e32 v67, 5, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 0x88, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v71, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_lshlrev_b32_e32 v68, 1, v0
	v_add_nc_u32_e32 v73, 0, v5
                                        ; implicit-def: $vgpr224 : SGPR spill to VGPR lane
	v_add_nc_u32_e32 v72, 0, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v75, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s12
	s_bitcmp1_b32 s12, 8
	v_writelane_b32 v224, s28, 0
	s_cselect_b32 s90, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[47:48], null, s91, v67, v[45:46]
	s_cselect_b32 s7, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s21, s28
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s4, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s3, s21
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s5, s2, s28
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s10, s27, s62
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s5, s5, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s3
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v69, s91, 2, v47
	v_mad_u64_u32 v[48:49], null, s91, 12, v[47:48]
	v_lshl_add_u32 v70, s91, 3, v47
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s3, v1
	s_mul_f32 s3, s3, 0x4f7ffffe
	s_cvt_u32_f32 s22, s3
	s_sub_i32 s3, 0, s21
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s3, s3, s22
	s_mul_hi_u32 s3, s22, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s22, s22, s3
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s3, s4, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s6, s3, s21
	s_sub_i32 s4, s4, s6
	s_add_i32 s6, s3, 1
	s_sub_i32 s8, s4, s21
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s3, s6, s3
	s_cselect_b32 s4, s8, s4
	s_add_i32 s6, s3, 1
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s3, s6, s3
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s60
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s9, s27
	s_cvt_f32_u32 s4, s6
	s_sub_i32 s8, 0, s6
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s3, s3, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s3, s3, s5
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s5, s3, s28
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s3, s3, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s26, s2, s5
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v5, s3, v71
	v_writelane_b32 v224, s26, 1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s4, s4
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s4
	s_mul_hi_u32 s8, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s8
	s_mul_hi_u32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s4, s6
	s_add_i32 s5, s4, 1
	s_sub_i32 s2, s9, s8
	s_sub_i32 s8, s2, s6
	s_cmp_ge_u32 s2, s6
	s_cselect_b32 s4, s5, s4
	s_cselect_b32 s2, s8, s2
	s_add_i32 s5, s4, 1
	s_cmp_ge_u32 s2, s6
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[8:9], s[0:1], 0x18
	s_cselect_b32 s20, s5, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s61
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s4, s91, v45
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_f32_u32 s2, s5
	s_sub_i32 s11, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s2
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s3, v67
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_2)
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s62, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s2, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 12, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s11, s11, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s2, s11
	s_add_i32 s2, s2, s11
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s11, s6, s2
	s_xor_b32 s2, s60, s61
	s_mul_i32 s23, s11, s5
	s_ashr_i32 s24, s2, 31
	s_sub_i32 s6, s6, s23
	s_add_i32 s23, s11, 1
	s_sub_i32 s25, s6, s5
	s_cmp_ge_u32 s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s62, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s11, s23, s11
	s_cselect_b32 s6, s25, s6
	s_add_i32 s23, s11, 1
	s_cmp_ge_u32 s6, s5
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s62, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s23, s11
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s25, s10, s3
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s10, s25, s91
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s62, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s10, v47
	v_add_nc_u32_e32 v2, s10, v69
	v_add_nc_u32_e32 v3, s10, v70
	v_add_nc_u32_e32 v4, s10, v48
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s2
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v8, s25, v71, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s5
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s10, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s4, s6
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s11, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v1, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	.loc	1 781 22                        ; attention.py:781:22
	v_cmp_gt_i32_e32 vcc_lo, s62, v5
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v74, 0, v6
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s9, s9, 0xffff
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s24
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e32 v5, 0x80000000, v8, vcc_lo
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s6, s2, s24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v72, v1
	s_waitcnt vmcnt(2)
	ds_store_b8 v73, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v74, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v75, v4
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v1, v5, s[8:11], 0 offen
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s8, s63, 63
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v2, 24, v68
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s9, s8, 31
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s5, s6
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s9, s9, 26
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s5
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s8, s8, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v2, v71, 5, v2
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s9, s8, 6
	.loc	1 795 14 is_stmt 0              ; attention.py:795:14
	s_and_b32 s11, s8, 0xffffffc0
	.loc	1 798 33 is_stmt 1              ; attention.py:798:33
	s_add_i32 s9, s9, s28
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s9, s9, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v3, 8, v2
	v_xor_b32_e32 v4, 16, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s10, s9
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v76, 0, v2
	v_xor_b32_e32 v2, 24, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s8, s10, s22
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v77, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s16, s8, s21
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v78, 0, v4
	v_add_nc_u32_e32 v79, 0, v2
	.loc	1 798 32                        ; attention.py:798:32
	s_xor_b32 s9, s9, s28
	s_sub_i32 s10, s10, s16
	s_ashr_i32 s9, s9, 31
	s_add_i32 s16, s8, 1
	s_sub_i32 s17, s10, s21
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[49:50], v76
	ds_load_b64 v[51:52], v77
	ds_load_b64 v[53:54], v78
	ds_load_b64 v[55:56], v79
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s10, s21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v2, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s8, s16, s8
	s_cselect_b32 s10, s17, s10
	s_add_i32 s16, s8, 1
	s_cmp_ge_u32 s10, s21
	s_cselect_b32 s2, s16, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s9
	s_sub_i32 s2, s2, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s8, s26, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s93, s8, 6
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s8, v2
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s93, s2
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s94, s11, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s12, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s14, s15
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s9, s15, s13
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s3
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s9, s9, s3
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s9, s9, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s63, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s9, s9, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s93, s93, s9
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s10, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s10, s10, 26
	s_add_i32 s2, s2, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s94, s94, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s92, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v82, 0, 1, s7
	s_and_not1_b32 vcc_lo, exec_lo, s7
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s15, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s63, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s7, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s7, s7, 26
	s_add_i32 s2, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s94, s94, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 759 31 is_stmt 1              ; attention.py:759:31
	v_and_b32_e32 v81, 64, v0
	.loc	1 760 21                        ; attention.py:760:21
	v_and_b32_e32 v46, 63, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s93, s94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v80, 4, v81
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e64 s2, s92, v46
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_27
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s7, s27, s60
	s_mul_f32 s8, s8, 0x4f7ffffe
	s_ashr_i32 s7, s7, 31
	s_load_b32 s95, s[0:1], 0x7c
	s_xor_b32 s9, s20, s7
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s11, s9, s7
	s_sub_i32 s7, 0, s5
	s_mul_i32 s9, s11, s60
	s_mul_i32 s7, s7, s8
	s_sub_i32 s12, s27, s9
	s_mul_hi_u32 s7, s8, s7
	s_abs_i32 s9, s12
	s_add_i32 s8, s8, s7
	s_clause 0x1
	s_load_b128 s[20:23], s[0:1], 0x6c
	s_load_b64 s[74:75], s[0:1], 0x30
	s_mul_hi_u32 s7, s9, s8
	s_ashr_i32 s8, s12, 31
	s_ashr_i32 s6, s6, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s10, s7, s5
	v_writelane_b32 v224, s16, 2
	s_xor_b32 s6, s8, s6
	s_sub_i32 s8, s9, s10
	s_add_i32 s9, s7, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	v_writelane_b32 v224, s17, 3
	s_cselect_b32 s7, s9, s7
	s_cselect_b32 s8, s10, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 6, v81
	.loc	1 758 19                        ; attention.py:758:19
	s_add_i32 s9, s7, 1
	s_cmp_ge_u32 s8, s5
	v_writelane_b32 v224, s18, 4
	s_cselect_b32 s5, s9, s7
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v2.h, v1.l
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s3, v3
	.loc	1 758 19                        ; attention.py:758:19
	s_xor_b32 s5, s5, s6
	v_writelane_b32 v224, s19, 5
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[76:77], s[0:1], 0x20
	s_sub_i32 s0, s5, s6
	v_mov_b16_e32 v2.l, 0
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s1, s11, s61
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s5, s20, 0x3fb8aa3b
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s61, s0, s1
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v84, s15, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s0, s62, v1
	v_mul_lo_u32 v1, s95, v46
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v83, s5, v2 :: v_dual_and_b32 v4, 0x60, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v2, 2, v3
	v_or_b32_e32 v5, 4, v3
	v_or_b32_e32 v6, 6, v3
	v_or_b32_e32 v7, 8, v3
	v_or_b32_e32 v8, 10, v3
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[57:58], null, s23, v2, v[1:2]
	v_mad_u64_u32 v[58:59], null, s23, v5, v[1:2]
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v11, s3, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[59:60], null, s23, v6, v[1:2]
	v_dual_mov_b32 v171, 0xff800000 :: v_dual_lshlrev_b32 v2, 6, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v9, 12, v3
	v_or_b32_e32 v10, 14, v3
	.loc	1 759 21 is_stmt 0              ; attention.py:759:21
	v_or_b32_e32 v12, s3, v5
	v_or_b32_e32 v13, s3, v6
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v18, 16, v0
	v_dual_mov_b32 v42, 0x5410 :: v_dual_add_nc_u32 v85, s15, v11
	v_and_b32_e32 v5, 60, v68
	v_dual_mov_b32 v173, 0xff800000 :: v_dual_and_b32 v6, 64, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[60:61], null, s23, v7, v[1:2]
	v_mad_u64_u32 v[61:62], null, s23, v8, v[1:2]
	v_mad_u64_u32 v[62:63], null, s23, v9, v[1:2]
	v_mad_u64_u32 v[63:64], null, s23, v10, v[1:2]
	v_or3_b32 v92, v67, v6, v5
	v_mad_u64_u32 v[64:65], null, s23, v3, v[1:2]
	v_and_b32_e32 v1, 0x380, v2
	v_dual_mov_b32 v175, 0xff800000 :: v_dual_lshlrev_b32 v2, 1, v71
	v_lshlrev_b32_e32 v3, 2, v18
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v87, s15, v13
	v_cndmask_b32_e64 v25, 0x104, 0, vcc_lo
	v_dual_mov_b32 v178, 0xff800000 :: v_dual_and_b32 v43, 7, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_or3_b32 v93, v1, v3, v2
	v_xor_b32_e32 v1, 0x294, v92
	v_bfe_i32 v96, v0, 3, 1
	v_lshlrev_b32_e32 v44, 4, v43
	v_dual_mov_b32 v177, 0xff800000 :: v_dual_and_b32 v24, 32, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v106, 0, v1
	v_mov_b32_e32 v1, 0
	v_cmp_eq_u32_e32 vcc_lo, 0, v18
	v_dual_mov_b32 v18, 0x7632 :: v_dual_lshlrev_b32 v3, 2, v45
	v_dual_mov_b32 v176, v1 :: v_dual_and_b32 v65, 0x70, v68
	v_cndmask_b32_e32 v42, 0x1054, v42, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v18, 0x3276, v18, vcc_lo
	v_lshlrev_b32_e32 v66, 7, v46
	v_lshrrev_b32_e32 v97, 3, v81
	v_xor_b32_e32 v65, v44, v65
	v_lshl_or_b32 v42, v42, 8, v42
	v_lshl_or_b32 v18, v18, 8, v18
	v_lshl_or_b32 v44, v4, 6, v44
	v_and_or_b32 v4, 0x410, v96, v4
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v15, s3, v8
	v_xor_b32_e32 v8, 0x108, v92
	v_lshlrev_b32_e32 v29, 2, v24
	v_xor_b32_e32 v5, v25, v5
	v_and_b32_e32 v42, 0x540054, v42
	v_and_b32_e32 v18, 0x760076, v18
	v_or3_b32 v96, v66, v97, v65
	v_xor_b32_e32 v4, v4, v44
	v_or_b32_e32 v14, s3, v7
	v_or_b32_e32 v16, s3, v9
	v_or_b32_e32 v17, s3, v10
	v_xor_b32_e32 v2, 0x318, v92
	v_lshl_or_b32 v94, v71, 8, v3
	v_xor_b32_e32 v3, 16, v93
	v_lshrrev_b32_e32 v41, 2, v81
	v_lshl_or_b32 v42, v42, 4, v42
	v_lshl_or_b32 v18, v18, 4, v18
	v_lshl_or_b32 v99, v43, 7, v4
	v_xor_b32_e32 v4, 64, v96
	v_dual_mov_b32 v172, 0xff800000 :: v_dual_add_nc_u32 v103, 0, v8
	v_mov_b32_e32 v8, v1
	v_or3_b32 v95, v5, v29, v6
	v_add_nc_u32_e32 v6, 0, v6
	v_xor_b32_e32 v65, 0x60, v96
	v_xor_b32_e32 v66, 0x70, v96
	.loc	1 762 27                        ; attention.py:762:27
	v_add_nc_u32_e32 v86, s15, v12
	v_add_nc_u32_e32 v88, s15, v14
	v_add_nc_u32_e32 v89, s15, v15
	v_dual_mov_b32 v169, 0xff800000 :: v_dual_add_nc_u32 v90, s15, v16
	v_add_nc_u32_e32 v91, s15, v17
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s1, s62, v11
	v_cmp_gt_i32_e64 s5, s62, v12
	v_cmp_gt_i32_e64 s6, s62, v13
	v_cmp_gt_i32_e64 s7, s62, v14
	v_cmp_gt_i32_e64 s8, s62, v15
	v_cmp_gt_i32_e64 s9, s62, v16
	v_cmp_gt_i32_e64 s10, s62, v17
	v_xor_b32_e32 v7, 0x84, v92
	v_xor_b32_e32 v9, 0x18c, v92
	v_xor_b32_e32 v10, 0x210, v92
	v_xor_b32_e32 v11, 0x39c, v92
	v_xor_b32_e32 v12, 4, v93
	v_xor_b32_e32 v13, 8, v93
	v_xor_b32_e32 v14, 12, v93
	v_xor_b32_e32 v15, 20, v93
	v_xor_b32_e32 v16, 24, v93
	v_xor_b32_e32 v17, 28, v93
	v_xor_b32_e32 v19, 4, v94
	v_xor_b32_e32 v20, 8, v94
	v_xor_b32_e32 v21, 12, v94
	v_xor_b32_e32 v22, 16, v94
	v_xor_b32_e32 v23, 20, v94
	v_xor_b32_e32 v26, 24, v94
	v_xor_b32_e32 v27, 28, v94
	v_xor_b32_e32 v28, 32, v94
	v_xor_b32_e32 v25, 36, v94
	v_xor_b32_e32 v30, 40, v94
	v_xor_b32_e32 v31, 44, v94
	v_xor_b32_e32 v32, 48, v94
	v_xor_b32_e32 v5, 52, v94
	v_xor_b32_e32 v29, 56, v94
	v_xor_b32_e32 v33, 60, v94
	v_xor_b32_e32 v34, 0x208, v95
	v_xor_b32_e32 v35, 0x410, v95
	v_xor_b32_e32 v36, 0x618, v95
	v_xor_b32_e32 v37, 0x820, v95
	v_xor_b32_e32 v38, 0xa28, v95
	v_xor_b32_e32 v39, 0xc30, v95
	v_xor_b32_e32 v40, 0xe38, v95
	v_lshl_add_u32 v24, v24, 1, 0
	v_and_b32_e32 v97, 0x5040504, v42
	v_and_b32_e32 v98, 0x7060706, v18
	v_xor_b32_e32 v18, 16, v96
	v_xor_b32_e32 v42, 32, v96
	v_xor_b32_e32 v44, 48, v96
	v_xor_b32_e32 v43, 0x50, v96
	v_xor_b32_e32 v145, 16, v99
	v_xor_b32_e32 v146, 32, v99
	v_xor_b32_e32 v147, 48, v99
	v_dual_mov_b32 v170, 0xff800000 :: v_dual_add_nc_u32 v101, v6, v41
	v_xor_b32_e32 v6, 64, v99
	v_add_nc_u32_e32 v107, 0, v2
	v_add_nc_u32_e32 v112, 0, v3
	v_add_nc_u32_e32 v141, 0, v4
	v_xor_b32_e32 v2, 0x50, v99
	v_xor_b32_e32 v3, 0x60, v99
	v_xor_b32_e32 v4, 0x70, v99
	v_add_nc_u32_e32 v143, 0, v65
	v_add_nc_u32_e32 v144, 0, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[65:66], null, s92, v80, v[46:47]
	.loc	1 870 25                        ; attention.py:870:25
	s_mul_i32 s3, s3, s23
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s11, s11, s21
	v_add_nc_u32_e32 v100, v24, v41
	v_add_nc_u32_e32 v102, 0, v7
	v_add_nc_u32_e32 v104, 0, v9
	v_dual_mov_b32 v174, 0xff800000 :: v_dual_add_nc_u32 v105, 0, v10
	v_add_nc_u32_e32 v108, 0, v11
	v_add_nc_u32_e32 v109, 0, v12
	v_add_nc_u32_e32 v110, 0, v13
	v_add_nc_u32_e32 v111, 0, v14
	v_add_nc_u32_e32 v113, 0, v15
	v_add_nc_u32_e32 v114, 0, v16
	v_add_nc_u32_e32 v115, 0, v17
	v_add_nc_u32_e32 v116, 0, v19
	v_add_nc_u32_e32 v117, 0, v20
	v_add_nc_u32_e32 v118, 0, v21
	v_add_nc_u32_e32 v119, 0, v22
	v_add_nc_u32_e32 v120, 0, v23
	v_add_nc_u32_e32 v121, 0, v26
	v_add_nc_u32_e32 v122, 0, v27
	v_add_nc_u32_e32 v123, 0, v28
	v_add_nc_u32_e32 v124, 0, v25
	v_add_nc_u32_e32 v125, 0, v30
	v_add_nc_u32_e32 v126, 0, v31
	v_add_nc_u32_e32 v127, 0, v32
	v_add_nc_u32_e32 v128, 0, v5
	v_add_nc_u32_e32 v129, 0, v29
	v_add_nc_u32_e32 v130, 0, v33
	v_add_nc_u32_e32 v131, 0, v34
	v_add_nc_u32_e32 v132, 0, v35
	v_add_nc_u32_e32 v133, 0, v36
	v_add_nc_u32_e32 v134, 0, v37
	v_add_nc_u32_e32 v135, 0, v38
	v_add_nc_u32_e32 v136, 0, v39
	v_add_nc_u32_e32 v137, 0, v40
	v_add_nc_u32_e32 v138, 0, v18
	v_add_nc_u32_e32 v139, 0, v42
	v_add_nc_u32_e32 v140, 0, v44
	v_add_nc_u32_e32 v142, 0, v43
	v_add_nc_u32_e32 v145, 0, v145
	v_add_nc_u32_e32 v146, 0, v146
	v_add_nc_u32_e32 v147, 0, v147
	v_add_nc_u32_e32 v148, 0, v6
	v_add_nc_u32_e32 v149, 0, v2
	v_add_nc_u32_e32 v150, 0, v3
	v_dual_mov_b32 v2, v1 :: v_dual_add_nc_u32 v151, 0, v4
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v152, v0, 4, 1
	v_subrev_nc_u32_e32 v153, s13, v84
	v_subrev_nc_u32_e32 v154, s13, v85
	v_subrev_nc_u32_e32 v155, s13, v86
	v_subrev_nc_u32_e32 v156, s13, v87
	v_subrev_nc_u32_e32 v157, s13, v88
	v_subrev_nc_u32_e32 v158, s13, v89
	v_subrev_nc_u32_e32 v159, s13, v90
	v_subrev_nc_u32_e32 v160, s13, v91
	v_add_nc_u32_e32 v161, s14, v84
	v_add_nc_u32_e32 v162, s14, v85
	v_add_nc_u32_e32 v163, s14, v86
	v_add_nc_u32_e32 v164, s14, v87
	v_add_nc_u32_e32 v165, s14, v88
	v_add_nc_u32_e32 v166, s14, v89
	v_add_nc_u32_e32 v167, s14, v90
	v_add_nc_u32_e32 v168, s14, v91
	v_mov_b32_e32 v66, 0xff800000
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s12, s12, s22
	s_add_i32 s89, s11, s3
	s_mov_b32 s64, 0
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s61, s61, s63
	s_lshl_b32 s62, s91, 4
	s_lshl_b32 s99, s91, 5
	s_and_b32 s81, s17, 0xffff
	s_mov_b32 s80, s16
	s_mov_b32 s83, 0x31027000
	s_mov_b32 s82, 0x7ffffffe
	s_and_b32 s77, s77, 0xffff
	s_add_i32 s89, s89, s12
	s_lshl_b32 s3, s92, 1
	s_lshl_b32 s97, s92, 3
	s_lshl_b32 s102, s92, 4
	s_lshl_b32 s98, s92, 5
	s_mul_i32 s73, s92, 48
	s_mul_i32 s96, s92, 49
	s_mul_i32 s100, s92, 50
	s_mul_i32 s101, s92, 51
	s_mul_i32 s103, s92, 56
	s_mul_i32 s104, s92, 57
	s_mul_i32 vcc_hi, s92, 58
	s_mul_i32 s88, s92, 59
	s_and_b32 s85, s19, 0xffff
	s_mov_b32 s84, s18
	s_mov_b32 s65, s64
	s_mov_b32 s66, s64
	s_mov_b32 s67, s64
	s_mov_b32 s68, s64
	s_mov_b32 s69, s64
	s_mov_b32 s70, s64
	s_mov_b32 s71, s64
	s_mov_b32 s72, 0x76543210
	v_writelane_b32 v224, s27, 6
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	s_or_b32 exec_lo, exec_lo, s12
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v212, v9
	.loc	1 877 34                        ; attention.py:877:34
	s_waitcnt vmcnt(0)
	v_and_b16 v9.l, 0xff, v44.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v211, v29
	.loc	1 877 25                        ; attention.py:877:25
	v_add_nc_u32_e32 v29, 0, v92
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v213, v10
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v9.l
	v_and_b16 v9.l, 0xff, v43.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_mul_f32_e32 v34, v83, v34
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s48, s34, vcc_lo
	.loc	1 877 34 is_stmt 0              ; attention.py:877:34
	v_cmp_ne_u16_e64 s11, 0, v9.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v9, 0, 1, s48
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v209.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s47, s33, s11
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v10, 0, 1, s47
	ds_store_b8 v29, v9
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v29.l, 0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v38, v38
	v_mul_f32_e32 v37, v83, v37
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v25, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v9.l, v29.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v35, v83, v35
	v_mul_f32_e32 v36, v83, v36
	v_cvt_f32_i32_e32 v40, v40
	v_mul_f32_e32 v25, v83, v25
	v_mul_f32_e32 v34, v34, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v208.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v83, v38
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v26, v26
	v_mul_f32_e32 v35, v35, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v207.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v83, v39
	v_mul_f32_e32 v17, v83, v17
	v_mul_f32_e32 v40, v83, v40
	v_cvt_f32_i32_e32 v31, v31
	v_mul_f32_e32 v36, v36, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v206.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v26, v83, v26
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v18, v18
	v_mul_f32_e32 v27, v83, v27
	v_mul_f32_e32 v37, v37, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v205.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v28, v83, v28
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v19, v19
	v_mul_f32_e32 v38, v38, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v204.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v30, v83, v30
	v_mul_f32_e32 v31, v83, v31
	v_mul_f32_e32 v32, v83, v32
	v_cvt_f32_i32_e32 v20, v20
	v_mul_f32_e32 v39, v39, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v203.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v24, v24
	v_mul_f32_e32 v40, v40, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v202.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_mul_f32_e32 v25, v25, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v201.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v29.h, v210.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v26, v26, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v200.l
	.loc	1 890 30                        ; attention.py:890:30
	s_mov_b32 s86, s82
	s_mov_b32 s87, s83
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v27, v27, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v199.l
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v28, v28, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v198.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v198, v83, v211
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v198, v198, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v197.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v30, v30, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v196.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v31, v31, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v195.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v32, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v194.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v195, v17, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v193.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v17, v83, v18
	v_mul_f32_e32 v18, v17, v9
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v9.l, 0xff, v41.h
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	v_add_nc_u32_e32 v17, 0, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e32 vcc_lo, 0, v9.l
	v_and_b16 v9.l, 0xff, v41.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s50, s28, vcc_lo
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s11, 0, v9.l
	v_and_b16 v9.l, 0xff, v42.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s49, s31, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s12, 0, v9.l
	v_and_b16 v9.l, 0xff, v42.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s46, s30, s12
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s13, 0, v9.l
	v_and_b16 v9.l, 0xff, v44.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s45, s27, s13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s14, 0, v9.l
	v_and_b16 v9.l, 0xff, v43.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s44, s26, s14
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s15, 0, v9.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v9, 0, 1, s50
	ds_store_b8 v102, v10
	v_cndmask_b32_e64 v10, 0, 1, s49
	s_and_b32 s43, s29, s15
	ds_store_b8 v103, v9
	v_cndmask_b32_e64 v9, 0, 1, s46
	ds_store_b8 v104, v10
	v_cndmask_b32_e64 v10, 0, 1, s45
	ds_store_b8 v105, v9
	v_cndmask_b32_e64 v9, 0, 1, s44
	ds_store_b8 v106, v10
	v_cndmask_b32_e64 v10, 0, 1, s43
	ds_store_b8 v107, v9
	ds_store_b8 v108, v10
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e64 v9.h, v191.l
	v_mov_b16_e32 v9.l, v29.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v19
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v19, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v190.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v20
	v_mul_f32_e32 v20, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v189.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v21, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v188.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v22
	v_mul_f32_e32 v22, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v187.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v23, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v186.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v24
	v_mul_f32_e32 v24, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v185.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v212
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v196, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v184.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v213
	v_mul_f32_e32 v197, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v183.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v199, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v182.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v12
	v_mul_f32_e32 v200, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v181.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v201, v10, v9 :: v_dual_mul_f32 v10, v83, v14
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v180.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v202, v10, v9
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v179.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v203, v10, v9 :: v_dual_mul_f32 v10, v83, v16
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v9.h, v192.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v204, v10, v9
	.loc	1 877 25                        ; attention.py:877:25
	ds_load_u16_d16 v9, v110
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v9, v111 offset:32
	ds_load_u16_d16 v10, v110 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v10, v109 offset:32
	v_and_b16 v11.l, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_cmp_eq_u16_e64 s36, 1, v11.l
	ds_load_u16_d16 v11, v111
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s22, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v43, 0xff800000, v19, s22
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v11.h, 1, v11.l
	v_lshrrev_b16 v9.l, 8, v11.l
	v_cmp_eq_u16_e64 s39, 1, v11.h
	ds_load_u16_d16_hi v11, v112
	ds_load_u16_d16 v12, v115 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v12, v114 offset:32
	ds_load_u16_d16 v13, v113 offset:32
	s_waitcnt lgkmcnt(0)
	ds_load_u16_d16_hi v13, v112 offset:32
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v193, 0xff800000, v36, s39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s24, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v20, s24
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v14.l, 1, v11.h
	v_lshrrev_b16 v9.l, 8, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s38, 1, v14.l
	ds_load_u16_d16 v14, v113
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v190, 0xff800000, v37, s38
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s20, 1, v9.l
	s_waitcnt lgkmcnt(0)
	v_and_b16 v14.h, 1, v14.l
	v_lshrrev_b16 v9.l, 8, v14.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s40, 1, v14.h
	ds_load_u16_d16_hi v14, v114
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v191, 0xff800000, v38, s40
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s21, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v22, s21
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.l, 1, v14.h
	v_lshrrev_b16 v9.l, 8, v14.h
	v_cmp_eq_u16_e64 s35, 1, v15.l
	ds_load_u16_d16 v15, v115
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v188, 0xff800000, v39, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s18, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v38, 0xff800000, v23, s18
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v15.h, 1, v15.l
	v_lshrrev_b16 v9.l, 8, v15.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s37, 1, v15.h
	ds_load_u16_d16_hi v15, v17 offset:32
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v189, 0xff800000, v40, s37
	v_cndmask_b32_e64 v40, 0xff800000, v21, s20
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s19, 1, v9.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v39, 0xff800000, v24, s19
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_and_b16 v16.l, 1, v15.h
	v_lshrrev_b16 v9.l, 8, v15.h
	v_cmp_eq_u16_e64 s33, 1, v16.l
	v_and_b16 v16.l, 1, v10.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v186, 0xff800000, v25, s33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s34, 1, v16.l
	v_and_b16 v16.l, 1, v10.l
	v_cmp_eq_u16_e64 s16, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v10.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v187, 0xff800000, v26, s34
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s30, 1, v16.l
	v_and_b16 v16.l, 1, v9.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v196, s16
	v_cndmask_b32_e64 v184, 0xff800000, v27, s30
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s31, 1, v16.l
	v_and_b16 v16.l, 1, v13.h
	v_cmp_eq_u16_e64 s17, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v10.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v83, v33
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s28, 1, v16.l
	v_and_b16 v16.l, 1, v13.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b16 v9.l, 1, v9.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v10, v10, v29
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v197, s17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s29, 1, v16.l
	v_and_b16 v16.l, 1, v12.h
	v_cmp_eq_u16_e64 s14, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v9.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v183, 0xff800000, v30, s29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s26, 1, v16.l
	v_and_b16 v16.l, 1, v12.l
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v180, 0xff800000, v31, s26
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s27, 1, v16.l
	ds_load_u16_d16 v16, v17
	v_cmp_eq_u16_e64 s15, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v13.h
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v181, 0xff800000, v32, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v9.l, 1, v9.l
	v_cmp_eq_u16_e64 s11, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v13.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v32, 0xff800000, v201, s11
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v9.l, 1, v9.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v16.h, 8, v16.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cmp_eq_u16_e64 s13, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v12.h
	v_and_b16 v16.h, 1, v16.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v33, 0xff800000, v202, s13
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v9.l, 1, v9.l
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u16_e64 s23, 1, v16.h
	ds_load_u16_d16_hi v16, v109
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e32 vcc_lo, 1, v9.l
	v_lshrrev_b16 v9.l, 8, v12.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v195, s23
	v_cndmask_b32_e32 v30, 0xff800000, v203, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v9.l, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v192, 0xff800000, v35, s36
	v_cndmask_b32_e64 v35, 0xff800000, v200, s15
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s12, 1, v9.l
	v_and_b16 v9.l, 1, v16.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v31, 0xff800000, v204, s12
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u16_e64 s41, 1, v9.l
	v_lshrrev_b16 v17.l, 8, v16.h
	.loc	1 882 26                        ; attention.py:882:26
	v_add_nc_u32_e32 v9, 0, v94
	v_cndmask_b32_e64 v185, 0xff800000, v28, s31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v194, 0xff800000, v10, s41
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v17.l, 1, v17.l
	.loc	1 882 26                        ; attention.py:882:26
	ds_store_2addr_b32 v9, v194, v42 offset1:32
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b16 v9.l, 1, v16.h
	v_cmp_eq_u16_e64 s25, 1, v17.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_eq_u16_e64 s42, 1, v9.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v179, 0xff800000, v18, s25
	v_add_nc_u32_e32 v9, 0, v95
	v_cndmask_b32_e64 v182, 0xff800000, v198, s28
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v195, 0xff800000, v34, s42
	v_cndmask_b32_e64 v34, 0xff800000, v199, s14
	ds_store_2addr_b32 v116, v195, v179 offset1:32
	ds_store_2addr_b32 v117, v192, v43 offset1:32
	ds_store_2addr_b32 v118, v193, v44 offset1:32
	ds_store_2addr_b32 v119, v190, v40 offset1:32
	ds_store_2addr_b32 v120, v191, v41 offset1:32
	ds_store_2addr_b32 v121, v188, v38 offset1:32
	ds_store_2addr_b32 v122, v189, v39 offset1:32
	ds_store_2addr_b32 v123, v186, v36 offset1:32
	ds_store_2addr_b32 v124, v187, v37 offset1:32
	ds_store_2addr_b32 v125, v184, v34 offset1:32
	ds_store_2addr_b32 v126, v185, v35 offset1:32
	ds_store_2addr_b32 v127, v182, v32 offset1:32
	ds_store_2addr_b32 v128, v183, v33 offset1:32
	ds_store_2addr_b32 v129, v180, v30 offset1:32
	ds_store_2addr_b32 v130, v181, v31 offset1:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v12, v9
	ds_load_b32 v10, v131
	ds_load_b32 v9, v132
	ds_load_b32 v11, v133
	ds_load_b32 v16, v134
	ds_load_b32 v15, v135
	ds_load_b32 v14, v136
	ds_load_b32 v13, v137
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_dpp v17, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp2:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v18, v12, v12 :: v_dual_max_f32 v19, v10, v10
	v_dual_max_f32 v20, v9, v9 :: v_dual_max_f32 v21, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v17, v17, v17
	v_max_f32_e32 v22, v13, v13
	v_max_f32_e32 v17, v18, v17
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp4:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v18, v18, v18
	v_max_f32_e32 v18, v19, v18
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v19, v20, v19
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v17, v17, v20
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp10:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v18, v18, v20
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp12:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v19, v19, v20
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v17, v17, v20
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v18, v18, v20
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v19, v19, v20
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v17, v17, v20
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v18, v18, v20
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v20, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v20
	v_max_f32_e32 v20, v21, v20
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v19, v19, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v20, v20, v21
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v21, v17, -1, -1 op_sel:[1,0]
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v17, v17, v21
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s51, v17, 31
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v16 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v20, v20, v21
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v21, v18, -1, -1 op_sel:[1,0]
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v21, v21, v21
	v_max_f32_e32 v18, v18, v21
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v20 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s52, v18, 31
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v18, v16, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v20, v20, v21
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v21, v19, -1, -1 op_sel:[1,0]
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v18, v17
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v18, v15 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v18, v18, v18
	v_max_f32_e32 v19, v19, v21
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v21, v20, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_readlane_b32 s53, v19, 31
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v19, v15, v15
	v_dual_max_f32 v21, v21, v21 :: v_dual_max_f32 v18, v19, v18
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v19, v14 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v20, v20, v21 :: v_dual_max_f32 v21, v14, v14
	v_max_f32_e32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v21, v19
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v21, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp48:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v21, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v21, v22, v21
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v17 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v22
.Ltmp51:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v18 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v18, v18, v22
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v19 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp54:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v19, v22
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v21 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v21, v21, v22
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v17 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp58:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v22
.Ltmp59:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v18 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v18, v18, v22
.Ltmp61:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v19 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp62:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v19, v22
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v21 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp64:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v21, v21, v22
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v17 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v17, v17, v22
.Ltmp67:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v18 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v18, v18, v22
.Ltmp69:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v19 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v19, v19, v22
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v22, v21 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp72:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v21, v21, v22
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v22, v17, -1, -1 op_sel:[1,0]
	v_readlane_b32 s54, v20, 31
.Ltmp74:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp75:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v20, s54 :: v_dual_max_f32 v17, v17, v22
	v_permlanex16_b32 v22, v18, -1, -1 op_sel:[1,0]
	v_readlane_b32 s55, v17, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp76:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v22, v22, v22 :: v_dual_mov_b32 v17, s51
	v_max_f32_e32 v18, v18, v22
.Ltmp77:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v22, v19, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s56, v18, 31
.Ltmp78:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v22, v22, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v18, s52 :: v_dual_max_f32 v19, v19, v22
	v_permlanex16_b32 v22, v21, -1, -1 op_sel:[1,0]
	v_readlane_b32 s57, v19, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp80:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v22, v22, v22 :: v_dual_mov_b32 v19, s53
.Ltmp81:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v23, s57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp82:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v21, v21, v22 :: v_dual_mov_b32 v22, s56
.Ltmp83:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_readlane_b32 s58, v21, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v21, s55 :: v_dual_mov_b32 v24, s58
	ds_store_b128 v100, v[17:20]
	ds_store_b128 v100, v[21:24] offset:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v101 offset:32
	ds_load_b128 v[21:24], v101
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp85:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v25, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v25, v25 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v173, v173, v17, v25
.Ltmp87:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp88:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v174, v174, v18, v17
.Ltmp89:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_dual_mov_b32 v17, v19 :: v_dual_max_f32 v18, v21, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v175, v175, v19, v17
.Ltmp91:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v66, v66, v20, v17
.Ltmp93:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp94:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v13, v66
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mad_u64_u32 v[25:26], null, s59, s92, v[65:66]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp96:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v170, v170, v22, v17
.Ltmp97:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp98:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v200, v25, s92, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v10, v170
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
.Ltmp99:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp100:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v26, v25, s73, 1
	v_add_lshl_u32 v199, v25, s96, 1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s43
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v171, v171, v23, v17
.Ltmp101:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v24
.Ltmp102:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v27, v25, s100, 1
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp104:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v202, v25, s101, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v9, v171
.Ltmp105:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v28, v25, s103, 1
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp108:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s47
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v9, v9
	.loc	1 884 24 is_stmt 1              ; attention.py:884:24
	v_max3_f32 v172, v172, v24, v17
.Ltmp109:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v17, v21
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp111:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v206, v25, s104, 1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v11, v172
.Ltmp112:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp113:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v13, v13, v13 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp114:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s50
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
.Ltmp115:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v17, v17, v17
.Ltmp116:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v210, v25, vcc_hi, 1
.Ltmp117:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp118:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v209, v25, s88, 1
.Ltmp119:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v196, v18, v17
.Ltmp120:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v17, v169, v169
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp122:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v169, v17, v196
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_f32_dpp v11, v11, v11 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp124:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v12, v169
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp125:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v11, v11, v11 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp126:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
.Ltmp127:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v11, v11, v11 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_add_f32_dpp v11, v11, v11 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp128:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp129:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp130:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v12, -1, -1 op_sel:[1,0]
.Ltmp131:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp132:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s47, v12, 31
.Ltmp133:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v17
.Ltmp134:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v9, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s48, v10, 31
.Ltmp135:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v17
.Ltmp136:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v17, v11, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_readlane_b32 s49, v9, 31
.Ltmp137:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v9, v16, v173
.Ltmp138:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v11, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp139:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v9, v9
.Ltmp140:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s43, v11, 31
	v_mov_b32_e32 v11, s49
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp141:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v9, 0, v9, s46
.Ltmp142:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v9, v9, v9 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v9, v9, v9 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v9, v9, v9 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp143:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v10, v9, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp144:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v9, v9, v10
.Ltmp145:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v10, v15, v174
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v10, v10
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v10, 0, v10, s45
.Ltmp146:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v10, v10, v10 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v10, v10, v10 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v10, v10, v10 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v10, v10, v10 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
.Ltmp147:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v12, v10, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp148:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v10, v10, v12
.Ltmp149:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v12, v14, v175
.Ltmp150:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s45, v10, 31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
.Ltmp151:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v12, v12
.Ltmp152:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v10, s48
.Ltmp153:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v12, 0, v12, s44
.Ltmp154:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_readlane_b32 s44, v9, 31
	v_mov_b32_e32 v9, s47
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp155:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_dpp v12, v12, v12 row_shr:8 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:4 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_dpp v12, v12, v12 row_shr:2 row_mask:0xf bank_mask:0xf bound_ctrl:1
	v_add_f32_dpp v12, v12, v12 row_shr:1 row_mask:0xf bank_mask:0xf bound_ctrl:1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp156:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v14, v12, -1, -1 op_sel:[1,0]
.Ltmp157:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v12, v12, v14
.Ltmp158:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v14, v13, -1, -1 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_readlane_b32 s46, v12, 31
.Ltmp159:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v13, v13, v14 :: v_dual_mov_b32 v12, s43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp160:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v14, s45 :: v_dual_mov_b32 v15, s46
	v_readlane_b32 s50, v13, 31
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v13, s44 :: v_dual_mov_b32 v16, s50
	ds_store_b128 v100, v[9:12]
	ds_store_b128 v100, v[13:16] offset:32
.Ltmp161:
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v9, s93, v80
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v11, v25, s3, 1
.Ltmp162:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp163:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s93, s93, 64
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 1, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s58, s63, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s43, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 2, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s58, s2, s58
	s_and_b32 s43, s2, s43
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 3, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v200, 0x80000000, v200, s43
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s51, s2, s51
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s45, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 8, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s51
	buffer_load_u16 v200, v200, s[84:87], 0 offen
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s45
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 9, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s2, s52
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s47, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 10, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s47, s2, s47
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s48, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 16, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s55, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 17, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s44, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 18, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s44
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s56, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 19, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s46, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 24, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 25, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s54, s2, s54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s49, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 26, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s57, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 27, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s50, s63, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v10, 1, v25
	v_cndmask_b32_e64 v10, 0x80000000, v10, s58
	s_clause 0x1
	buffer_load_u16 v19, v10, s[84:87], 0 offen
	buffer_load_u16 v20, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 32, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s58, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 33, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s51, s63, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s97, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s52
	s_mul_i32 s52, s92, 10
	v_add_lshl_u32 v11, v25, s52, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s52, s2, s53
	s_and_b32 s53, s2, s55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s52
	s_clause 0x1
	buffer_load_u16 v13, v10, s[84:87], 0 offen
	buffer_load_u16 v14, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 34, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s59, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 35, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s52, s63, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s102, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s53
	s_mul_i32 s53, s92, 18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v11, v25, s53, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s53, s2, s56
	.loc	1 890 30                        ; attention.py:890:30
	s_mul_i32 s56, s92, 24
	v_cndmask_b32_e64 v11, 0x80000000, v11, s53
	s_clause 0x1
	buffer_load_u16 v15, v10, s[84:87], 0 offen
	buffer_load_u16 v16, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 40, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s55, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 41, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s55, s2, s55
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s53, s63, v10
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s56, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s54
	s_mul_i32 s54, s92, 26
	v_add_lshl_u32 v11, v25, s54, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s54, s2, s57
	s_and_b32 s57, s2, s58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s54
	s_clause 0x1
	buffer_load_u16 v17, v10, s[84:87], 0 offen
	buffer_load_u16 v18, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 42, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s56, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 43, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s54, s63, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s98, 1
	v_cndmask_b32_e64 v10, 0x80000000, v10, s57
	s_mul_i32 s57, s92, 34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v11, v25, s57, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s57, s2, s59
	.loc	1 890 30                        ; attention.py:890:30
	s_mul_i32 s59, s92, 40
	v_cndmask_b32_e64 v11, 0x80000000, v11, s57
	s_clause 0x1
	buffer_load_u16 v21, v10, s[84:87], 0 offen
	buffer_load_u16 v22, v11, s[84:87], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 48, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s57, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 50, v9
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s58, s63, v10
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v10, v25, s59, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_cndmask_b32_e64 v10, 0x80000000, v10, s55
	s_mul_i32 s55, s92, 42
	v_add_lshl_u32 v11, v25, s55, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s55, s2, s56
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v11, s55
	s_mul_i32 s55, s92, 3
	s_clause 0x1
	buffer_load_u16 v23, v10, s[84:87], 0 offen
	buffer_load_u16 v24, v11, s[84:87], 0 offen
	v_add_lshl_u32 v205, v25, s55, 1
	s_mul_i32 s55, s92, 9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_lshl_u32 v207, v25, s55, 1
	s_mul_i32 s55, s92, 11
	v_cndmask_b32_e64 v205, 0x80000000, v205, s45
	v_add_lshl_u32 v208, v25, s55, 1
	s_mul_i32 s55, s92, 17
	v_cndmask_b32_e64 v207, 0x80000000, v207, s47
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s47, s2, s48
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v198, v25, s55, 1
	v_cndmask_b32_e64 v208, 0x80000000, v208, s47
	s_clause 0x2
	buffer_load_u16 v208, v208, s[84:87], 0 offen
	buffer_load_u16 v207, v207, s[84:87], 0 offen
	buffer_load_u16 v205, v205, s[84:87], 0 offen
	s_mul_i32 s55, s92, 19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s46
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v203, v25, s55, 1
	s_mul_i32 s55, s92, 25
	v_cndmask_b32_e64 v198, 0x80000000, v198, s44
	v_add_lshl_u32 v201, v25, s55, 1
	s_mul_i32 s55, s92, 27
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s51
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v204, v25, s55, 1
	s_mul_i32 s55, s92, 33
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v10, v25, s55, 1
	s_mul_i32 s55, s92, 35
	v_add_lshl_u32 v11, v25, s55, 1
	s_mul_i32 s55, s92, 41
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	v_add_lshl_u32 v12, v25, s55, 1
	s_mul_i32 s55, s92, 43
	v_add_lshl_u32 v197, v25, s55, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v25, 56, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s55, s2, s57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s59, s63, v25
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v25, 58, v9
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s57, s2, s59
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s60, s63, v25
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v25, 0x80000000, v26, s55
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s55, s2, s58
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v26, 0x80000000, v27, s55
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v27, 49, v9
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v25, v25, s[84:87], 0 offen
	buffer_load_u16 v26, v26, s[84:87], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s55, s63, v27
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v27, 51, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s56, s63, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v27, 0x80000000, v28, s57
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s57, s2, s60
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v28, 0x80000000, v210, s57
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v210, 57, v9
	v_add_nc_u32_e32 v9, 59, v9
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v27, v27, s[84:87], 0 offen
	buffer_load_u16 v28, v28, s[84:87], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s57, s63, v210
	v_cmp_gt_i32_e64 s43, s63, v9
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v9, 0x80000000, v203, s45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s50
	s_and_b32 s43, s2, s43
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v19.h, v200.l
	v_cndmask_b32_e64 v200, 0x80000000, v204, s45
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s45, s2, s49
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v201, 0x80000000, v201, s45
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v14.h, v208.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v13.h, v207.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v20.h, v205.l
	s_clause 0x3
	buffer_load_u16 v205, v200, s[84:87], 0 offen
	buffer_load_u16 v210, v201, s[84:87], 0 offen
	buffer_load_u16 v211, v9, s[84:87], 0 offen
	buffer_load_u16 v212, v198, s[84:87], 0 offen
	v_cndmask_b32_e64 v9, 0x80000000, v10, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s52
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v200, 0x80000000, v209, s43
	v_cndmask_b32_e64 v10, 0x80000000, v11, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s53
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v11, 0x80000000, v12, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s54
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v12, 0x80000000, v197, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s55
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v197, 0x80000000, v199, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s56
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v198, 0x80000000, v202, s44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s44, s2, s57
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s93, s94
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v199, 0x80000000, v206, s44
	s_clause 0x7
	buffer_load_u16 v206, v12, s[84:87], 0 offen
	buffer_load_u16 v209, v11, s[84:87], 0 offen
	buffer_load_u16 v213, v10, s[84:87], 0 offen
	buffer_load_u16 v214, v9, s[84:87], 0 offen
	buffer_load_u16 v215, v200, s[84:87], 0 offen
	buffer_load_u16 v216, v199, s[84:87], 0 offen
	buffer_load_u16 v217, v198, s[84:87], 0 offen
	buffer_load_u16 v218, v197, s[84:87], 0 offen
.Ltmp164:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	ds_load_b128 v[9:12], v101
.Ltmp165:
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v10, 0, v96
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp166:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v11, v182, v183, v180
	v_max3_f32 v12, v181, v42, v179
.Ltmp167:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v10, v[19:20]
.Ltmp168:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v187, v184, v185
	v_max3_f32 v19, v36, v37, v34
.Ltmp169:
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v138, v[13:14]
.Ltmp170:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v11, v12
	v_max3_f32 v11, v43, v44, v40
	v_max3_f32 v12, v41, v38, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v11, v11, v12, v19
	v_max_f32_e32 v12, v194, v195
	v_max3_f32 v19, v193, v190, v191
	v_max3_f32 v12, v12, v192, v19
	v_max3_f32 v19, v188, v189, v186
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v10, v12, v19, v10
	v_dual_max_f32 v12, v35, v32 :: v_dual_max_f32 v19, v30, v31
	v_max3_f32 v12, v12, v33, v19
.Ltmp171:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp172:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v10, v10, v11, v12
.Ltmp173:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
.Ltmp174:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v11, v10, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp175:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v10, v178, v10, v11
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v195, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s42, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v194, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	v_cmp_o_f32_e64 s41, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s41
	v_mov_b16_e32 v19.h, v29.l
	v_permlanex16_b32 v12, v11, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v197, v12, v11, v97
	v_perm_b32 v198, v12, v11, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v193, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s39
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s39, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v192, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s36
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s36, v11, v11
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s39
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s36
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v199, v12, v11, v97
	v_perm_b32 v200, v12, v11, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v191, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s36, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v12, 1, v12
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v190, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	v_cmp_o_f32_e64 s38, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s38
	v_mov_b16_e32 v19.h, v29.l
	v_permlanex16_b32 v12, v11, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v201, v12, v11, v97
	v_perm_b32 v202, v12, v11, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v189, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v18.h, v205.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v17.h, v210.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v16.h, v211.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v15.h, v212.l
	ds_store_b64 v139, v[15:16]
	ds_store_b64 v140, v[17:18]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s37
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v24.h, v206.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	v_cmp_o_f32_e64 s36, v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v22.h, v213.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v21.h, v214.l
	v_mov_b16_e64 v23.h, v209.l
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v12, 1, v12
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v26.h, v217.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v25.h, v218.l
	v_mov_b16_e64 v28.h, v215.l
	v_mov_b16_e64 v27.h, v216.l
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v188, v10
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v141, v[21:22]
	ds_store_b64 v142, v[23:24]
	ds_store_b64 v143, v[25:26]
	ds_store_b64 v144, v[27:28]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s35, v11, v11
	v_and_b32_e32 v19, 1, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v19, v11, v19, 0x7fff
	v_cndmask_b16 v11.h, 0x7fff, v12.h, s36
	v_cndmask_b16 v11.l, 0x7fff, v19.h, s35
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s35, 0xff800000, v178
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v12, v11, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v203, v12, v11, v97
	v_perm_b32 v204, v12, v11, v98
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v11, v178, v10
	v_mov_b32_e32 v178, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v11, v11
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v11, 0, v11, s35
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v11
	v_mul_f32_e32 v2, v2, v11
	v_mul_f32_e32 v3, v3, v11
	v_mul_f32_e32 v4, v4, v11
	v_mul_f32_e32 v5, v5, v11
	v_mul_f32_e32 v6, v6, v11
	v_mul_f32_e32 v7, v7, v11
	v_mul_f32_e32 v8, v8, v11
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v11, 0, v99
	ds_load_b128 v[11:14], v11
	ds_load_b128 v[15:18], v145
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[11:18], v[197:204], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v187, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	v_mov_b16_e32 v13.h, v29.l
	v_mov_b16_e32 v14.h, v29.l
	v_mov_b16_e32 v15.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v29.l
	v_mov_b16_e32 v17.h, v29.l
	v_mov_b16_e32 v18.h, v29.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s34
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s34, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v186, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s33, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s33
	v_permlanex16_b32 v13, v12, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v97
	v_perm_b32 v12, v13, v12, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v185, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s31
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s31, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v184, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s30, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s30
	v_permlanex16_b32 v15, v14, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v97
	v_perm_b32 v14, v15, v14, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v183, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s29
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s29, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v182, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s28, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s28
	v_permlanex16_b32 v17, v16, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v97
	v_perm_b32 v16, v17, v16, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v181, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s27
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s27, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v180, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s26, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s26
	v_permlanex16_b32 v19, v18, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v97
	v_perm_b32 v18, v19, v18, v98
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v146
	ds_load_b128 v[23:26], v147
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[11:18], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v179, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	v_mov_b16_e32 v13.h, v29.l
	v_mov_b16_e32 v14.h, v29.l
	v_mov_b16_e32 v15.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v29.l
	v_mov_b16_e32 v17.h, v29.l
	v_mov_b16_e32 v18.h, v29.l
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s25, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v42, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s23, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s23
	v_permlanex16_b32 v13, v12, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v97
	v_perm_b32 v12, v13, v12, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v44, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s24
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s23, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v43, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s22, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s22
	v_permlanex16_b32 v15, v14, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v97
	v_perm_b32 v14, v15, v14, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v41, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s21, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v40, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s20, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s20
	v_permlanex16_b32 v17, v16, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v97
	v_perm_b32 v16, v17, v16, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v39, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s19
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s19, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v38, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e64 s18, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, s18
	v_permlanex16_b32 v19, v18, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v97
	v_perm_b32 v18, v19, v18, v98
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v148
	ds_load_b128 v[23:26], v149
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[11:18], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v37, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.h, v29.l
	v_mov_b16_e32 v13.h, v29.l
	v_mov_b16_e32 v14.h, v29.l
	v_mov_b16_e32 v15.h, v29.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v16.h, v29.l
	v_mov_b16_e32 v17.h, v29.l
	v_mov_b16_e32 v18.h, v29.l
	v_mov_b16_e32 v19.h, v29.l
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v12.l, v11.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s17, v11, v11
	v_and_b32_e32 v12, 1, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v12, v11, v12, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v11, v36, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v12.h, 0x7fff, v12.h, s17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v11, v11
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v11, 0, v11, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v13.l, v11.h
	v_cmp_o_f32_e64 s16, v11, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v13, 1, v13
	v_add3_u32 v13, v11, v13, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v12.l, 0x7fff, v13.h, s16
	v_permlanex16_b32 v13, v12, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v11, v13, v12, v97
	v_perm_b32 v12, v13, v12, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v35, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s15
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v14.l, v13.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s15, v13, v13
	v_and_b32_e32 v14, 1, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v14, v13, v14, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v13, v34, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v14.h, 0x7fff, v14.h, s15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v13, v13
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v13, 0, v13, s14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v15.l, v13.h
	v_cmp_o_f32_e64 s14, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v15, 1, v15
	v_add3_u32 v15, v13, v15, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v14.l, 0x7fff, v15.h, s14
	v_permlanex16_b32 v15, v14, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v13, v15, v14, v97
	v_perm_b32 v14, v15, v14, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v33, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s13
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v16.l, v15.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s13, v15, v15
	v_and_b32_e32 v16, 1, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v16, v15, v16, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v15, v32, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v16.h, 0x7fff, v16.h, s13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v15, v15
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v15, 0, v15, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.l, v15.h
	v_cmp_o_f32_e64 s11, v15, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v17, 1, v17
	v_add3_u32 v17, v15, v17, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v16.l, 0x7fff, v17.h, s11
	v_permlanex16_b32 v17, v16, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v15, v17, v16, v97
	v_perm_b32 v16, v17, v16, v98
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v31, v10
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v17, 0, v17, s12
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.l, v17.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s11, v17, v17
	v_and_b32_e32 v18, 1, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v17, v18, 0x7fff
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v30, v10
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.h, 0x7fff, v18.h, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e32 v17, 0, v17, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.l, v17.h
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v17, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v18.l, 0x7fff, v19.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v177
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v19, v18, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v17, v19, v18, v97
	v_perm_b32 v18, v19, v18, v98
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[19:22], v150
	ds_load_b128 v[23:26], v151
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[19:26], v[11:18], v[1:8]
.Ltmp176:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v11, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp177:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v11, v9, v11
.Ltmp178:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v9, v177, v177
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v9, v9, v196
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v12, v177, v9
	v_mov_b32_e32 v177, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 885 61 is_stmt 0              ; attention.py:885:61
	v_exp_f32_e32 v12, v12
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v12, 0, v12, vcc_lo
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v11, v176, v12
	v_mov_b32_e32 v176, v11
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_28
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v186, s71 :: v_dual_add_nc_u32 v9, s93, v67
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s59, s93, s61
	s_mul_i32 s27, s91, 20
	s_mul_i32 s26, s59, s91
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s24, s63, v9
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v23, s26, v70
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 4, v9
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v22, s26, v69
	v_add_nc_u32_e32 v24, s26, v48
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 s24, s4, s24
	.loc	1 838 37                        ; attention.py:838:37
	s_mov_b32 s78, s82
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 8, v9
	.loc	1 838 37                        ; attention.py:838:37
	s_mov_b32 s79, s83
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v185, s70
	v_mov_b32_e32 v183, s68
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s63, v10
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_dual_mov_b32 v181, s66 :: v_dual_add_nc_u32 v10, 12, v9
	v_mov_b32_e32 v179, s64
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v22, 0x80000000, v22, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s11
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s63, v10
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_dual_cndmask_b32 v23, 0x80000000, v23 :: v_dual_add_nc_u32 v10, 16, v9
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v184, s69
	v_mov_b32_e32 v182, s67
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s12
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s63, v10
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v10, 20, v9
	.loc	1 828 33                        ; attention.py:828:33
	v_mov_b32_e32 v180, s65
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s14, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 24, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s15, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 28, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s16, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 32, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 36, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s18, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 40, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s19, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 44, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s20, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 48, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 52, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s63, v10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v10, 56, v9
	v_add_nc_u32_e32 v9, 60, v9
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s23, s63, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cmp_gt_i32_e64 s25, s63, v9
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v9, s26, v47
	v_add_nc_u32_e32 v11, s27, v9
	s_mul_i32 s27, s91, 24
	v_add_nc_u32_e32 v10, s62, v9
	v_add_nc_u32_e32 v12, s27, v9
	s_mul_i32 s27, s91, 28
	v_add_nc_u32_e32 v14, s99, v9
	v_add_nc_u32_e32 v13, s27, v9
	s_mul_i32 s27, s91, 36
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v24, 0x80000000, v24, vcc_lo
	v_add_nc_u32_e32 v15, s27, v9
	s_mul_i32 s27, s91, 40
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s13
	v_add_nc_u32_e32 v16, s27, v9
	s_mul_i32 s27, s91, 44
	s_delay_alu instid0(SALU_CYCLE_1)
	v_add_nc_u32_e32 v17, s27, v9
	s_mul_i32 s27, s91, 48
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v10, 0x80000000, v10, vcc_lo
	v_add_nc_u32_e32 v18, s27, v9
	s_mul_i32 s27, s91, 52
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s14
	v_add_nc_u32_e32 v19, s27, v9
	s_mul_i32 s27, s91, 56
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v11, 0x80000000, v11, vcc_lo
	v_add_nc_u32_e32 v20, s27, v9
	s_mul_i32 s27, s91, 60
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s15
	v_add_nc_u32_e32 v21, s27, v9
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s16
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v9, 0x80000000, v9, s24
	v_cndmask_b32_e32 v13, 0x80000000, v13, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s17
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v14, 0x80000000, v14, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s18
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v15, 0x80000000, v15, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s19
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s21
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s20
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v14, v14, s[80:83], 0 offen
	buffer_load_u8 v18, v18, s[80:83], 0 offen
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s22
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s23
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v15, v15, s[80:83], 0 offen
	buffer_load_u8 v19, v19, s[80:83], 0 offen
	v_cndmask_b32_e32 v20, 0x80000000, v20, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s4, s25
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v21, 0x80000000, v21, vcc_lo
	s_clause 0xb
	buffer_load_u8 v9, v9, s[80:83], 0 offen
	buffer_load_u8 v22, v22, s[80:83], 0 offen
	buffer_load_u8 v23, v23, s[80:83], 0 offen
	buffer_load_u8 v10, v10, s[80:83], 0 offen
	buffer_load_u8 v11, v11, s[80:83], 0 offen
	buffer_load_u8 v12, v12, s[80:83], 0 offen
	buffer_load_u8 v16, v16, s[80:83], 0 offen
	buffer_load_u8 v20, v20, s[80:83], 0 offen
	buffer_load_u8 v24, v24, s[80:83], 0 offen
	buffer_load_u8 v13, v13, s[80:83], 0 offen
	buffer_load_u8 v17, v17, s[80:83], 0 offen
	buffer_load_u8 v21, v21, s[80:83], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(11)
	ds_store_b8 v72, v9
	s_waitcnt vmcnt(8)
	ds_store_b8 v72, v10 offset:512
	ds_store_b8 v72, v14 offset:1024
	ds_store_b8 v72, v18 offset:1536
	ds_store_b8 v73, v22
	s_waitcnt vmcnt(7)
	ds_store_b8 v73, v11 offset:512
	ds_store_b8 v73, v15 offset:1024
	ds_store_b8 v73, v19 offset:1536
	ds_store_b8 v74, v23
	s_waitcnt vmcnt(6)
	ds_store_b8 v74, v12 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v74, v16 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v74, v20 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v75, v24
	s_waitcnt vmcnt(2)
	ds_store_b8 v75, v13 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v75, v17 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v75, v21 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[9:12], v76 offset1:1
	ds_load_2addr_stride64_b64 v[41:44], v76 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[9:10], v[49:50], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[11:12], v[49:50], v[179:186] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[41:42], v[49:50], v[179:186] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[43:44], v[49:50], v[179:186] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[41:44], v77 offset1:1
	ds_load_2addr_stride64_b64 v[179:182], v77 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[51:52], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[51:52], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[179:180], v[51:52], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[51:52], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[41:44], v78 offset1:1
	ds_load_2addr_stride64_b64 v[179:182], v78 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[53:54], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[53:54], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[179:180], v[53:54], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[53:54], v[9:16] neg_lo:[1,1,0]
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[41:44], v79 offset1:1
	ds_load_2addr_stride64_b64 v[179:182], v79 offset0:2 offset1:3
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[41:42], v[55:56], v[33:40] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, s93, v152
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[55:56], v[25:32] neg_lo:[1,1,0]
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v42, s59, v152, 1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[179:180], v[55:56], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[181:182], v[55:56], v[9:16] neg_lo:[1,1,0]
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 2, v41
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s41, s63, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v44, 4, v42
	v_add_nc_u32_e32 v179, 8, v42
	v_add_nc_u32_e32 v180, 12, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e32 vcc_lo, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 4, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v181, 16, v42
	v_add_nc_u32_e32 v182, 20, v42
	v_add_nc_u32_e32 v183, 24, v42
	v_add_nc_u32_e32 v184, 28, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s11, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 6, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v185, 32, v42
	v_add_nc_u32_e32 v186, 36, v42
	v_add_nc_u32_e32 v187, 40, v42
	v_add_nc_u32_e32 v188, 44, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s12, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 8, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v189, 48, v42
	v_add_nc_u32_e32 v190, 52, v42
	v_add_nc_u32_e32 v191, 56, v42
	v_add_nc_u32_e32 v192, 60, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s13, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 10, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v193, 64, v42
	v_add_nc_u32_e32 v194, 0x44, v42
	v_add_nc_u32_e32 v195, 0x48, v42
	v_add_nc_u32_e32 v196, 0x4c, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s14, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 12, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v197, 0x50, v42
	v_add_nc_u32_e32 v198, 0x54, v42
	v_add_nc_u32_e32 v199, 0x58, v42
	v_add_nc_u32_e32 v200, 0x5c, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s15, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 14, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v201, 0x60, v42
	v_add_nc_u32_e32 v202, 0x64, v42
	v_add_nc_u32_e32 v203, 0x68, v42
	v_add_nc_u32_e32 v204, 0x6c, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s16, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 16, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v205, 0x70, v42
	v_add_nc_u32_e32 v206, 0x74, v42
	v_add_nc_u32_e32 v207, 0x78, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s17, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 18, v41
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s18, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 20, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s19, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 22, v41
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s20, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 24, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s21, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 26, v41
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s22, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 28, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s23, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 30, v41
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s24, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 32, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s25, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 34, v41
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s26, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 36, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s27, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 38, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v211, 0x80000000, v195, s27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s28, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 40, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v212, 0x80000000, v196, s28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s29, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 42, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v213, 0x80000000, v197, s29
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s30, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 44, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v214, 0x80000000, v198, s30
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s31, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 46, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v215, 0x80000000, v199, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s33, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 48, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v216, 0x80000000, v200, s33
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s34, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 50, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v217, 0x80000000, v201, s34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s35, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 52, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v218, 0x80000000, v202, s35
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s36, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 54, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v219, 0x80000000, v203, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s37, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 56, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v220, 0x80000000, v204, s37
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s38, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 58, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v221, 0x80000000, v205, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s39, s63, v43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v43, 60, v41
	v_add_nc_u32_e32 v41, 62, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v222, 0x80000000, v206, s39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s40, s63, v43
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v43, 0x7c, v42
	.loc	1 840 30                        ; attention.py:840:30
	v_cmp_gt_i32_e64 s42, s63, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v41, 0x80000000, v42, s41
	v_cndmask_b32_e32 v42, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e64 v44, 0x80000000, v179, s11
	v_cndmask_b32_e64 v179, 0x80000000, v180, s12
	v_cndmask_b32_e64 v180, 0x80000000, v181, s13
	v_cndmask_b32_e64 v181, 0x80000000, v182, s14
	v_cndmask_b32_e64 v182, 0x80000000, v183, s15
	v_cndmask_b32_e64 v183, 0x80000000, v184, s16
	v_cndmask_b32_e64 v184, 0x80000000, v185, s17
	v_cndmask_b32_e64 v185, 0x80000000, v186, s18
	v_cndmask_b32_e64 v186, 0x80000000, v187, s19
	v_cndmask_b32_e64 v187, 0x80000000, v188, s20
	v_cndmask_b32_e64 v188, 0x80000000, v189, s21
	v_cndmask_b32_e64 v189, 0x80000000, v190, s22
	v_cndmask_b32_e64 v190, 0x80000000, v191, s23
	v_cndmask_b32_e64 v191, 0x80000000, v192, s24
	v_cndmask_b32_e64 v192, 0x80000000, v193, s25
	v_cndmask_b32_e64 v193, 0x80000000, v194, s26
	v_cndmask_b32_e64 v223, 0x80000000, v207, s40
	v_cndmask_b32_e64 v43, 0x80000000, v43, s42
	s_clause 0x1f
	buffer_load_u16 v210, v41, s[76:79], 0 offen
	buffer_load_u16 v209, v42, s[76:79], 0 offen
	buffer_load_u16 v208, v44, s[76:79], 0 offen
	buffer_load_u16 v207, v179, s[76:79], 0 offen
	buffer_load_u16 v206, v180, s[76:79], 0 offen
	buffer_load_u16 v205, v181, s[76:79], 0 offen
	buffer_load_u16 v204, v182, s[76:79], 0 offen
	buffer_load_u16 v203, v183, s[76:79], 0 offen
	buffer_load_u16 v202, v184, s[76:79], 0 offen
	buffer_load_u16 v201, v185, s[76:79], 0 offen
	buffer_load_u16 v200, v186, s[76:79], 0 offen
	buffer_load_u16 v199, v187, s[76:79], 0 offen
	buffer_load_u16 v198, v188, s[76:79], 0 offen
	buffer_load_u16 v197, v189, s[76:79], 0 offen
	buffer_load_u16 v196, v190, s[76:79], 0 offen
	buffer_load_u16 v195, v191, s[76:79], 0 offen
	buffer_load_u16 v194, v192, s[76:79], 0 offen
	buffer_load_u16 v193, v193, s[76:79], 0 offen
	buffer_load_u16 v191, v211, s[76:79], 0 offen
	buffer_load_u16 v190, v212, s[76:79], 0 offen
	buffer_load_u16 v189, v213, s[76:79], 0 offen
	buffer_load_u16 v188, v214, s[76:79], 0 offen
	buffer_load_u16 v187, v215, s[76:79], 0 offen
	buffer_load_u16 v186, v216, s[76:79], 0 offen
	buffer_load_u16 v185, v217, s[76:79], 0 offen
	buffer_load_u16 v184, v218, s[76:79], 0 offen
	buffer_load_u16 v183, v219, s[76:79], 0 offen
	buffer_load_u16 v182, v220, s[76:79], 0 offen
	buffer_load_u16 v181, v221, s[76:79], 0 offen
	buffer_load_u16 v180, v222, s[76:79], 0 offen
	buffer_load_u16 v179, v223, s[76:79], 0 offen
	buffer_load_u16 v192, v43, s[76:79], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v41, s93, v46
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v82
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s63, v41
	.loc	1 863 17                        ; attention.py:863:17
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s34, s0, s11
	s_and_b32 s33, s1, s11
	s_and_b32 s28, s5, s11
	s_and_b32 s31, s6, s11
	s_and_b32 s30, s7, s11
	s_and_b32 s27, s8, s11
	s_and_b32 s26, s9, s11
	s_and_b32 s29, s10, s11
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v41, v84
	v_cmp_le_i32_e64 s11, v41, v85
	v_cmp_le_i32_e64 s12, v41, v86
	v_cmp_le_i32_e64 s13, v41, v87
	v_cmp_le_i32_e64 s14, v41, v88
	v_cmp_le_i32_e64 s15, v41, v89
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s18, vcc_lo, s34
	s_and_b32 s11, s11, s33
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s16, v41, v90
	v_cmp_le_i32_e64 s17, v41, v91
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s12, s12, s28
	s_and_b32 s13, s13, s31
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s30
	s_and_b32 s15, s15, s27
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s31, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s26
	s_and_b32 s17, s17, s29
	s_or_b32 s28, s11, s12
	s_or_b32 s31, s18, s13
	s_and_not1_b32 s11, s30, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s27, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s30, s11, s12
	s_or_b32 s27, s13, s14
	s_and_not1_b32 s11, s26, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s29, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s26, s11, s12
	s_or_b32 s29, s13, s14
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s90
	s_cbranch_vccnz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e32 vcc_lo, v41, v153
	v_cmp_ge_i32_e64 s11, v41, v154
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v41, v161
	v_cmp_le_i32_e64 s19, v41, v162
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s12, v41, v155
	v_cmp_ge_i32_e64 s13, v41, v156
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s20, v41, v163
	v_cmp_le_i32_e64 s21, v41, v164
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s14, v41, v157
	v_cmp_ge_i32_e64 s15, v41, v158
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s22, v41, v165
	v_cmp_le_i32_e64 s23, v41, v166
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s11, s11, s19
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s16, v41, v159
	v_cmp_ge_i32_e64 s17, v41, v160
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v41, v167
	v_cmp_le_i32_e64 s25, v41, v168
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, s18, s34
	s_and_b32 s11, s11, s33
	s_and_b32 s12, s12, s20
	s_and_b32 s13, s13, s21
	s_and_b32 s12, s12, s28
	s_and_b32 s13, s13, s31
	s_and_b32 s14, s14, s22
	s_and_b32 s15, s15, s23
	s_and_not1_b32 s19, s34, exec_lo
	s_and_b32 s18, s18, exec_lo
	s_and_not1_b32 s20, s33, exec_lo
	s_and_b32 s11, s11, exec_lo
	s_and_b32 s14, s14, s30
	s_and_b32 s15, s15, s27
	s_and_b32 s16, s16, s24
	s_and_b32 s17, s17, s25
	s_or_b32 s34, s19, s18
	s_or_b32 s33, s20, s11
	s_and_not1_b32 s11, s28, exec_lo
	s_and_b32 s12, s12, exec_lo
	s_and_not1_b32 s18, s31, exec_lo
	s_and_b32 s13, s13, exec_lo
	s_and_b32 s16, s16, s26
	s_and_b32 s17, s17, s29
	s_or_b32 s28, s11, s12
	s_or_b32 s31, s18, s13
	s_and_not1_b32 s11, s30, exec_lo
	s_and_b32 s12, s14, exec_lo
	s_and_not1_b32 s13, s27, exec_lo
	s_and_b32 s14, s15, exec_lo
	s_or_b32 s30, s11, s12
	s_or_b32 s27, s13, s14
	s_and_not1_b32 s11, s26, exec_lo
	s_and_b32 s12, s16, exec_lo
	s_and_not1_b32 s13, s29, exec_lo
	s_and_b32 s14, s17, exec_lo
	s_or_b32 s26, s11, s12
	s_or_b32 s29, s13, s14
.LBB0_11:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b16_e32 v43.l, 0
	.loc	1 870 25 is_stmt 1              ; attention.py:870:25
	s_mul_i32 s11, s93, s95
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	s_add_i32 s11, s89, s11
	v_mov_b16_e32 v44.h, v43.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s34
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v41, s11, v64
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v42, 31, v41
	v_add_co_u32 v41, vcc_lo, s74, v41
	v_add_co_ci_u32_e64 v42, null, s75, v42, vcc_lo
	global_load_d16_hi_u8 v44, v[41:42], off
.LBB0_13:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s12
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s33
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v41, s11, v57
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v42, 31, v41
	v_add_co_u32 v41, vcc_lo, s74, v41
	v_add_co_ci_u32_e64 v42, null, s75, v42, vcc_lo
	global_load_d16_u8 v43, v[41:42], off
.LBB0_15:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s12
	v_mov_b16_e32 v41.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v41.h, v41.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s28
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v42, s11, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v212, 31, v42
	v_add_co_u32 v211, vcc_lo, s74, v42
	v_add_co_ci_u32_e64 v212, null, s75, v212, vcc_lo
	global_load_d16_hi_u8 v41, v[211:212], off
.LBB0_17:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s12
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s31
	s_cbranch_execz .LBB0_19
; %bb.18:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v42, s11, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v212, 31, v42
	v_add_co_u32 v211, vcc_lo, s74, v42
	v_add_co_ci_u32_e64 v212, null, s75, v212, vcc_lo
	global_load_d16_u8 v41, v[211:212], off
.LBB0_19:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s12
	v_mov_b16_e32 v42.l, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v42.h, v42.l
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s30
	s_cbranch_execz .LBB0_21
; %bb.20:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v211, s11, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v212, 31, v211
	v_add_co_u32 v211, vcc_lo, s74, v211
	v_add_co_ci_u32_e64 v212, null, s75, v212, vcc_lo
	global_load_d16_hi_u8 v42, v[211:212], off
.LBB0_21:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s12
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s27
	s_cbranch_execz .LBB0_23
; %bb.22:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v211, s11, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v212, 31, v211
	v_add_co_u32 v211, vcc_lo, s74, v211
	v_add_co_ci_u32_e64 v212, null, s75, v212, vcc_lo
	global_load_d16_u8 v42, v[211:212], off
.LBB0_23:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s12
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v43.h, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b16_e32 v44.l, v43.h
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s26
	s_cbranch_execz .LBB0_25
; %bb.24:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v211, s11, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v212, 31, v211
	v_add_co_u32 v211, vcc_lo, s74, v211
	v_add_co_ci_u32_e64 v212, null, s75, v212, vcc_lo
	global_load_d16_u8 v44, v[211:212], off
.LBB0_25:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s12
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s12, s29
	s_cbranch_execz .LBB0_6
; %bb.26:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	v_add_nc_u32_e32 v211, s11, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v212, 31, v211
	v_add_co_u32 v211, vcc_lo, s74, v211
	v_add_co_ci_u32_e64 v212, null, s75, v212, vcc_lo
	global_load_d16_hi_u8 v43, v[211:212], off
	s_branch .LBB0_6
.LBB0_27:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v9, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v11, v8
	s_branch .LBB0_29
.LBB0_28:                               ; %._crit_edge.loopexit
.Ltmp179:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, v9, v9
	v_readlane_b32 s16, v224, 2
.Ltmp180:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, 0, v11
	v_readlane_b32 s27, v224, 6
	v_readlane_b32 s17, v224, 3
.Ltmp181:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v9, 0xff800000, v9
	v_readlane_b32 s18, v224, 4
	v_readlane_b32 s19, v224, 5
.Ltmp182:
.LBB0_29:                               ; %._crit_edge
	.loc	1 1033 26                       ; attention.py:1033:26
	v_cmp_eq_u32_e64 s0, 0, v71
	.loc	1 1028 26                       ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v81
.Ltmp183:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_add_nc_u32_e32 v12, 0, v80
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp184:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v10, 0xff800000, v9 :: v_dual_and_b32 v9, 1, v0
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp185:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v1 :: v_dual_mov_b32 v15, v2
.Ltmp186:
	.loc	1 1031 36                       ; attention.py:1031:36
	v_cndmask_b32_e32 v11, 0, v11, vcc_lo
.Ltmp187:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_store_b32 v12, v10
	v_lshl_add_u32 v13, v9, 2, 0
.Ltmp188:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp189:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp190:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp191:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp192:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	ds_load_b32 v10, v13
.Ltmp193:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v12, v11
.Ltmp194:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v15 :: v_dual_add_f32 v3, v3, v16
.Ltmp195:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v1
.Ltmp196:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v11, v13
.Ltmp197:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v13, v2
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v14, v3
.Ltmp198:
	.loc	1 1033 17 is_stmt 1             ; attention.py:1033:17
	v_cndmask_b32_e64 v17, 0, v4, s0
	v_cndmask_b32_e64 v18, 0, v5, s0
.Ltmp199:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp200:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v12
.Ltmp201:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp202:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
.Ltmp203:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v13
.Ltmp204:
	.loc	1 1025 31                       ; attention.py:1025:31
	v_readlane_b32 s1, v224, 0
.Ltmp205:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v3, v14 :: v_dual_mov_b32 v14, v1
.Ltmp206:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v13, v10
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp207:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v15, v2
.Ltmp208:
	.loc	1 1025 31                       ; attention.py:1025:31
	v_readlane_b32 s3, v224, 1
	s_mul_i32 s1, s1, s27
.Ltmp209:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v16, v3
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp210:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v12, v11
.Ltmp211:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v13, v13 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp212:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v14
.Ltmp213:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp214:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v2, v2, v15
.Ltmp215:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e64 v14, 0, v6, s0
.Ltmp216:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v20, v7 :: v_dual_mov_b32 v15, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp217:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v3, v16 :: v_dual_mov_b32 v3, v1
.Ltmp218:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v5, v2
	v_dual_mov_b32 v16, v18 :: v_dual_mov_b32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v6, v4
	v_mov_b32_dpp v15, v15 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp219:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v17, v15
.Ltmp220:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp221:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v18, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v7, v7, v20 :: v_dual_add_f32 v8, v8, v21
.Ltmp222:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v18, v16
	v_dual_mov_b32 v20, v7 :: v_dual_mov_b32 v21, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp223:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v15, v15, v17
.Ltmp224:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp225:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v16, v16, v18
	v_add_f32_e32 v18, v7, v20
.Ltmp226:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp227:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v17, v15 :: v_dual_add_f32 v14, v14, v19
.Ltmp228:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v19, v8, v21
.Ltmp229:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v7, v16
	v_mov_b32_e32 v21, v18
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v14
	v_mov_b32_e32 v22, v19
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp230:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v8, v15, v17
.Ltmp231:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp232:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v16, v7 :: v_dual_add_f32 v18, v18, v21
.Ltmp233:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v15, v8 :: v_dual_add_f32 v16, v14, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp234:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v19, v19, v22
.Ltmp235:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v14, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_e32 v20, v18
	v_mov_b32_dpp v3, v3 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v16
	v_mov_b32_e32 v21, v19
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v15, v15 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp236:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v22, v67, v45
.Ltmp237:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp238:
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s92, s92, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s3, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1025 30 is_stmt 0             ; attention.py:1025:30
	s_mul_i32 s4, s1, s92
	.loc	1 1036 13 is_stmt 1             ; attention.py:1036:13
	s_mov_b32 s1, exec_lo
	v_cmpx_eq_u32_e32 0, v22
	s_cbranch_execz .LBB0_31
; %bb.30:
.Ltmp239:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v10, v10, v10
.Ltmp240:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s5, s4, 31
.Ltmp241:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v11, v11, v12
.Ltmp242:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[6:7], s[4:5], 2
	v_mov_b32_e32 v12, 0
.Ltmp243:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v10, v10, v13
.Ltmp244:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s6, s16, s6
	s_addc_u32 s7, s17, s7
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v12, v[10:11], s[6:7]
.LBB0_31:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s1
	.loc	1 1038 13 is_stmt 1             ; attention.py:1038:13
	v_lshlrev_b32_e32 v0, 2, v0
.Ltmp245:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v10, v16, v17
	v_dual_add_f32 v17, v4, v6 :: v_dual_add_f32 v12, v19, v21
	v_add_f32_e32 v11, v18, v20
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp246:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v0, 0xc0, v0
.Ltmp247:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v18, v8, v15
	v_add_f32_e32 v16, v2, v5
	v_dual_add_f32 v15, v1, v3 :: v_dual_and_b32 v2, 0xe0, v68
.Ltmp248:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_and_b32_e32 v1, 28, v68
	v_lshlrev_b32_e32 v3, 5, v9
	s_and_b32 vcc_lo, vcc_lo, s2
	v_add_nc_u32_e32 v0, 0, v0
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp249:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v9, v7, v14
.Ltmp250:
	.loc	1 1038 13                       ; attention.py:1038:13
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v0, v0, v3, v1
	ds_store_b128 v2, v[15:18]
	ds_store_b128 v2, v[9:12] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s4, v46
	.loc	1 1038 13                       ; attention.py:1038:13
	ds_load_b32 v0, v0
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp251:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 225
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 225
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 17144
; TotalNumSgprs: 107
; NumVgprs: 225
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 28
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 225
; Occupancy: 6
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
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
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
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
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
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
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 7
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     225
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
